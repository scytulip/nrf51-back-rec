#Nordic Semiconductor nRF51822 Firmware for Background Data Recording

## Design Objective

This firmware is designed for low-cost long-time low-power unattended data recording. 
* Low-cost: All collected data is preserved in nRF51822, sharing the FLASH memory with the SoftDevice and the program. 
* Unattended: The firmware executes automatic data collection and preservation until data memory area in the FLASH is full.
* Low-power: The firmware automatically turns off BLE and redundant hardware to extend battery life.

BLE Link could be intentionally enabled to transfer data. When a BLE connection is created, the firmware will report the data reading through BLE Heart Rate Monitor (HRM) service to the central device instantly. If a file transfer command is issued by the central device. The firmware will stop data recording and start the file transfer. After the transfer is finished, the central device should issue a resume command to restart data recording.

This demo version implements a MAXIM DS1621+ I2C interface temperature sensor as the data source for temperature collection. You can modify it for any other purpose.

## Function Description

#### Sleep Mode
* After the first power cycle (the battery is replaced or the *RESET* button is pressed), both *LED0* and *LED1* are ON for a short time to initialize the firmware, and then turn OFF. System goes into the **Sleep Mode**.
* Power OFF
  * When the device is activated (not in the **Sleep Mode**), pushing and holding *BUTTON 0* can put the device into the **Sleep Mode**. Both *LED0* and *LED1* are ON if the button is recognized.
  * When the device is activated (not in the **Sleep Mode**), pushing and holding *BUTTON 1* can clear the data memory in the FLASH and then put the device into the **Sleep Mode**. Both *LED0* and *LED1* are ON if the button is recognized.

#### Recording Mode
* Press *BUTTON 0* to activate the device. When activated, both of *LED0* and *LED1* may flash. The firmware is in **Recording Mode**.
  * If only LED0 is flashing, data is being recorded.
  * If both LED0 and LED1 are flashing alternatively, recording is not going on and the data memory in the FLASH is full.
* In the **Recording Mode**, click *BUTTON 0* to turn on the **BLE Discovery Mode**.
  
#### BLE Discovery Mode
* In the **BLE Discovery Mode**, *LED0* keeps ON and *LED1* keeps OFF.
  * If BLE is not connected in `APP_ADV_TIMEOUT_IN_SECONDS` seconds, the firmware will disable the BLE and goes back to **Recording Mode**.
  * If BLE is connected, the firmware enters the **BLE Connected Mode**.
* At any time in the **BLE Discovery Mode**, click *BUTTON 0* to return back to the **Recording Mode**.
  
#### BLE Connected Mode
* In the **BLE Connected Mode**, *LED0* will go OFF and *LED1* keeps ON. Several BLE services can be accessed.
  * By default, collected data is sent instantly through the BLE Heart Rate Monitor service (even it's temperature data) to be visualized on a central device. In this case, the background recording is still in progress.
  * If a file transfer command is issued by the central, background recording will be stopped and the content of the data memory in the FLASH will be sent through Nordic BLE UART service. It takes some time to finish. After the transfer, the firmware will wait for a resume command to restart background recording.
  * If BLE is disconnected at any time, the firmware will go back to the **Recording Mode**.
* At any time in the **BLE Connected Mode**, click *BUTTON 0* to disconnect and return back to the **Recording Mode**.


## Firmware Information

#### Development Environment
* Evaluation Kit:  PCA 10001 V2.2.0 2014.15
* SoftDevice:      S110-SD-v7 7.1.0
* SDK:             nrf51 SDK v6.1.0

#### Hardware Configuration
* Pin Map

| Pin # | Connection |
|-------|------------|
|  8    | UART RTS   |
|  9    | UART TX    |
|  10   | UART CTS   |
|  11   | UART RX    |
|  16   | BUTTON 0   |
|  17   | BUTTON 1   |
|  18   | LED 0      |
|  19   | LED 1      |
|  20   | I2C SDA    |
|  21   | I2C SCL    |

