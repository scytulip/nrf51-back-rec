#include <stdbool.h>

#include "nordic_common.h"
#include "nrf51.h"
#include "nrf.h"
#include "device_manager.h"
#include "pstorage.h"
#include "nrf_gpio.h"
#include "nrf_delay.h"
#include "app_util_platform.h"

#include "ble_gap.h"
#include "ble_hci.h"
#include "ble_advdata.h"
#include "ble_conn_params.h"
#include "ble_bas.h"
#include "ble_hrs.h"
#include "ble_dis.h"
#include "ble_nus.h"
#include "softdevice_handler.h"

#include "timers.h"
#include "gpio.h"
#include "bluetooth.h"
#include "back_dat.h"
#include "uart.h"


// Global Variables
static uint16_t                         m_conn_handle = BLE_CONN_HANDLE_INVALID;    /**< Handle of the current connection. */
static ble_bas_t                        m_bas;                                      /**< Structure used to identify the battery service. */
static ble_hrs_t                        m_dts;                                      /**< Structure used to report data instantly. */
static ble_nus_t                        m_nus;                                      /**< Structure to identify the Nordic UART Service. */
static dm_application_instance_t        m_app_handle;                               /**< Application identifier allocated by device manager. */
static bool                             m_file_in_transit;                          /**< Indicator of file (group data) in transit. */

/*****************************************************************************
* Event Handlers & Dispatches
*****************************************************************************/

/**@brief Function for putting the chip in System OFF Mode
 */
void system_off_mode(void)
{
    uint32_t err_code;

    back_data_preserve();
    wait_flash_op();

    nrf_delay_ms(200);

    /* Configure buttons with sense level low as wakeup source. */
    nrf_gpio_cfg_sense_input(WAKEUP_BUTTON_PIN,
                             BUTTON_PULL,
                             NRF_GPIO_PIN_SENSE_LOW);

    nrf_gpio_pin_clear(ADVERTISING_LED_PIN_NO);
    nrf_gpio_pin_clear(CONNECTED_LED_PIN_NO);

    err_code = sd_power_system_off();
    APP_ERROR_CHECK(err_code);

}

/**@brief Function for updating instant data.
 *
 * @details This function sends instant data through Heart Rate Service.
 */
void ble_dts_update_handler(uint16_t data)
{
    // Update data through BLE HRS
    ble_hrs_heart_rate_measurement_send(&m_dts, data);

    char str[21];

    // Update data through BLE UART
    sprintf(str, "DATA=%d", data);
    ble_nus_send_string( &m_nus, (uint8_t *)str, strlen(str) );

}

/**@brief    Function for handling the data from the Nordic UART Service.
 */
static void nus_data_handler(ble_nus_t *p_nus, uint8_t *p_data, uint16_t length)
{
    uint32_t err_code;
    
    if (length==1) //< Control Command
    {
        switch(p_data[0])
        {
            case 'I':
                set_sys_state(SYS_BLE_DATA_INSTANT);
                break;
            case 'T':
                set_sys_state(SYS_BLE_DATA_TRANSFER);
                nrf_delay_ms(MAX_CONN_INTERVAL * 2);    //< Wait until all BLE operation is done.
            
                back_data_transfer_ble_init();          //< Initialize a file transfer
                m_file_in_transit = true;

                err_code = ble_nus_send_string(&m_nus, (uint8_t *) "**START**", 9);     //< Start indicator
                APP_ERROR_CHECK(err_code);

                break;
        }
    }
}

/**@brief Function for updating battery level.
 *
 * @details This function is called in ADC_IRQHandler to update current battery level.
 */
void ble_bas_battery_level_update_handler(uint8_t percentage_batt_lvl)
{
    uint32_t err_code;

    err_code = ble_bas_battery_level_update(&m_bas, percentage_batt_lvl);

    if (
        (err_code != NRF_SUCCESS)
        &&
        (err_code != NRF_ERROR_INVALID_STATE)
        &&
        (err_code != BLE_ERROR_NO_TX_BUFFERS)
        &&
        (err_code != BLE_ERROR_GATTS_SYS_ATTR_MISSING)
    )
    {
        APP_ERROR_HANDLER(err_code);
    }
}

/**@brief Function for handling the Device Manager events.
 *
 * @param[in]   p_evt   Data associated to the device manager event.
 */
