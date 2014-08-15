#ifndef I2C_DS1621_H__
#define I2C_DS1621_H__

#include <stdint.h>

/**@brief Initialize I2C peripheral */
void ds1621_init(void);

/**@brief Start DS1621 temperature conversion */
void ds1624_start_temp_conversion(void);

/**@brief Read temperature value from DS1621*/
void ds1621_temp_read(int8_t *temp, int8_t *temp_frac);

#endif

