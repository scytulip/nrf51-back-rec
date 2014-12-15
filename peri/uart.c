#include <stdint.h>
#include <stdio.h>

#include "nrf.h"
#include "nrf_gpio.h"
#include "softdevice_handler.h"
#include "app_uart.h"

#include "uart.h"

/**
 *@breif UART configuration structure
 */
static const app_uart_comm_params_t comm_params =
{
    .rx_pin_no  = RX_PIN_NO,
    .tx_pin_no  = TX_PIN_NO,
    .rts_pin_no = RTS_PIN_NO,
    .cts_pin_no = CTS_PIN_NO,
    //Below values are defined in ser_config.h common for application and connectivity
    .flow_control = APP_UART_FLOW_CONTROL_DISABLED,
    .use_parity   = false,
    .baud_rate    = UART_BAUDRATE_BAUDRATE_Baud38400
};


/**@brief UART event handler */
static void uart_evt_callback(app_uart_evt_t * uart_evt)
{
    //uint32_t err_code;
	
    switch (uart_evt->evt_type)
    {
        case APP_UART_DATA:	
			//Data is ready on the UART					
            break;
						
		case APP_UART_DATA_READY:
            //Data is ready on the UART FIFO		
            break;
						
        case APP_UART_TX_EMPTY:
			//Data has been successfully transmitted on the UART
            break;
						
        default:
            break;
    }
    
}

/**@brief Function for initializing UART operation */
void uart_init(void)
{
    uint32_t err_code;
    
    APP_UART_INIT(&comm_params,
                  uart_evt_callback,
                  UART_IRQ_PRIORITY,
                  err_code);
    
    APP_ERROR_CHECK(err_code);
}
