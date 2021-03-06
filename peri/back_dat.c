#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

#include "nordic_common.h"
#include "nrf51.h"
#include "nrf51_bitfields.h"
#include "nrf_soc.h"
#include "nrf_delay.h"
#include "pstorage.h"
#include "softdevice_handler.h"
#include "app_scheduler.h"

#include "ble_nus.h"

#include "back_dat.h"
#include "gpio.h"
#include "bluetooth.h"
#include "uart.h"
#include "timers.h"

/* Drivers */
#include "i2c_ds1621.h"



static volatile uint32_t             sys_state;                                                      /**< System function state. */
static volatile uint32_t             fsm_state = 0;                                                  /**< State of the FSM, 0 - Start conversion, 1 - Report temp. */

static uint8_t                       ram_page[2][BD_BLOCK_SIZE] __attribute__((aligned(4)));          /**< Ram pages for data & config to be saved in FLASH. */
static volatile uint32_t             m_cur_page;                                                      /**< Current page # for data & config. */
static volatile uint32_t             m_cur_data_idx;                                                  /**< Current index # for data & config. */
static volatile uint32_t             m_cur_block_idx;                                                 /**< Current block # of FLASH area for saving current data & config */
static volatile uint32_t             m_ble_data_idx;                                                  /**< Index # (head pointer) for data & config to be transferred. */
static volatile uint32_t             m_ble_block_idx;                                                 /**< Block # of FLASH area to be transferred */
static pstorage_handle_t             m_base_handle;                                                   /**< Identifier for allocated blocks' base address. */

/*****************************************************************************
* Utility Functions
*****************************************************************************/

/**@brief Set system function state.
 */
void set_sys_state( uint32_t state )
{
    sys_state = state;
    
    switch (state)
    {
        case SYS_DATA_RECORDING:
        {
            nrf_gpio_pin_clear(ADVERTISING_LED_PIN_NO);
            nrf_gpio_pin_clear(CONNECTED_LED_PIN_NO);
            glb_timers_start();                         //< Start data recording timer
            DEBUG_ASSERT("SYS_DATA_RECORDING.\r\n");
            break;
        }
        case SYS_BLE_DATA_INSTANT:
        {
            glb_timers_start();                         //< Start data recording timer
            DEBUG_ASSERT("SYS_BLE_DATA_INSTANT.\r\n");
            break;
        }
        case SYS_BLE_DATA_TRANSFER:
        {
            glb_timers_stop();                          //< Stop data recording timer
            back_data_preserve();
            wait_flash_op();
            DEBUG_ASSERT("SYS_BLE_DATA_TRANSFER.\r\n");
            break;
        }
    }
}

/**@brief Get system function state.
 *
 * @retval Current system state.
 */
uint32_t get_sys_state(void)
{
    return sys_state;
}

/**@brief Clear all saved data in FLASH
 */
void back_data_clear_storage(void)
{
    uint32_t err_code;
    err_code = pstorage_clear(&m_base_handle, BD_BLOCK_COUNT * BD_BLOCK_SIZE);
    APP_ERROR_CHECK(err_code);
    
    // Avoid any further preserve operation
    m_cur_page = 0;
    m_cur_data_idx = 0;
    memset(ram_page, __DATA_FILL, 2 * BD_BLOCK_SIZE);
}

/**@brief Preserve data in FLASH when a page is full
 */
void back_data_preserve(void)
{
    pstorage_handle_t           block_handle;                       /**< Current block handle. */
    uint32_t                    err_code;
    
    if (m_cur_data_idx != 0) // Not run if page is empty
    {
        if (!is_data_full())
        {
            err_code = pstorage_block_identifier_get(&m_base_handle, m_cur_block_idx, &block_handle);
            APP_ERROR_CHECK(err_code);
            
            // Set config info
            ram_page[m_cur_page][BD_CONFIG_BASE_ADDR + BD_CONFIG1_OFFSET] = ~BD_CONFIG1_USE_Msk;            //< Mark block as used. (Reversed logic)
            ram_page[m_cur_page][BD_CONFIG_BASE_ADDR + BD_CONFIG2_OFFSET] = (uint8_t) m_cur_data_idx;       //< Number of data points in current block.
            
            err_code = pstorage_update(&block_handle, ram_page[m_cur_page], BD_BLOCK_SIZE ,0);  //< Save a full page to a block
            APP_ERROR_CHECK(err_code);
            
            DEBUG_PF("PAGE:%d, BLOCK:%d PRESERVED\r\n", m_cur_page, m_cur_block_idx);

            m_cur_block_idx ++;
        }
        
        m_cur_page ^= 0x1; //< Change Page
        m_cur_data_idx = 0;
        memset(ram_page[m_cur_page], __DATA_FILL, BD_BLOCK_SIZE);
    }
    
}

