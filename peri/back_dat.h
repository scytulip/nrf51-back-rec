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
#include <stdbool.h>

#include "nrf51.h"
#include "i2c_ds1621.h"

#define __DATA_TYPE	uint8_t										/**< Background recording data type. */
#define BACK_DATA_BLOCK_SIZE	128 * sizeof(__DATA_TYPE)		/**< Size of each pstorage FLASH block (128 data points). */
#define BACK_DATA_BLOCK_COUNT	256								/**< Total No. of pstorage FLASH blocks (256 x 128 = 32K data points). */

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
 *
 * @retval Current system state.
 */
uint32_t get_sys_state(void);

/**@brief Initializing system function state. 
 */
void back_data_init(void);

///**@brief Set the flag of "flash operation in progress."
// */
//void set_flash_access(void);

///**@brief Get flash operation status. 
// *
// * @retval True if flash operation is in process.
// */
//bool is_flash_access(void);

/**@brief Clear all saved data in FLASH
 */
void back_data_clear_storage(void);

#endif

/** @} */

