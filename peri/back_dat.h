/** @file
 *
 * @defgroup ble_back_rec_back_data Background Data Recording Operation
 * @{
 * @ingroup ble_back_rec
 * @brief Header for background data recording.
 */

#ifndef CUSTOM_BKDAT_H__
#define CUSTOM_BKDAT_H__

#include <stdint.h>

#include "nrf51.h"
#include "i2c_ds1621.h"

/* System function state */
enum {
	SYS_DATA_RECORDING,
	SYS_BLE_DATA_INSTANT,
	SYS_BLE_DATA_TRANSFER
};

/**@brief Function for send instant data. 
 * @details This function will be activated each time the data report timer's
 *			timeout event occurs.
 */
void data_report_timeout_handler(void *p_context);

/**@brief Set system function state. 
 */
void set_sys_state( uint32_t state );

/**@brief Get system function state. 
 */
uint32_t get_sys_state(void);

/**@brief Initializing system function state. 
 */
void back_data_init(void);

#endif

/** @} */

