#include "nordic_common.h"
#include "nrf.h"
#include "nrf51.h"
#include "nrf51_bitfields.h"

#include "interruption.h"

#include "ble.h"
#include "ble_hci.h"
#include "ble_srv_common.h"
#include "ble_advdata.h"
#include "ble_conn_params.h"
#include "ble_error_log.h"
#include "ble_debug_assert_handler.h"
#include "softdevice_handler.h"

#include "main.h"

// For Test
static uint8_t	testv = 0;
				
/*****************************************************************************
* Interruption Handlers
*****************************************************************************/

/**@brief Function for handling the ADC interrupt.
 * @details  This function will fetch the conversion result from the ADC, convert the value into
 *           percentage and send it to peer.
 */
void ADC_IRQHandler(void)
{
    if (NRF_ADC->EVENTS_END != 0)
    {
        uint8_t     adc_result;
        uint16_t    batt_lvl_in_milli_volts;
        uint8_t     percentage_batt_lvl;
        uint32_t    err_code;

        NRF_ADC->EVENTS_END     = 0;
        adc_result              = NRF_ADC->RESULT;
        NRF_ADC->TASKS_STOP     = 1;

        batt_lvl_in_milli_volts = ADC_RESULT_IN_MILLI_VOLTS(adc_result) +
                                  DIODE_FWD_VOLT_DROP_MILLIVOLTS;
        percentage_batt_lvl     = battery_level_in_percent(batt_lvl_in_milli_volts);
			
				percentage_batt_lvl	= (testv++) % 100;
				battery_level_update_handler(percentage_batt_lvl);

        //err_code = ble_bas_battery_level_update(&bas, percentage_batt_lvl);
			
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
}
