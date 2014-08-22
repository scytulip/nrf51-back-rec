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

/* Drivers */
#include "i2c_ds1621.h"

#include "bluetooth.h"
#include "back_dat.h"

static uint32_t sys_state;			/**< System function state. */
static uint32_t fsm_state = 0;		/**< State of the FSM, 0 - Start conversion, 1 - Report temp. */

/*****************************************************************************
* Utility Functions
*****************************************************************************/

/**@brief Set system function state. 
 */
void set_sys_state( uint32_t state )
{
	sys_state = state;
}

/**@brief Get system function state. 
 */
uint32_t get_sys_state(void)
{
	return sys_state;
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

/*****************************************************************************
* Initialization Functions
*****************************************************************************/

/**@brief Initializing system function state. 
 */
void back_data_init(void)
{
	sys_state = SYS_DATA_RECORDING;
}

