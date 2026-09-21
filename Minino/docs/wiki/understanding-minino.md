# Understanding Minino

> This page is the high-level entry point for the product.
> Keep detailed procedures and large references in specialized pages.

## Overview

### What is Minino?

Minino is a multiprotocol and multiband board made for sniffing, communicating with, and attacking IoT (Internet of Things) devices. It integrates an ESP32-C6 with a GPS, a microSD slot, and an OLED display, describing itself as a mini Swiss Army knife for IoT security researchers, developers, and enthusiasts.

### What is it used for?

Minino is used to analyze, test, and interact with nearby wireless devices through seven technologies:

- BLE (tracker scanner for AirTag, SmartTag, Tile, and BLE SPAM)
- Wi-Fi (sniffer, deauthenticator, and attacks)
- Surveillance detection (Flock Safety ALPR, body cams, skimmers)
- Zigbee (sniffer over CLI and spoofing)
- Thread
- Matter
- GPS (WarDriving and evidence logging)

### Main Features

- Compatible with Pycatsniffer of Catsniffer
- Compatible with Wireshark
- WarDriving (Wi-Fi, Zigbee, Thread, BLE, Surveillance)
- Multiprotocol sniffing
- `.pcap` file support on microSD
- File Manager Web
- Open Source
- Open Hardware
- OTA updates

### Product Architecture

The board is built around an ESP32-C6 module with a 2.4 GHz radio shared by Wi-Fi, Bluetooth Low Energy, and IEEE 802.15.4 (Zigbee and Thread). A GPS receiver provides positioning for wardriving, and the microSD slot stores logs and captured packets. The firmware exposes a button-driven menu on the OLED display and a command console over USB serial.

---

## Hardware

Minino is a compact board with an ESP32-C6 module, a USB-C port, an OLED display, a microSD slot, a GPS receiver, an antenna connector, a buzzer, two LEDs, and navigation buttons. It can be powered through USB-C or from a three-AAA battery holder.

For detailed hardware documentation, see [Hardware](hardware.md).

---

## Software & Firmware

Minino runs firmware based on ESP-IDF. The firmware provides the menu system shown on the OLED display, the wireless applications, and a command console over the USB serial connection. Building the firmware requires ESP-IDF version 5.5.1.

For detailed installation, configuration, and firmware information, see [Software & Firmware](software-firmware.md).

---

## Features / Applications

### Wi-Fi Security

The Wi-Fi menu includes wardriving, a real-time sniffer and analyzer, a deauthentication tool, a deauth detector, a denial-of-service attack (CatDoS), an SSID spammer, a captive portal, DroneID scanner and transmitter, a Modbus TCP scanner, and a Flock/ALPR detector.

For details, see [Wi-Fi Security](feature-wifi.md).

### BLE & Trackers

The Bluetooth menu includes a BLE spammer, HID spoofing, an advertisement sniffer with Wireshark streaming, and a dedicated tracker scanner that detects Apple AirTags, Samsung SmartTags, Tiles, and Chipolo devices with RSSI and distance estimation.

For details, see [BLE & Trackers](feature-ble-trackers.md).

### Zigbee

The Zigbee menu includes an IEEE 802.15.4 over-the-air sniffer, end-device spoofing, geotagged wardriving, and frame capture streaming to Wireshark.

For details, see [Zigbee](feature-zigbee.md).

### Thread

The Thread menu includes a Thread network sniffer, multicast and broadcast packet injection, and Wireshark integration.

For details, see [Thread / OpenThread](feature-thread.md).

### GPS & Wardriving

The GPS menu provides geotagged reconnaissance, live location and speed, date and time synchronization, route recording, and satellite status, all logged to the microSD card.

For details, see [GPS & Wardriving](feature-gps-wardriving.md).

---

## CLI / TUI

Minino exposes a command console over the USB serial connection. The console supports tab completion and helps the user configure the device and run applications.

| Command Group        | Purpose                                                |
|----------------------|--------------------------------------------------------|
| System commands      | Device information, restart, and memory status         |
| Wi-Fi commands       | Save access points, configure targets, and run attacks |
| SSID spam commands   | Manage a custom list of SSIDs for the spammer          |
| UART bridge commands | Configure and use the serial bridge                    |
| GATT commands        | Interact with Bluetooth characteristics                |

For complete command syntax, see [Reference](reference.md).

---

## Compatibility

| Category  | Supported / Required                 | Notes                                           |
|-----------|--------------------------------------|-------------------------------------------------|
| Hardware  | Minino version with ESP32-C6         | Board powered from USB-C or three AAA batteries |
| Firmware  | Release series 1.x                   | Built with ESP-IDF 5.5.1                        |
| Software  | ESP-IDF 5.5.1 (to build from source) | A terminal emulator is enough for ordinary use  |
| OS        | Linux, macOS, Windows                | Serial drivers required for the USB connection  |

---

## Related Documentation

- [Hardware](hardware.md)
- [Software & Firmware](software-firmware.md)
- [Getting Started](getting-started.md)
- [Wi-Fi Security](feature-wifi.md)
- [BLE & Trackers](feature-ble-trackers.md)
- [Zigbee](feature-zigbee.md)
- [Thread / OpenThread](feature-thread.md)
- [GPS & Wardriving](feature-gps-wardriving.md)
- [Tutorial](tutorial.md)
- [Reference](reference.md)
- [Troubleshooting](troubleshooting.md)
- [FAQ](faq.md)
- [Resources](resources.md)

> Do not turn this page into a complete manual. Its purpose is to give the user context and guide them to the detailed documentation.
