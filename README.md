# Zigbee OTA #

## Summary ##

This project demonstrates the Over-The-Air (OTA) update functionality in a Zigbee network, showcasing how to execute firmware upgrades on various Zigbee devices over the network. The setup includes a Zigbee Gateway with OTA server functionality, a Zigbee Router, and a Zigbee Sleepy End Device (SED), both with OTA client functionality.

TODO

The Zigbee Router and the Zigbee Sleepy End Device (SED) is upgraded with the OTA images that are available on the Zigbee Gateway OTA Server.

The Zigbee Gateway operates in a Host-NCP setup, using a Raspberry Pi 4B+ as the Host and a Silicon Labs xG21 BRD4180B as the NCP. The Zigbee Router and Sleepy End Device use the Silicon Labs xG24 BRD2601B.

The demonstration follows the typical Zigbee OTA upgrade process, adapted for Silicon Labs devices.

To verify if the firmwware upgrade was successful based on the firmware version when the router 

## Gecko SDK Version ##

- Developed and tested on:
  - GSDK v4.3.2 [(release note)](https://www.silabs.com/documents/public/release-notes/gecko-platform-release-notes-4.3.2.0.pdf)
  - Zigbee Stack v7.3.2.0 [(release note)](https://www.silabs.com/documents/public/release-notes/emberznet-release-notes-7.3.2.0.pdf).

## Hardware Required ##

- **Zigbee Gateway (Host-NCP):**
  - Raspberry Pi 4b+ as Host with Raspbian GNU/Linux 12 (bookworm)
  - Silicon Labs xG21 BRD4180B as NCP using UART
- **Zigbee Router and Sleepy End Device:**
  - Silicon Labs xG24 BRD2601B in SoC mode

## Setup ##

- Ensure all devices have the appropriate **Bootloader Firmware** flashed. Typical Bootloader used for Zigbee projects - `Bootloader - NCP UART XMODEM` (NCP) and `Bootloader - SoC Internal Storage` (SoC)

- Run Host with NCP Command: `sudo ./Z3Gateway_OTA_Server -p /dev/ttyACM0`

- Create a network using the Z3Gateway
- Open the Z3Gateway Network with open security for demonstration purposes only. For production networks, open security should **not** be used due to security vulnerability.  

- The Router project is created from Z3Light example available in the GSDK.
- For the Router project:
  - Setup Bootloader slot
  - OTA Components
  - OTA EEPROM First Slot
  - Internal Bootloader with Single Slot
  - OTA Bootload Cluster Client Policy
  - Image Type ID: 11 - Router

- Join the router to the open network created by the Gateway

- Create a new firware image for the Router with a newer firmware version.

- Create the .gbl file for the Router project using the command: `commander.exe gbl create .\Z3Light_Router.gbl --app .\Z3Light_Router.s37`

- Create the OTA file for the firmware using the .gbl file created in the previous step. The Simplicity Command can be used to create the .ota file for the project. 
`commander ota create --upgrade-image ./Z3Light_Router_FW_v1.gbl --firmware-version 1 --manufacturer-id 0x1002 --image-type 11 --string "Router_FW_v1" -o ./Z3Light_Router_FW_v1.ota`

- Change the firmware version to 5 of the Router from the Router component called "OTA Bootload Cluster Client Policy".

- Generate the .gbl and .ota files for the new firmware version v5.

`commander.exe gbl create .\Z3Light_Router_FW_v5.gbl --app .\Z3Light_Router.s37`

`commander ota create --upgrade-image ./Z3Light_Router_FW_v5.gbl --firmware-version 5 --manufacturer-id 0x1002 --image-type 11 --string "Router_FW_v5" -o ./Z3Light_Router_FW_v5.ota`

- Copy the Router v5 firmware .ota file to the "/Z3Gateway_OTA_Server/build/debug/ota-files/" directory.

- Reboot the Z3Gateway_OTA_Server on the Rpi for the Server to detect the new OTA FW.  

- The SED project is created from the ... TODO
  - Image Type ID: 22 - SED

  - Flash the SED FW 1 to the device

  - Start the OTA State machine using the command `plugin ota-client start`

  - This should start the query from the SED OTA Client.

  - Create the .gbl and the .ota files for the FW v1 of the SED using the following commands:
    - `commander.exe gbl create .\Z3Switch_SED_FW_v1.gbl --app .\Z3Switch_SED.s37`

    - `commander ota create --upgrade-image ./Z3Switch_SED_FW_v1.gbl --firmware-version 1 --manufacturer-id 0x1002 --image-type 22 --string "SED_FW_v1" -o ./Z3Switch_SED_FW_v1.ota`

  - Create the .gbl and the .ota files for the FW v5 of the SED using the following commands:
    
    - `commander.exe gbl create .\Z3Switch_SED_FW_v5.gbl --app .\Z3Switch_SED.s37`  

    - `commander ota create --upgrade-image ./Z3Switch_SED_FW_v5.gbl --firmware-version 5 --manufacturer-id 0x1002 --image-type 22 --string "SED_FW_v5" -o ./Z3Switch_SED_FW_v5.ota`

  - Copy the SED FW v5 to the OTA files directory of the Z3Gateway_OTA_Server on Rpi and restart the Gateway to reload the OTA upgrade images.

  - The SED should start downloading the v5 firmware images after it's next query to the Gateway (2 min query period).

  - Once the SED finishes downloading the upgrade image, it will ask the Gateway if it should apply the new downloaded image and since the Gateway policy is set to upgrade now, the SED will start applying the new upgrade image it downloaded.

## Operation ##

Describe the step-by-step procedure for the OTA update process, including preparing the devices, initiating the OTA process, and verifying successful updates.

## Troubleshooting ##

Include common troubleshooting steps or potential issues specific to the OTA process in this setup.

## References ##

- OTA Bootloader Server and Client Setup in Zigbee [(AN1384)](https://www.silabs.com/documents/public/application-notes/an1384-ota-bootloader-server-client-setup-zigbee-7.pdf)

- UG162: Simplicity Commander Reference Guide [UG162 Link](https://www.silabs.com/documents/public/user-guides/ug162-simplicity-commander-reference-guide.pdf)


- Relevant Zigbee specifications or Silicon Labs documentation.
- Any additional resources used in the project.