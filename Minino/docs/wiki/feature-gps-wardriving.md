# GPS & Wardriving

## Overview

### What is it?

Minino integrates a GPS receiver and a wardriving feature that stores geotagged reconnaissance of Wi-Fi, Zigbee, and Thread networks on the microSD card.

### What does it do?

The GPS menu provides live positioning data, and the wardriving feature combines that position with wireless network discovery to build a log you can analyze later or upload to services such as WiGLE.

## Requirements

### Hardware

- Minino board with antenna connected
- microSD card for the logs
- A clear view of the sky for a GPS fix

### Software

- Minino firmware release series 1.x
- Optional: a CSV viewer or WiGLE for analyzing the logs

### Firmware

- Minino firmware release series 1.x

## Configuration

Insert a microSD card formatted as FAT32. The device can check the card format and format it from **Settings > SD Card Settings**.

The wardriving applications run from the device menu. GPS-based readings require that the GPS acquires a satellite fix, which normally takes a few seconds outdoors.

## Usage

### GPS Applications

- **Location:** displays real-time latitude, longitude, and altitude.
- **Speed:** displays ground speed in km/h and heading direction.
- **Date & Time:** uses the GPS time as an atomic clock reference and updates the device RTC.
- **Route:** records the route and waypoints to the microSD card (`.gpx` / `.csv`).
- **Num Sats:** displays the active satellite constellation and SNR signal quality.

### Wardriving

Wardriving runs from **Applications > WiFi > Wardriving** for Wi-Fi, and similarly for Zigbee and Thread. It writes one CSV row per detected network with the current GPS coordinates.

## File Formats

Wi-Fi wardriving rows follow the WigleWifi layout:

```text
MAC,SSID,AuthMode,FirstSeen,Channel,Frequency,RSSI,CurrentLatitude,CurrentLongitude,AltitudeMeters,AccuracyMeters,RCOIs,MfgrId,Type
```

Example row:

```csv
84:d8:1b:9f:6f:cc,Hacknet_EXT,WPA_WPA2_PSK,2025-1-24 20:8:18,5,2432,-28,20.644129,-100.461815,1892.849976,1.500000,,,WIFI
```

Thread rows include the destination PAN, addresses, and protocol:

```csv
DestinationPAN,Destination,ExtendedSource,Channel,UDPSource,UDPDestination,Protocol,CurrentLatitude,CurrentLongitude,AltitudeMeters,AccuracyMeters,RCOIs,MfgrId,Type
0xb24b,0xffff,ae:27:c5:e6:1e:d7:3c:e3,11,19788,19788,MLE,4.130068,4.130068,0.000000,1.500000,,,Thread
```

Zigbee rows include the source PAN, addresses, and frame type with `Type=Zigbee`.

## Example

Run a short Wi-Fi wardriving capture:

1. Insert a microSD card and go outdoors.
2. Open **Applications > WiFi > Wardriving**.
3. Wait until the screen shows satellite count and the log indicator.
4. Walk along a short route and then exit the application.

## Expected Result

The microSD card contains a CSV log with one row per detected access point, each including the GPS coordinates captured during the walk.

## Limitations

- GPS requires a clear view of the sky; indoor readings are unreliable.
- A microSD card is required to store the logs.
- Wi-Fi, Zigbee, and Thread operate on the 2.4 GHz band, so 5 GHz networks are not logged.

## Related Documentation

- [Wi-Fi Security](feature-wifi.md)
- [Tutorial](tutorial.md)
- [Reference](reference.md)
- [Understanding Minino](understanding-minino.md)

> Keep this page focused on understanding and using the feature. Move long task-oriented procedures to Tutorials.
