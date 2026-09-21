# Wi-Fi Security

## Overview

### What is it?

The Wi-Fi menu of Minino groups the applications that analyze, test, and attack nearby Wi-Fi traffic on the 2.4 GHz band.

### What does it do?

Minino can geotag access points, capture traffic, inject deauthentication frames, detect active deauth attacks, flood the airwaves with beacons, run a rogue captive portal, decode drone Remote ID signals, and scan industrial Modbus TCP endpoints.

## Requirements

### Hardware

- Minino board with antenna connected
- microSD card for saves and captures
- GPS fix (from the onboard GPS) for geotagged data

### Software

- Minino firmware release series 1.x
- Optional: [Wireshark](https://www.wireshark.org/) has Wireshark integration planned for Wi-Fi captures

### Firmware

- Minino firmware release series 1.x

## Configuration

### Save a Wi-Fi Network

Some applications connect to a network before running. Save the credentials from the console:

```bash
save YOUR_NETWORK_NAME YOUR_PASSWORD
```

The device then tries to connect to the access point.

### Configure a Web Target

The CatDoS application targets a web server. Configure it from the console:

```bash
web_config TARGET_IP TARGET_PORT TARGET_PATH
```

## Usage

### Wardriving

Wardriving discovers nearby Wi-Fi access points and stores them with GPS coordinates on the microSD card. Open **Applications > WiFi > Wardriving** and walk or drive with a clear view of the sky.

### Wi-Fi Sniffer / Analyzer

The sniffer monitors 2.4 GHz channel traffic in real time and shows a summary of nearby access points. Use it to inspect the networks present in your area.

### Wi-Fi Deauther

The deauther injects 802.11 deauthentication frames to disconnect a target device from its network. Select the target from the device menu.

### Deauth Detector

The detector listens continuously and reports active deauthentication attacks in the area. It does not transmit anything.

### CatDoS

CatDoS performs wireless denial of service and beacon flooding against a configured target.

### SSID Spammer

The SSID spammer broadcasts thousands of fake access points simultaneously. Manage the list of names from the console:

```bash
spam_save --name=NewName "Never gonna give you up, Never gonna let you down"
spam_show
spam_delete 0
```

Each comma in the saved text creates a separate message.

### Captive Portal

The captive portal runs a rogue access point with a web server. Use it to test how clients interact with a captive network. You can load your own HTML portal from the microSD card.

### DroneID Scanner and Transmitter

The scanner listens for and decodes ASTM F3411 Remote ID drone telemetry, including GPS location. The transmitter broadcasts simulated Remote ID beacons for testing.

### Modbus TCP Scanner

The Modbus TCP application scans industrial IoT and SCADA endpoints for the Modbus TCP protocol.

### Flock / ALPR Detector

The detector recognizes Flock Safety ALPR cameras, body cameras, and skimmers using Wi-Fi and BLE signatures. See [Surveillance Detection Details](#flock--alpr-detector).

## Example

Run the deauth detector to confirm the Wi-Fi monitor mode is working:

1. Open **Applications > WiFi > Deauth Scan**.
2. The screen shows the monitor status and any detected attacks.

## Expected Result

The selected application runs on the OLED display. Wardriving and captures write their results to the microSD card, while the analyzer shows nearby networks in real time.

## Limitations

- Wireshark integration for Wi-Fi captures is listed as a planned feature, not yet working.
- The SSID spammer stores each SSID name without spaces, up to 13 characters; the saved message list supports up to 1024 characters.
- Wi-Fi operates on the 2.4 GHz band only; 5 GHz networks are not covered.

## Related Documentation

- [GPS & Wardriving](feature-gps-wardriving.md)
- [Reference](reference.md)
- [Tutorial](tutorial.md)
- [Troubleshooting](troubleshooting.md)

> Keep this page focused on understanding and using the feature. Move long task-oriented procedures to Tutorials.
