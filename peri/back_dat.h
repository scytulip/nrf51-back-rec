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

/** @note Data storage structure in FLASH

  +-------------------------------------+
  | BLOCK | BLOCK | ... | BLOCK | BLOCK |
  +-------------------------------------+
  |        \
  +----------------------------------------------------------------+
  | DATA | DATA | ... | DATA | CONFIG1 | CONFIG2 | ... | N/A | ... |
  +----------------------------------------------------------------+
  
*/
  

#define __DATA_TYPE	uint8_t																		/**< Background recording data type. */
#define BACK_DATA_BLOCK_SIZE			5 * sizeof(__DATA_TYPE)								/**< Size of each pstorage FLASH block (128 data points). */
#define BACK_DATA_BLOCK_COUNT			4														/**< Total No. of pstorage FLASH blocks (256 x 128 = 32K data blocks). */
#define BACK_DATA_NUM_PER_BLOCK			4														/**< Number of data points per block. */
#define BACK_DATA_CONFIG1_IND			BACK_DATA_NUM_PER_BLOCK * sizeof(__DATA_TYPE) + 0x0		/**< Offset address for CONFIG1 block. (in uint8_t) */
#define BACK_DATA_CONFIG1_USE_Msk		0x1														/**< Mask for "this block is used." */

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

/**@brief Clear all saved data in FLASH
 */
void back_data_clear_storage(void);

/**@brief Preserve data in FLASH before shut down
 */
void back_data_exit_preserve(void);

#endif

/** @} */

