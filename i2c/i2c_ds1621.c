#include "nordic_common.h"
#include "nrf51.h"
#include "nrf51_bitfields.h"
#include "nrf_soc.h"

#include "softdevice_handler.h"
#include "app_scheduler.h"

#include "twi_master.h"
#include "uart.h"
#include "nrf_delay.h"

#include "i2c_ds1621.h"

/* DS1621 Addresses & Commands */
#define DS1621_ADDRESS          0x9A //!< DS1621 TWI address 1010_{A2,A1,A0}_0
#define DS1621_ONESHOT_MODE     0x01 //!< Bit in configuration register for 1-shot mode 
#define DS1621_CONVERSION_DONE  0x80 //!< Bit in configuration register to indicate completed temperature conversion

const uint8_t command_access_config      = 0xAC; //!< Reads or writes configuration data to configuration register
const uint8_t command_read_temp          = 0xAA; //!< Reads last converted temperature value from temperature register
const uint8_t command_start_convert_temp = 0xEE; //!< Initiates temperature conversion.
const uint8_t command_stop_convert_temp  = 0x22; //!< Halts temperature conversion.

/*****************************************************************************
* Driver for Maxim (c) DS1621+
*****************************************************************************/

/**
 * @brief Function for reading the current configuration of the sensor.
 *
 * @return uint8_t Zero if communication with the sensor failed. Contents (always non-zero) of configuration register (@ref DS1624_ONESHOT_MODE and @ref DS1624_CONVERSION_DONE) if communication succeeded.
 */
static uint8_t ds1621_config_read(void)
{
    uint8_t config = 0;

    // Write: command protocol
    if (twi_master_transfer(DS1621_ADDRESS, (uint8_t *)&command_access_config, 1, TWI_DONT_ISSUE_STOP))
    {
        if (!twi_master_transfer(DS1621_ADDRESS | TWI_READ_BIT, &config, 1, TWI_ISSUE_STOP)) // Read: current configuration
        {
            // Read failed
            config = 0;
        }
    }

    return config;
}

/**@brief Initialize I2C peripheral */
void ds1621_init(void)
{
    bool transfer_succeeded = true;

    twi_master_init();

    uint8_t config = ds1621_config_read();

    // Configure DS1624 for 1SHOT mode if not done so already.
    if (config)
    {
        if (!(config & DS1621_ONESHOT_MODE))
        {
            uint8_t data_buffer[2];

            data_buffer[0] = command_access_config;
            data_buffer[1] = DS1621_ONESHOT_MODE;

            transfer_succeeded &= twi_master_transfer(DS1621_ADDRESS, data_buffer, 2, TWI_ISSUE_STOP);
        }
    }
    else
    {
        transfer_succeeded = false;
    }

    NRF_TWI1->ENABLE = TWI_ENABLE_ENABLE_Disabled << TWI_ENABLE_ENABLE_Pos; /**< Save power! */

    if (!transfer_succeeded)
    {
        DEBUG_ASSERT("DS1621 configuration is failed!\r\n");
        return;
    }

}

/**@brief Start DS1621 temperature conversion */
void ds1624_start_temp_conversion(void)
{
    NRF_TWI1->ENABLE = TWI_ENABLE_ENABLE_Enabled << TWI_ENABLE_ENABLE_Pos;  /**< Resume power. */
    TWI_DELAY();

    if (!twi_master_transfer(DS1621_ADDRESS, (uint8_t *)&command_start_convert_temp, 1, TWI_ISSUE_STOP))
    {
        DEBUG_ASSERT("Starting DS1621 temp. conversion is failed!\r\n");
    }

    NRF_TWI1->ENABLE = TWI_ENABLE_ENABLE_Disabled << TWI_ENABLE_ENABLE_Pos; /**< Save power! */
}

/**@brief Read temperature value from DS1621*/
void ds1621_temp_read(int8_t *temp, int8_t *temp_frac)
{
    NRF_TWI1->ENABLE = TWI_ENABLE_ENABLE_Enabled << TWI_ENABLE_ENABLE_Pos;  /**< Resume power. */
    TWI_DELAY();

    uint8_t config = ds1621_config_read();

    if (config & DS1621_CONVERSION_DONE)
    {
        // Write: Begin read temperature command
        if (twi_master_transfer(DS1621_ADDRESS, (uint8_t *)&command_read_temp, 1, TWI_DONT_ISSUE_STOP))
        {
            uint8_t data_buffer[2];

            // Read: 2 temperature bytes to data_buffer
            if (twi_master_transfer(DS1621_ADDRESS | TWI_READ_BIT, data_buffer, 2, TWI_ISSUE_STOP))
            {
                *temp       = (int8_t)data_buffer[0];
                *temp_frac  = (int8_t)data_buffer[1];

                DEBUG_PF("Temp = %d\r\n", *temp);

            }
            else DEBUG_ASSERT("DS1621 data reading is failed. (ds1621_temp_read)\r\n");

        }
        else DEBUG_ASSERT("DS1621 command is failed. (ds1621_temp_read)\r\n");

    }
    else DEBUG_ASSERT("Temperature conversion is not done. (ds1621_temp_read)\r\n");

    NRF_TWI1->ENABLE = TWI_ENABLE_ENABLE_Disabled << TWI_ENABLE_ENABLE_Pos; /**< Save power! */
}

