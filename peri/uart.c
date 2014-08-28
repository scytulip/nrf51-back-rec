#include <stdint.h>
#include <stdio.h>

#include "uart.h"
#include "nrf.h"
#include "nrf_gpio.h"

#include "softdevice_handler.h"

#pragma import(__use_no_semihosting_swi)

struct __FILE { int handle; };
FILE __stdout = { UART_WIRE_OUT };		/**< File handle (output) for UART */

static uint8_t uart_tx_busy = 0;  /**< indication to the state of UART TX module */

/************************************************************
 * Retarget printf
 ***********************************************************/

/** @brief Print a char to UART */
int fputc(int c, FILE *f) 
{
	switch ( f->handle )
	{
		case UART_WIRE_OUT :
		{
			/** @note stdout is UART0 */
			uart_tx_busy = 1;
			NRF_UART0->TXD = (uint8_t) c;
			while (uart_tx_busy);
			break;
		}
	}
	return 0;
}

/** @brief printf error handle */
int ferror(FILE *f)
{
	return EOF;
}

/** @brief printf tty handle */
void _ttywrch(int c) 
{
	uart_tx_busy = 1;
	NRF_UART0->TXD = (uint8_t) c;
	while (uart_tx_busy);
}

/** @brief printf handle */
void _sys_exit(int return_code) {
	label:  goto label;  /* endless loop */
}

/************************************************************
 * Operation Function
 ***********************************************************/

/** @brief Print a string to UART terminal */
void uart_putstr(const uint8_t *str)
{
	uint_fast8_t	i = 0;
	uint8_t			ch = str[i++];
	
	while (ch != '\0')
	{
		uart_tx_busy = 1;
		NRF_UART0->TXD = (uint8_t) ch;
		ch = str[i++];
		while (uart_tx_busy);
	}

}

/************************************************************
 * IRQ Handlers
 ***********************************************************/
 
/**@brief UART0 IRQ handler
 */
void UART0_IRQHandler(void)
{
	if (NRF_UART0->EVENTS_TXDRDY == 1)
	{
		uart_tx_busy = 0;
		NRF_UART0->EVENTS_TXDRDY = 0;
	}
}

/************************************************************
 * Initialization
 ***********************************************************/

/**@brief Function for initializing UART operation */
void uart_init(void)
{
	
	uint32_t err_code;
	
	// Pin and mode setup
	nrf_gpio_cfg_output(TX_PIN_NO);
	nrf_gpio_cfg_input(RX_PIN_NO, NRF_GPIO_PIN_NOPULL);
	
	NRF_UART0->PSELTXD = TX_PIN_NO;
	NRF_UART0->PSELRXD = RX_PIN_NO;
	
	if (HW_FLOWCTRL)
	{
		nrf_gpio_cfg_output(RTS_PIN_NO);
        nrf_gpio_cfg_input(CTS_PIN_NO, NRF_GPIO_PIN_NOPULL);
		
		NRF_UART0->PSELRTS = RTS_PIN_NO;
        NRF_UART0->PSELCTS = CTS_PIN_NO;
        
        NRF_UART0->CONFIG  = (UART_CONFIG_HWFC_Enabled << UART_CONFIG_HWFC_Pos);
	}
	
	// Enable interruption
	NRF_UART0->INTENSET = UART_INTENSET_TXDRDY_Msk; /**< Turn on TX Ready interruption */
	NRF_UART0->BAUDRATE = (UART_BAUDRATE_BAUDRATE_Baud38400 << UART_BAUDRATE_BAUDRATE_Pos);
	NRF_UART0->ENABLE = (UART_ENABLE_ENABLE_Enabled << UART_ENABLE_ENABLE_Pos);

    err_code = sd_nvic_ClearPendingIRQ(UART0_IRQn);
    APP_ERROR_CHECK(err_code);

    err_code = sd_nvic_SetPriority(UART0_IRQn, NRF_APP_PRIORITY_LOW);
    APP_ERROR_CHECK(err_code);

    err_code = sd_nvic_EnableIRQ(UART0_IRQn);
    APP_ERROR_CHECK(err_code);
	
	NRF_UART0->TASKS_STARTTX = 1;
}

