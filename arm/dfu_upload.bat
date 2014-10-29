REM Path to the IronPython
set IPY_PATH="D:\Program Files (x86)\IronPython 2.7"

REM Path to the newest Master Control Panel's dfu script
set MCP_PATH="C:\Program Files (x86)\Nordic Semiconductor\Master Control Panel\3.7.1.8567\lib\dfu"

REM Path to the Keil ARM bin
set KEIL_BIN_PATH="D:\Keil_v5\ARM\ARMCC\bin"

REM Convert .axf to .bin
%KEIL_BIN_PATH%\fromelf.exe --bin --output %1 %2

REM Upload through BLE DFU
REM Modify the device address after "--address"
REM C: is the hard drive where MCP is installed
C:
cd %MCP_PATH%
%IPY_PATH%\ipy.exe main.py --mode APPLICATION --address E4E2CBE02577 --file %1