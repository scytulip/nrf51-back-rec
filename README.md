#Nordic Semiconductor nRF51822 Firmware for background data recording

## Design Objective

This firmware is designed for long-time low-power low-cost unattended data recording. This demo version implements a MAXIM DS1621+ I2C interface temperature sensor as the data source for temperature collection. All collected data is preserved in nRF51822, sharing the FLASH memory with the SoftDevice and the program. 

BLE Link could be temporarily enabled to transfer data. 

## Functional Description

### SLEEP MODE
* After the first power cycle (the battery is replaced or the RESET button is pressed), both *LED0* and *LED1* are ON for a short time to initialize the firmware, and then turn OFF. System goes into *SLEEP MODE*.
* Power OFF
	* When the device is activated (not in the *SLEEP MODE*), pushing and holding *BUTTON 0* can put the device into the *SLEEP MODE*. Both *LED0* and *LED1* are ON if the button is recognized.
	* When the device is activated (not in the *SLEEP MODE*), pushing and holding *BUTTON 1* can clear the FLASH memory and then put the device into the *SLEEP MODE*. Both *LED0* and *LED1* are ON if the button is recognized.

### RECORDING MODE
* Press *BUTTON 0* to activate the device. When activated, both of *LED0* and *LED1* may flash. The firmware is in *RECORDING MODE*.
  * If only LED0 is flashing, data is being recorded.
  * If both LED0 and LED1 are flashing alternatively, recording is not going on and the internal FLASH memory is full.
* In the *RECORDING MODE*, click *BUTTON 0* to turn on *BLE DISCOVERY MODE*.
  
### BLE DISCOVERY MODE
* In the *BLE DISCOVERY MODE*, *LED0* keeps ON and *LED1* keeps OFF.
  * If BLE is not connected in `APP_ADV_TIMEOUT_IN_SECONDS` seconds, the firmware will disable the BLE and goes back to *RECORDING MODE*.
  * If BLE is connected, the firmware enters *BLE CONNECTED MODE*.
* At any time in the *BLE DISCOVERY MODE*, click *BUTTON 0* to return back to the *RECORDING MODE*.
  
### BLE CONNECTED MODE
* In the *BLE CONNECTED MODE*, *LED0* will go OFF and *LED1* keeps ON. Several BLE services can be accessed.
  * By default, collected data is sent instantly through the BLE Heart Rate Monitor service (even it's temperature data) to be visualized on a central device. In this case, the background recording is still in progress.
  * If a file transfer command is received from the central, background recording will be stopped and the content of the data stored in the FLASH memory will be sent through Nordic BLE UART service. It takes some time to finish. After the transfer, the firmware will wait for a resume command to restart  background recording.
  * If BLE is disconnected at any time, the firmware will go back to the *RECORDING MODE*.
* At any time in the *BLE CONNECTED MODE*, click *BUTTON 0* to disconnect and return back to the *RECORDING MODE*.


## Firmware Information

### Development Environment
* Evaluation Kit:  PCA 10001 V2.2.0 2014.15
* SoftDevice:      S110-SD-v7 7.1.0
* SDK:             nrf51 SDK v6.1.0

### Hardware Configuration
* 