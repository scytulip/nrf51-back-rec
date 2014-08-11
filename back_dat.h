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

/**@brief Function for send instant data. 
 * @details This function will be activated each time the data report timer's
 *			timeout event occurs.
 */
void data_report_timeout_handler(void *p_context);

/**@brief Initialize I2C peripheral */
void ds1621_init(void);

/**@brief Start DS1621 temperature conversion */
void ds1624_start_temp_conversion(void);

/**@brief Read temperature value from DS1621*/
void ds1621_temp_read(int8_t *temp, int8_t *temp_frac);


#endif

/** @} */

