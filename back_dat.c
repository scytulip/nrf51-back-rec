#include "nrf.h"
#include "nordic_common.h"

#include "bluetooth.h"
#include "back_dat.h"

static uint16_t m_instant_data = 0;

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

    ble_dts_update_handler(m_instant_data ++);
}