static uint32_t device_manager_evt_handler(dm_handle_t const     *p_handle,
        dm_event_t const      *p_event,
        api_result_t           event_result)
{
    APP_ERROR_CHECK(event_result);
    return NRF_SUCCESS;
}


/**@brief Function for handling the Application's BLE Stack events.
 *
 * @param[in]   p_ble_evt   Bluetooth stack event.
 */
static void on_ble_evt(ble_evt_t *p_ble_evt)
{
    uint32_t                         err_code;

    switch (p_ble_evt->header.evt_id)
    {
        case BLE_GAP_EVT_CONNECTED:
            nrf_gpio_pin_set(CONNECTED_LED_PIN_NO);
            nrf_gpio_pin_clear(ADVERTISING_LED_PIN_NO);

            m_conn_handle = p_ble_evt->evt.gap_evt.conn_handle;

            ble_timers_start(); // Start service-related timers

            break;

        case BLE_GAP_EVT_DISCONNECTED:
            nrf_gpio_pin_clear(CONNECTED_LED_PIN_NO);
            nrf_gpio_pin_set(ADVERTISING_LED_PIN_NO);

            ble_timers_stop(); // Stop service-related timers

            /** @note: Remember to clear connection handle.
                        Otherwise, the chip cannot be waken up after entering sleep mode!*/
            m_conn_handle = BLE_CONN_HANDLE_INVALID;
            set_sys_state(SYS_DATA_RECORDING);

            //advertising_start();
            break;

        case BLE_GAP_EVT_TIMEOUT:
            if (p_ble_evt->evt.gap_evt.params.timeout.src == BLE_GAP_TIMEOUT_SRC_ADVERTISEMENT)
            {
                // Stop advertising if not connected in limited time
                set_sys_state(SYS_DATA_RECORDING);
            }
            break;

        case BLE_GATTS_EVT_TIMEOUT:
            if (p_ble_evt->evt.gatts_evt.params.timeout.src == BLE_GATT_TIMEOUT_SRC_PROTOCOL)
            {
                err_code = sd_ble_gap_disconnect(m_conn_handle,
                                                 BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
                APP_ERROR_CHECK(err_code);
            }
            break;
            
        case BLE_EVT_TX_COMPLETE:
            if (m_file_in_transit) ble_nus_data_transfer();
            break;

        default:
            // No implementation needed.
            break;
    }
}

/**@brief Function for handling the Connection Parameters Module.
 *
 * @details This function will be called for all events in the Connection Parameters Module which
 *          are passed to the application.
 *          @note All this function does is to disconnect. This could have been done by simply
 *                setting the disconnect_on_fail config parameter, but instead we use the event
 *                handler mechanism to demonstrate its use.
 *
 * @param[in]   p_evt   Event received from the Connection Parameters Module.
 */
static void on_conn_params_evt(ble_conn_params_evt_t *p_evt)
{
    uint32_t err_code;

    if (p_evt->evt_type == BLE_CONN_PARAMS_EVT_FAILED)
    {
        err_code = sd_ble_gap_disconnect(m_conn_handle, BLE_HCI_CONN_INTERVAL_UNACCEPTABLE);
        APP_ERROR_CHECK(err_code);
    }
}


/**@brief Function for handling a Connection Parameters error.
 *
 * @param[in]   nrf_error   Error code containing information about what went wrong.
 */
static void conn_params_error_handler(uint32_t nrf_error)
{
    APP_ERROR_HANDLER(nrf_error);
}

/**@brief Function for dispatching a BLE stack event to all modules with a BLE stack event handler.
 *
 * @details This function is called from the scheduler in the main loop after a BLE stack
 *          event has been received.
 *
 * @param[in]   p_ble_evt   Bluetooth stack event.
 */
static void ble_evt_dispatch(ble_evt_t *p_ble_evt)
{
    dm_ble_evt_handler(p_ble_evt);
    ble_bas_on_ble_evt(&m_bas, p_ble_evt);
    ble_hrs_on_ble_evt(&m_dts, p_ble_evt);
    ble_nus_on_ble_evt(&m_nus, p_ble_evt);
    ble_conn_params_on_ble_evt(p_ble_evt);
    on_ble_evt(p_ble_evt);

}

/**@brief Function for dispatching a system event to interested modules (mainly pstorage operation).
 *
 * @details This function is called from the System event interrupt handler after a system
 *          event has been received.
 *
 * @param[in]   sys_evt   System stack event.
 */
static void sys_evt_dispatch(uint32_t sys_evt)
{
    if ((sys_evt == NRF_EVT_FLASH_OPERATION_SUCCESS) ||
            (sys_evt == NRF_EVT_FLASH_OPERATION_ERROR))
    {
        pstorage_sys_event_handler(sys_evt);
    }
}

/*****************************************************************************
* Initilization Functions
*****************************************************************************/

/**@brief Function for initializing the BLE stack.
 *
 * @details Initializes the SoftDevice and the BLE event interrupt.
 */
void ble_stack_init(void)
{
    uint32_t err_code;

    // Enable BLE stack
    ble_enable_params_t ble_enable_params;
    memset(&ble_enable_params, 0, sizeof(ble_enable_params));
    ble_enable_params.gatts_enable_params.service_changed = IS_SRVC_CHANGED_CHARACT_PRESENT;
    err_code = sd_ble_enable(&ble_enable_params);
    APP_ERROR_CHECK(err_code);

    // Register with the SoftDevice handler module for BLE events.
    err_code = softdevice_ble_evt_handler_set(ble_evt_dispatch);
    APP_ERROR_CHECK(err_code);

}

/**@brief Function for the GAP initialization.
 *
 * @details This function sets up all the necessary GAP (Generic Access Profile) parameters of the
 *          device including the device name, appearance, and the preferred connection parameters.
 */
void gap_params_init(void)
{
    uint32_t                err_code;
    ble_gap_conn_params_t   gap_conn_params;
    ble_gap_conn_sec_mode_t sec_mode;

    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&sec_mode); // Open link

    err_code = sd_ble_gap_device_name_set(&sec_mode,
                                          (const uint8_t *)DEVICE_NAME,
                                          strlen(DEVICE_NAME));
    APP_ERROR_CHECK(err_code);

    err_code = sd_ble_gap_appearance_set(BLE_APPEARANCE_HEART_RATE_SENSOR_HEART_RATE_BELT);
    //err_code = sd_ble_gap_appearance_set(BLE_APPEARANCE_UNKNOWN);
    APP_ERROR_CHECK(err_code);

    /* Set GAP Peripheral Preferred Connection Parameters. */
    memset(&gap_conn_params, 0, sizeof(gap_conn_params));

    gap_conn_params.min_conn_interval = MIN_CONN_INTERVAL;
    gap_conn_params.max_conn_interval = MAX_CONN_INTERVAL;
    gap_conn_params.slave_latency     = SLAVE_LATENCY;
    gap_conn_params.conn_sup_timeout  = CONN_SUP_TIMEOUT;

    err_code = sd_ble_gap_ppcp_set(&gap_conn_params);
    APP_ERROR_CHECK(err_code);
}


