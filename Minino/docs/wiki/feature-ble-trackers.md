# BLE & Trackers

## Overview

### What is it?

The Bluetooth menu of Minino groups the applications that interact with Bluetooth Low Energy (BLE) devices, from flooding advertisement popups to detecting personal trackers.

### What does it do?

Minino can flood BLE advertisement popups, emulate human interface devices, sniff raw advertisements, and scan for nearby personal trackers such as Apple AirTags, Samsung SmartTags, Tiles, and Chipolo devices.

## Requirements

### Hardware

- Minino board with antenna connected

### Software

- Minino firmware release series 1.x
- [Wireshark](https://www.wireshark.org/) for BLE packet capture over serial

### Firmware

- Minino firmware release series 1.x

## Configuration

The BLE applications run from the device menu. The BLE advertisement sniffer streams packets over the serial connection, so connect the board to a computer and open Wireshark to see the frames.

## Usage

### BLE Spammer

The BLE spammer floods the air with advertisement popups targeting iOS (Apple), Android, Windows, and Samsung devices. Use it to test how nearby devices react to unsolicited notifications.

### BLE HID Spoofing

The HID spoofer emulates Bluetooth Human Interface Devices such as a keyboard, a mouse, or a media remote. Use it to experiment with HID-based interaction without physical hardware.

### BLE ADV Sniffer

The advertisement sniffer captures raw BLE advertising packets and streams them to Wireshark over the serial connection for real-time analysis.

### BLE Trackers Scanner

The tracker scanner detects and tracks nearby BLE beacons:

- **Supported ecosystems:** Apple Find My / AirTags, Samsung Galaxy SmartTag / SmartTag2, Tile (Mate, Pro, Slim), and Chipolo.
- **Proximity and signal monitoring:** real-time RSSI tracking, proximity approximation, and packet reception rates.
- **Detailed inspection:** live view of the device MAC address, manufacturer payload, registered status, and last-seen timestamps.
- **Paging and filtering:** navigate across multiple active trackers in range.

## Example

Run the tracker scanner:

1. Open **Applications > Bluetooth > Trackers Scan**.
2. Place a supported tracker within a few meters.
3. The list shows the detected tracker with its name and RSSI.
4. Move the tracker and confirm the RSSI value changes.

## Expected Result

The scanner lists the supported trackers in range and keeps their signal strength updated in real time. The advertisement sniffer streams BLE frames to Wireshark when it is connected.

## Limitations

- The trackers scanner recognizes the documented ecosystems only; other BLE beacons are not identified as trackers.
- BLE works on the 2.4 GHz band, so coverage is limited by the antenna and the environment.

## Related Documentation

- [Reference](reference.md)
- [Understanding Minino](understanding-minino.md)
- [Troubleshooting](troubleshooting.md)

> Keep this page focused on understanding and using the feature. Move long task-oriented procedures to Tutorials.
