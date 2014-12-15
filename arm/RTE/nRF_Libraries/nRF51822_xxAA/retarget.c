/* Copyright (c) 2014 Nordic Semiconductor. All Rights Reserved.
 *
 * The information contained herein is property of Nordic Semiconductor ASA.
 * Terms and conditions of usage are described in detail in NORDIC
 * SEMICONDUCTOR STANDARD SOFTWARE LICENSE AGREEMENT.
 *
 * Licensees are granted free, non-transferable use of the information. NO
 * WARRANTY of ANY KIND is provided. This heading must NOT be removed from
 * the file.
 *
 */
 
#include <stdio.h>
#include <stdint.h>
#include "app_uart.h"
#include "nordic_common.h"
#include "nrf_error.h"

struct __FILE 
{
    int handle;
};
FILE __stdout;
FILE __stdin;


#if defined(__CC_ARM)
int fgetc(FILE * p_file)
{
    uint8_t input;
    while (app_uart_get(&input) == NRF_ERROR_NOT_FOUND)
    {
        // No implementation needed.
    }
    return input;
}


int fputc(int ch, FILE * p_file)
{
    UNUSED_PARAMETER(p_file);

    int err_code;
    do
    {
        err_code = app_uart_put((uint8_t)ch);
    } while (err_code != NRF_SUCCESS);
    
    return ch;
}
#elif defined(__GNUC__)


int _write(int file, const char * p_char, int len)
{
    int i;

    UNUSED_PARAMETER(file);

    for (i = 0; i < len; i++)
    {
        UNUSED_VARIABLE(app_uart_put(*p_char++));
    }

    return len;
}


int _read(int file, char * p_char, int len)
{
    int ret_len = len;
    uint8_t input;

    UNUSED_PARAMETER(file);

    while (len--)
    {
        while (app_uart_get(&input) == NRF_ERROR_NOT_FOUND)
        {
            // No implementation needed.
        }
        *p_char++ = input;
    }

    return ret_len;
}
#endif