/**@brief Function for initializing the Advertising functionality.
 *
 * @details Encodes the required advertising data and passes it to the stack.
 *          Also builds a structure to be passed to the stack when starting advertising.
 */
void advertising_init(void)
{
    uint32_t      err_code;
    ble_advdata_t advdata;
    ble_advdata_t scanrsp;

    /* In Limited Discoverable Mode, the device is only in Discoverable Mode
    long enough for a device to pair up with it then goes back to Non-Discoverable Mode. */

    uint8_t       flags = BLE_GAP_ADV_FLAGS_LE_ONLY_GENERAL_DISC_MODE;

    /*
    1. Battery service for monitoring battery usage
    2. Pseudo heart rate service for real-time data report
    3. Device information service for general report
    4. UART service for group data transfer
    */
    ble_uuid_t adv_uuids[] =
    {
        {BLE_UUID_BATTERY_SERVICE,                  BLE_UUID_TYPE_BLE},
        {BLE_UUID_HEART_RATE_SERVICE,               BLE_UUID_TYPE_BLE},
        {BLE_UUID_DEVICE_INFORMATION_SERVICE,       BLE_UUID_TYPE_BLE},
        {BLE_UUID_NUS_SERVICE,                      m_nus.uuid_type}
    }; // Too long to fit all in advdata

    // Build and set advertising data
    memset(&advdata, 0, sizeof(advdata));
    memset(&scanrsp, 0, sizeof(scanrsp));

    advdata.name_type               = BLE_ADVDATA_FULL_NAME;
    advdata.include_appearance      = true;
    advdata.flags.size              = sizeof(flags);
    advdata.flags.p_data            = &flags;
    scanrsp.uuids_complete.uuid_cnt = sizeof(adv_uuids) / sizeof(adv_uuids[0]);
    scanrsp.uuids_complete.p_uuids  = adv_uuids;

    err_code = ble_advdata_set(&advdata, &scanrsp);
    APP_ERROR_CHECK(err_code);

}

