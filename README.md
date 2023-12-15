# Zigbee OTA #

## Summary ##

This project demonstrates the Over-The-Air (OTA) update functionality in a Zigbee network, showcasing how to execute firmware upgrades on various Zigbee devices. The setup includes a Zigbee Coordinator with OTA server functionality, a Zigbee Router, and a Zigbee Sleepy End Device, both with OTA client functionality. The Zigbee Coordinator operates in a Host-NCP setup, using a Raspberry Pi 4b+ as the Host and a Silicon Labs xG21 BRD4180B as the NCP. The Zigbee Router and Sleepy End Device use the Silicon Labs xG24 BRD2601B. The demonstration follows the typical Zigbee OTA upgrade process, adapted for Silicon Labs devices.

## Gecko SDK Version ##

- Developed and tested on:
  - GSDK v4.3.2 [(release note)](https://www.silabs.com/documents/public/release-notes/gecko-platform-release-notes-4.3.2.0.pdf)
  - Zigbee Stack v7.3.2.0 [(release note)](https://www.silabs.com/documents/public/release-notes/emberznet-release-notes-7.3.2.0.pdf).

## Hardware Required ##

- **Zigbee Coordinator (Host-NCP):**
  - Raspberry Pi 4b+ as Host
  - Silicon Labs xG21 BRD4180B as NCP
- **Zigbee Router and Sleepy End Device:**
  - Silicon Labs xG24 BRD2601B for both roles

## Setup ##

- Ensure all devices have the appropriate **Bootloader Firmware** flashed.
- Follow similar setup procedures as in the provided template, with modifications to accommodate the specifics of this project (link to detailed steps or guide).

## Operation ##

Describe the step-by-step procedure for the OTA update process, including preparing the devices, initiating the OTA process, and verifying successful updates. 

## Troubleshooting ##

Include common troubleshooting steps or potential issues specific to the OTA process in this setup.

## References ##

- OTA Bootloader Server and Client Setup in Zigbee [(AN1384)](https://www.silabs.com/documents/public/application-notes/an1384-ota-bootloader-server-client-setup-zigbee-7.pdf)

- Relevant Zigbee specifications or Silicon Labs documentation.
- Any additional resources used in the project.