/**@brief Prepare data to be sent through BLE UART service.
 *
 * @details This function fill the p_data array, which is transferred through BLE UART, with all
 *          data preserved in the FLASH. As in each transmission, only BLE_NUS_MAX_DATA_LEN bytes could
 *          be sent. All FLASH data will be reassigned into multiple BLE_NUS_MAX_DATA_LEN-byte segments.
 *
 * @param[out] p_data   Pointer to a array of BLE_NUS_MAX_DATA_LEN bytes.
 * @param[out] length   Length of data in p_data. If length is equal to 0, all data has been processed.
 * 
 * @rtval TRUE  All data has been processed.
 *
 */
void back_data_ble_nus_fill(uint8_t *p_data, uint8_t *length)
{
    uint32_t            err_code;
    uint8_t             *data;              //< Pointer to a page
    pstorage_handle_t   block_handle;       //< Current block handle.
    
    data = ram_page[m_cur_page^0x1];        //< Access to the idle page
    *length = 0;
    
    while(*length < BLE_NUS_MAX_DATA_LEN)
    {
        if (m_ble_data_idx != BD_BLOCK_SIZE)                // Fill p_data with remained data in current block
        {
            p_data[*length] = data[m_ble_data_idx];
            (*length) ++;
            m_ble_data_idx ++;
            
        } else if (m_ble_block_idx + 1 != BD_BLOCK_COUNT)   // Fetch next block if current block is all sent
        {
            m_ble_data_idx = 0;
            m_ble_block_idx ++;
            
            err_code = pstorage_block_identifier_get(&m_base_handle, m_ble_block_idx, &block_handle);
            APP_ERROR_CHECK(err_code);
        
            err_code = pstorage_load(data, &block_handle, BD_BLOCK_SIZE, 0);
            APP_ERROR_CHECK(err_code);
            
        } else break;
    }
}

/**@brief Transfer preserved data through UART */
void back_data_transfer(void *p_event_data, uint16_t event_size)
{
    uint32_t                    i,j;
    uint32_t                    err_code;
    uint8_t                     config[BD_CONFIG_NUM_PER_BLOCK];    /**< Config info. */
    uint8_t                     count;
    pstorage_handle_t           block_handle;                       /**< Current block handle. */
    __DATA_TYPE *               data;
    
    UNUSED_PARAMETER(p_event_data);
    UNUSED_PARAMETER(event_size);
    
    data = (__DATA_TYPE *)ram_page[m_cur_page^0x1];
    
    /** FOR TEST ONLY, BLOCKING CPU !!!! **/
    for (i=0; i<BD_BLOCK_COUNT; i++)
    {
        err_code = pstorage_block_identifier_get(&m_base_handle, i, &block_handle);
        APP_ERROR_CHECK(err_code);
        
        err_code = pstorage_load(config, &block_handle, BD_CONFIG_NUM_PER_BLOCK, BD_CONFIG_BASE_ADDR);
        APP_ERROR_CHECK(err_code);
        
        if (!(~config[BD_CONFIG1_OFFSET] & BD_CONFIG1_USE_Msk)) break;       // Block is marked as non-used
        
        count = config[BD_CONFIG2_OFFSET];
        
        err_code = pstorage_load((uint8_t *)data, &block_handle, BD_DATA_NUM_PER_BLOCK * sizeof(__DATA_TYPE), 0);
        APP_ERROR_CHECK(err_code);
        
        
        printf("GROUP %d", i);
        for (j=0; j<count; j++)
        {
            printf(", %d", data[j]);
        }
        printf("\r\n");
        
        app_sched_execute();
    }
}

/**@brief Return a bool value indicating whether data storage is full
 **@rtval TRUE data storage is full
 */
bool is_data_full(void)
{
    return m_cur_block_idx == BD_BLOCK_COUNT;
}

/**@brief Wait if there is any flash access pending
*/
void wait_flash_op(void)
{
    uint32_t    err_code;
    uint32_t    count;
    
    do
    {
        app_sched_execute();
        err_code = pstorage_access_status_get(&count);
        APP_ERROR_CHECK(err_code);
    }
    while (count);
}



/*****************************************************************************
* Event Handlers
*****************************************************************************/

/**@brief Function for send instant data.
 * @details This function will be activated each time the data report timer's
 *          timeout event occurs.
 */
