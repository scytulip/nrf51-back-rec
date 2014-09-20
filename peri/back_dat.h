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

#define __DATA_TYPE             uint8_t                                                 /**< Background recording data type. */
#define __DATA_FILL             0xFF                                                    /**< Filling data for unused space. */

#define BD_BLOCK_SIZE           128                                                     /**< Size of each pstorage FLASH block (in uint8_t). */
#define BD_BLOCK_COUNT          256                                                     /**< Total No. of pstorage FLASH blocks (256 x 128 = 32K blocks). */
#define BD_DATA_NUM_PER_BLOCK   120                                                     /**< Number of data points per block. */
#define BD_DATA_END_ADDR        BD_DATA_NUM_PER_BLOCK * sizeof(__DATA_TYPE)             /**< End address of data segment in each block. */
#define BD_CONFIG_BASE_ADDR     (BD_DATA_END_ADDR & 0x3) ? \
                                (((BD_DATA_END_ADDR >> 0x2) + 1) << 0x2) : \
                                (BD_DATA_END_ADDR)                                      /**< Base address for CONFIG blocks (in uint8_t, aligned to Word). */
#define BD_CONFIG_NUM_PER_BLOCK 4                                                       /**< Number of config info per block (a multiple of 4 bytes). */
#define BD_CONFIG1_OFFSET       0x0                                                     /**< Offset address for CONFIG1 block. */

/** @note As clear operation set all FLASH bits to FF, reversed logic is used for config info bytes: 0 - set, 1 - unset. */
#define BD_CONFIG1_USE_Msk      0x1                                                     /**< Mask for "this block is used." */

/* System function state */
enum
{
    SYS_DATA_RECORDING,         //< Data recording mode
    SYS_BLE_DATA_INSTANT,       //< Data instant report mode
    SYS_BLE_DATA_TRANSFER       //< Data transfer mode
};

/**@brief Function for send instant data.
 * @details This function will be activated each time the data report timer's
 *          timeout event occurs.
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

/**@brief Preserve data in FLASH when a page is full
 */
void back_data_preserve(void);

/**@brief Transfer preserved data through UART */
void back_data_transfer(void *p_event_data, uint16_t event_size);

/**@brief Return a bool value indicating whether data storage is full
 **@rtval TRUE data storage is full
 */
bool is_data_full(void);

/**@brief Wait if there is any flash access pending
*/
void wait_flash_op(void);

#endif

/** @} */