/**@brief Function for initializing the Connection Parameters module.
 */
void conn_params_init(void)
{
    uint32_t               err_code;
    ble_conn_params_init_t cp_init;

    memset(&cp_init, 0, sizeof(cp_init));

    cp_init.p_conn_params                  = NULL;
    cp_init.first_conn_params_update_delay = FIRST_CONN_PARAMS_UPDATE_DELAY;
    cp_init.next_conn_params_update_delay  = NEXT_CONN_PARAMS_UPDATE_DELAY;
    cp_init.max_conn_params_update_count   = MAX_CONN_PARAMS_UPDATE_COUNT;
    cp_init.start_on_notify_cccd_handle    = m_dts.hrm_handles.cccd_handle; //BLE_GATT_HANDLE_INVALID;
    cp_init.disconnect_on_fail             = true;
    cp_init.evt_handler                    = on_conn_params_evt;
    cp_init.error_handler                  = conn_params_error_handler;

    err_code = ble_conn_params_init(&cp_init);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for initializing the services that will be used by the application.
 *
 * @details Initialize the Heart Rate, Battery and Device Information services.
 */
void services_init(void)
{
    uint32_t       err_code;
    ble_hrs_init_t dts_init;
    ble_bas_init_t bas_init;
    ble_dis_init_t dis_init;
    ble_nus_init_t nus_init;
    uint8_t        body_sensor_location;

    // Initialize Data Report (Heart Rate) Service.
    body_sensor_location = BLE_HRS_BODY_SENSOR_LOCATION_OTHER;

    memset(&dts_init, 0, sizeof(dts_init));

    dts_init.is_sensor_contact_supported = false;
    dts_init.p_body_sensor_location      = &body_sensor_location;

    // Here the sec level for the Heart Rate Service can be changed/increased.
    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&dts_init.hrs_hrm_attr_md.cccd_write_perm);
    BLE_GAP_CONN_SEC_MODE_SET_NO_ACCESS(&dts_init.hrs_hrm_attr_md.read_perm);
    BLE_GAP_CONN_SEC_MODE_SET_NO_ACCESS(&dts_init.hrs_hrm_attr_md.write_perm);

    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&dts_init.hrs_bsl_attr_md.read_perm);
    BLE_GAP_CONN_SEC_MODE_SET_NO_ACCESS(&dts_init.hrs_bsl_attr_md.write_perm);

    err_code = ble_hrs_init(&m_dts, &dts_init);
    APP_ERROR_CHECK(err_code);

    // Initialize Battery Service.
    memset(&bas_init, 0, sizeof(bas_init));

    // Here the sec level for the Battery Service can be changed/increased.
    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&bas_init.battery_level_char_attr_md.cccd_write_perm);
    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&bas_init.battery_level_char_attr_md.read_perm);
    BLE_GAP_CONN_SEC_MODE_SET_NO_ACCESS(&bas_init.battery_level_char_attr_md.write_perm);

    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&bas_init.battery_level_report_read_perm);

    bas_init.evt_handler          = NULL;
    bas_init.support_notification = true;
    bas_init.p_report_ref         = NULL;
    bas_init.initial_batt_level   = 100;

    err_code = ble_bas_init(&m_bas, &bas_init);
    APP_ERROR_CHECK(err_code);

    // Initialize Device Information Service
    memset(&dis_init, 0, sizeof(dis_init));

    ble_srv_ascii_to_utf8(&dis_init.manufact_name_str, MANUFACTURER_NAME);

    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&dis_init.dis_attr_md.read_perm);
    BLE_GAP_CONN_SEC_MODE_SET_NO_ACCESS(&dis_init.dis_attr_md.write_perm);

    err_code = ble_dis_init(&dis_init);
    APP_ERROR_CHECK(err_code);

    // Initialize Nordic BLE UART Service
    memset(&nus_init, 0, sizeof(nus_init));

    nus_init.data_handler = nus_data_handler;

    err_code = ble_nus_init(&m_nus, &nus_init);
    APP_ERROR_CHECK(err_code);

}

/**@brief Function for the Device Manager initialization.
 */
