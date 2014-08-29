#include "nordic_common.h"
#include "nrf51.h"
#include "nrf51_bitfields.h"
#include "nrf_soc.h"

#include "softdevice_handler.h"
#include "app_scheduler.h"

#include <stdio.h>
#include <stdint.h>
#include "uart.h"
#include "nrf_delay.h"
#include "pstorage.h"

/* Drivers */
#include "i2c_ds1621.h"

#include "bluetooth.h"
#include "back_dat.h"

static uint32_t sys_state;						/**< System function state. */
static uint32_t fsm_state = 0;					/**< State of the FSM, 0 - Start conversion, 1 - Report temp. */

static __DATA_TYPE data[2][BACK_DATA_BLOCK_SIZE] __attribute__((aligned(4)));	/**< Ram pages for data to be saved in FLASH. */
static pstorage_handle_t m_base_handle;											/**< Identifier for allocated blocks. */
//static bool m_flash_opblock;													/**< Indication of blocking Flash operation. */

/*****************************************************************************
* Utility Functions
*****************************************************************************/

/**@brief Set system function state. 
 */
void set_sys_state( uint32_t state )
{	
	sys_state = state;
	
	switch(state)
	{
		case SYS_DATA_RECORDING:
			DEBUG_ASSERT("SYS_DATA_RECORDING.\r\n"); break;
		case SYS_BLE_DATA_INSTANT:
			DEBUG_ASSERT("SYS_BLE_DATA_INSTANT.\r\n"); break;
		case SYS_BLE_DATA_TRANSFER:
			DEBUG_ASSERT("SYS_BLE_DATA_TRANSFER.\r\n"); break;
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

///**@brief Set the flag of "flash operation in progress."
// */
//void set_flash_access(void)
//{
//	m_flash_opblock = true;
//}
//	
///**@brief Get flash operation status. 
// *
// * @retval True if flash operation is in process.
// */
//bool is_flash_access(void)
//{
//	return m_flash_opblock;
//}

/**@brief Clear all saved data in FLASH
 */
void back_data_clear_storage(void)
{
	uint32_t err_code;
	err_code = pstorage_clear(&m_base_handle, BACK_DATA_BLOCK_COUNT * BACK_DATA_BLOCK_SIZE);
	APP_ERROR_CHECK(err_code);
}

/*****************************************************************************
* Event Handlers
*****************************************************************************/

/**@brief Function for send instant data. 
 * @details This function will be activated each time the data report timer's
 *			timeout event occurs.
 */
void data_report_timeout_handler(void *p_context)
{	

	UNUSED_PARAMETER(p_context);
	
	/**@note Use sd_temp_get(&temp) to obtain the core temperature if the softdevice is enabled.
			And the variable "temp" should be static.
	*/
	/* Core Temp. Sensor (FOR TEST) */
	// uint32_t err_code;
	// err_code = sd_temp_get(&core_temp_val);
	// APP_ERROR_CHECK(err_code);
	
	int8_t temp, temp_frac;
	
	switch(fsm_state)
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
			break;
		}
		default:
			break;
	}
	fsm_state = (fsm_state + 1) % 2;
	
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
static void pstorage_callback(pstorage_handle_t *  p_handle,
                                  uint8_t              op_code,
                                  uint32_t             result,
                                  uint8_t *            p_data,
                                  uint32_t             data_len)
{
	/** @note sys_evt_dispatch --> pstorage_sys_event_handler --> pstorage_callback */
}

/*****************************************************************************
* Initialization Functions
*****************************************************************************/

/**@brief Initializing system function state. 
 */
void back_data_init(void)
{
	pstorage_handle_t		storage_handle;	/**< pstorage handle for data recording. */
	pstorage_module_param_t	storage_param;	/**< pstorage parameter for data recording. */
	uint32_t err_code;
	
	storage_param.block_size = BACK_DATA_BLOCK_SIZE;
	storage_param.block_count = BACK_DATA_BLOCK_COUNT;
	storage_param.cb = pstorage_callback;
	
	err_code = pstorage_register(&storage_param, &storage_handle);
	APP_ERROR_CHECK(err_code);
	
	err_code = pstorage_block_identifier_get(&storage_handle, 0, &m_base_handle);
	APP_ERROR_CHECK(err_code);
	
	set_sys_state(SYS_DATA_RECORDING);
	
}

