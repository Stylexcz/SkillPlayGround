# Hardware

## Overview

Minino is a compact experimental board built around the ESP32-C6-WROOM-1U-N8 module. It combines a 2.4 GHz multiprotocol radio, a GPS receiver, a microSD slot, an OLED display, a buzzer, and navigation buttons in a single board. It is designed for wireless security research without requiring an external computer during operation.

## Board Anatomy

The board contains the EPS32-C6 module on the main side, a USB-C connector, a microSD slot, and an I2C OLED display. A U.FL connector provides access to an external antenna. The underside carries the GPS receiver and the battery holder connector.

![Minino board used as the product image in the official repository](https://github.com/ElectronicCats/Minino/assets/107638696/ad4bffb2-d428-439c-b691-60add7cfb9af)

## Main Components

| Component                | Function                       | Notes                                    |
|--------------------------|--------------------------------|------------------------------------------|
| ESP32-C6-WROOM-1U-N8     | Main microcontroller and radio | 2.4 GHz Wi-Fi 6, BLE 5, IEEE 802.15.4    |
| GPS module (ATGM336H)    | Global positioning receiver    | Used for wardriving and evidence logging |
| LNA (AT2659S)            | Low-noise amplifier for GPS    | Improves satellite reception             |
| Regulator (XC6220B331MR) | 3.3 V voltage regulator        | Powers the board logic                   |
| OLED display (SH1106)    | 128 x 64 I2C display           | Menu and application output              |
| microSD slot             | Removable storage              | Logs, captures, and overlay files        |
| Buzzer                   | Sound output                   | Application alerts and feedback          |
| LEDs                     | Light indicators               | Status and alerts                        |

## Specifications

| Parameter         | Value                                   | Description                                     |
|-------------------|-----------------------------------------|-------------------------------------------------|
| Microcontroller   | ESP32-C6-WROOM-1U-N8                    | RISC-V, single core                             |
| Wireless          | 2.4 GHz Wi-Fi 6, BLE 5.0, IEEE 802.15.4 | Wi-Fi, Bluetooth, Zigbee, and Thread            |
| Flash             | 8 MB                                    | Required for OTA updates                        |
| Display           | SH1106 OLED, 128 x 64                   | I2C connection                                  |
| Storage           | microSD                                 | FAT32 formatted by the device                   |
| GPS               | ATGM336H                                | Serial connection, external antenna through LNA |
| USB               | USB-C (USB 2.0)                         | Power and serial console                        |
| Power             | USB-C or 3 x AAA batteries              | 3.3 V regulated supply                          |
| Antenna           | U.FL connector                          | External antenna required                       |
| Buttons           | ON, UP, DOWN, LEFT, RIGHT, RESET, GPIO  | Menu navigation and control                     |

## Pinout

The board exposes connections for power, I2C, UART, and storage. The exact GPIO assignments are defined in the design schematic.

| Interface           | Purpose                | Notes                    |
|---------------------|------------------------|--------------------------|
| UART header (J2)    | Serial bridge          | Pins for UART TXD/RXD    |
| I2C header (J4)     | External I2C bus       | SDA and SCL lines        |
| Battery header (J3) | 3 x AAA battery holder | Power input              |
| microSD slot (J5)   | Storage                | Card detect included     |
| USB-C (P1)          | USB 2.0                | Power and serial console |

## Interfaces and Connectors

### USB-C

The USB-C connector provides power and the serial console connection to a computer. It is the primary interface for configuration commands and for flashing firmware.

### microSD Slot

The microSD slot stores wardriving logs, packet captures, route files, and the signature overlay used by the surveillance detector. The device can format the card to FAT32 from its settings menu.

### OLED Display

The SH1106 OLED display shows the menu tree and the output of the applications. It is driven by the device using I2C.

### Antenna Connector

The U.FL connector allows an external antenna to be attached. The antenna is required for radio operation.

## Indicators and Controls

| Element              | Type                        | Function                      |
|----------------------|-----------------------------|-------------------------------|
| ON button            | Tactile switch              | Power control                 |
| UP / DOWN buttons    | Tactile switch              | Menu navigation               |
| LEFT / RIGHT buttons | Tactile switch              | Menu navigation and selection |
| RESET button         | Tactile switch              | Restart the device            |
| GPIO button          | Tactile switch              | User-assignable input         |
| LEDs                 | Green light-emitting diodes | Status indication             |
| Buzzer               | Electromagnetic             | Audible alerts                |

## Power

The board operates at a regulated 3.3 V. It can be powered either from a USB-C connection or from three AAA batteries inserted in the onboard holder. A 0.5 A fuse protects the power input.

## Schematics

- [KiCad schematic](../../hardware/minino.kicad_sch)
- [Bill of materials](../../hardware/minino.csv)

## Hardware Notes

- The UART and I2C pin headers are marked as not placed (DNP) in the default bill of materials; check your board revision before relying on them.
- OTA updates require the 8 MB flash variant of the module. Boards with other memory capacities should be used with builds compiled without OTA.

## Related Documentation

- [Getting Started](getting-started.md)
- [Software & Firmware](software-firmware.md)
- [Understanding Minino](understanding-minino.md)
- [Resources](resources.md)