void data_report_timeout_handler(void *p_context)
{
    
    __DATA_TYPE *  data = (__DATA_TYPE *)ram_page[m_cur_page];       /**< Pointer for data segment. */

    UNUSED_PARAMETER(p_context);

    /**@note Use sd_temp_get(&temp) to obtain the core temperature if the softdevice is enabled.
            And the variable "temp" should be static.
    */
    /* Core Temp. Sensor (FOR TEST) */
    // uint32_t err_code;
    // err_code = sd_temp_get(&core_temp_val);
    // APP_ERROR_CHECK(err_code);

    int8_t temp, temp_frac;

    switch (fsm_state)
    {
        case 0:
        {
            ds1624_start_temp_conversion();
            break;
        }
        case 1:
        {
            ds1621_temp_read(&temp, &temp_frac);
            ble_dts_update_handler((uint16_t) temp);
            
            if (temp_frac != 0) temp = (temp << 1) + 1; else temp = temp << 1;
            
            data[m_cur_data_idx] = (__DATA_TYPE) temp;      //< Save data
            m_cur_data_idx ++;
            
            if (m_cur_data_idx == BD_DATA_NUM_PER_BLOCK) back_data_preserve(); //< Preserve data if one page is full;
            
            
            break;
        }
        default:
            break;
    }
    fsm_state = fsm_state ^ 0x1;

}

/**@brief Persistent Storage Error Reporting Callback
 *
 * @details Persistent Storage Error Reporting Callback that is used by the interface to report
 *          success or failure of a flash operation. Therefore, for any operations, application
 *          can know when the procedure was complete. For store operation, since no data copy
 *          is made, receiving a success or failure notification, indicated by the reason
 *          parameter of callback is an indication that the resident memory could now be reused
 *          or freed, as the case may be.
 *
 * @param[in] handle   Identifies module and block for which callback is received.
 * @param[in] op_code  Identifies the operation for which the event is notified.
 * @param[in] result   Identifies the result of flash access operation.
 *                     NRF_SUCCESS implies, operation succeeded.
 * @param[in] p_data   Identifies the application data pointer. In case of store operation, this
 *                     points to the resident source of application memory that application can now
 *                     free or reuse. In case of clear, this is NULL as no application pointer is
 *                     needed for this operation.
 * @param[in] data_len Length data application had provided for the operation.
 *
 */
static void pstorage_callback(pstorage_handle_t   *p_handle,
                              uint8_t              op_code,
                              uint32_t             result,
                              uint8_t             *p_data,
                              uint32_t             data_len)
{
    /** @note sys_evt_dispatch --> pstorage_sys_event_handler --> pstorage_callback */
}

/*****************************************************************************
* Initialization Functions
*****************************************************************************/

/**@brief Initialize file (group data) transfer through BLE link 
 *
 * @details This function send the whole FLASH storage area in binary format through
 *          Bluetooth link. Nordic BLE UART service is used for the file transfer, and maximum 
 *          throughput is achieved.
 * 
 * @note    Maximize BLE throughput
 *          https://devzone.nordicsemi.com/question/1741/dealing-large-data-packets-through-ble/
 */
void back_data_transfer_ble_init(void)
{
    // Initialize data transfer
    m_ble_data_idx = BD_BLOCK_SIZE;
    m_ble_block_idx = ~(0x0);
}

/**@brief Initializing system function state.
 */
void back_data_init(void)
{
    pstorage_module_param_t     storage_param;                      /**< pstorage parameter for data recording. */
    pstorage_handle_t           block_handle;                       /**< Current block handle. */
    uint8_t                     config[BD_CONFIG_NUM_PER_BLOCK];    /**< Config info. */
    uint32_t                    err_code;

    storage_param.block_size = BD_BLOCK_SIZE;
    storage_param.block_count = BD_BLOCK_COUNT;
    storage_param.cb = pstorage_callback;

    // Register pstorage module
    err_code = pstorage_register(&storage_param, &m_base_handle);
    APP_ERROR_CHECK(err_code);
    
    // Clear data cache
    m_cur_page = 0;
    m_cur_data_idx = 0;
    memset(ram_page, __DATA_FILL, 2 * BD_BLOCK_SIZE);
    
    /* Find the first non-used block saved previously,
     and start saving data from the next non-used block. */
    m_cur_block_idx = 0;
    
    while (!is_data_full())
    {
        err_code = pstorage_block_identifier_get(&m_base_handle, m_cur_block_idx, &block_handle);
        APP_ERROR_CHECK(err_code);
        
        err_code = pstorage_load(config, &block_handle, BD_CONFIG_NUM_PER_BLOCK, BD_CONFIG_BASE_ADDR);
        APP_ERROR_CHECK(err_code);   
        
        DEBUG_PF("Load Block %d, Config1 %x\r\n", m_cur_block_idx, config[BD_CONFIG1_OFFSET]);
        
        /** @note As clear operation set all FLASH bits to FF, reversed logic is used for config info bytes: 0 - set, 1 - unset. */ 
        if (!(~config[BD_CONFIG1_OFFSET] & BD_CONFIG1_USE_Msk)) break;       // Block is marked as non-used 
        
        m_cur_block_idx ++ ;
    }

}