void device_manager_init(void)
{
    uint32_t                err_code;
    dm_init_param_t         init_data;
    dm_application_param_t  register_param;

    // Clear all bonded centrals if the Bonds Delete button is pushed.
    // init_data.clear_persistent_data = (nrf_gpio_pin_read(BOND_DELETE_ALL_BUTTON_ID) == 0);

    err_code = dm_init(&init_data);
    APP_ERROR_CHECK(err_code);

    memset(&register_param.sec_param, 0, sizeof(ble_gap_sec_params_t));

    register_param.sec_param.timeout      = SEC_PARAM_TIMEOUT;
    register_param.sec_param.bond         = SEC_PARAM_BOND;
    register_param.sec_param.mitm         = SEC_PARAM_MITM;
    register_param.sec_param.io_caps      = SEC_PARAM_IO_CAPABILITIES;
    register_param.sec_param.oob          = SEC_PARAM_OOB;
    register_param.sec_param.min_key_size = SEC_PARAM_MIN_KEY_SIZE;
    register_param.sec_param.max_key_size = SEC_PARAM_MAX_KEY_SIZE;
    register_param.evt_handler            = device_manager_evt_handler;
    register_param.service_type           = DM_PROTOCOL_CNTXT_GATT_SRVR_ID;

    err_code = dm_register(&m_app_handle, &register_param);
    APP_ERROR_CHECK(err_code);
}

/*****************************************************************************
* Operation
*****************************************************************************/

/**@brief Initialize system event handler. */
void sys_evt_init(void)
{
    uint32_t err_code;

    // Register with the SoftDevice handler module for system events.
    err_code = softdevice_sys_evt_handler_set(sys_evt_dispatch);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for starting advertising.
 */
void advertising_start(void)
{
    uint32_t             err_code;
    ble_gap_adv_params_t adv_params;

    // Start advertising
    memset(&adv_params, 0, sizeof(adv_params));

    adv_params.type        = BLE_GAP_ADV_TYPE_ADV_IND;  // Undirected advertisement.
    adv_params.p_peer_addr = NULL;
    adv_params.fp          = BLE_GAP_ADV_FP_ANY;                // Allow scan requests and connect requests from any device.
    adv_params.interval    = APP_ADV_INTERVAL;
    adv_params.timeout     = APP_ADV_TIMEOUT_IN_SECONDS;

    err_code = sd_ble_gap_adv_start(&adv_params);
    APP_ERROR_CHECK(err_code);

    nrf_gpio_pin_set(ADVERTISING_LED_PIN_NO);
    nrf_gpio_pin_clear(CONNECTED_LED_PIN_NO);

} 

/**@brief Function for disconnecting BLE link.
 */
void ble_connection_disconnect(void)
{
    uint32_t err_code;
    if (m_conn_handle != BLE_CONN_HANDLE_INVALID)
    {
        err_code = sd_ble_gap_disconnect(m_conn_handle, BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION);
        APP_ERROR_CHECK(err_code);
        m_conn_handle = BLE_CONN_HANDLE_INVALID;
    } else 
    {
        err_code = sd_ble_gap_adv_stop();
        err_code = 0;                       //< Ignore error when not advertising
        //APP_ERROR_CHECK(err_code);
    }
    
}

/**@brief Send data through BLE UART service with maximum throughput. */
void ble_nus_data_transfer(void)
{
    uint8_t         data[BLE_NUS_MAX_DATA_LEN];     //< Data to be sent
    uint8_t         length;
    uint32_t        err_code;
    uint8_t         i;
    uint8_t         txbuf_ct;                       //< BLE TX buffer count
    
    
    err_code = sd_ble_tx_buffer_count_get(&txbuf_ct);
    APP_ERROR_CHECK(err_code);
    
    for (i=0; i<txbuf_ct; i++)
    {
        back_data_ble_nus_fill(data, &length);
        
        if (length == 0)    //< All data is sent.
        {
            if (i==0)
            {
                m_file_in_transit = false;
                err_code = ble_nus_send_string(&m_nus, (uint8_t *) "**END**", 7);     //< End indicator
                APP_ERROR_CHECK(err_code);
                //set_sys_state(SYS_BLE_DATA_INSTANT);
            }
            break;
        }
        
        err_code = ble_nus_send_string(&m_nus, data, length);
        APP_ERROR_CHECK(err_code);
    }
    
    
}
