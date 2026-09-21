# Zigbee

## Overview

### What is it?

The Zigbee menu of Minino groups the applications that interact with IEEE 802.15.4 Zigbee networks, using the same 2.4 GHz radio as Wi-Fi and Bluetooth.

### What does it do?

Minino can sniff Zigbee traffic over the air, emulate Zigbee end devices such as smart light bulbs and switches, capture geotagged network information, and stream frames to Wireshark.

## Requirements

### Hardware

- Minino board with antenna connected
- microSD card for wardriving logs
- GPS fix (from the onboard GPS) for geotagged data

### Software

- Minino firmware release series 1.x
- [Wireshark](https://www.wireshark.org/) for live frame capture

### Firmware

- Minino firmware release series 1.x

## Configuration

The Zigbee applications run from the device menu. The command-line interface for Zigbee (ZCL, ZDO, and network commands) must be enabled from **Settings > ZB CLI**.

> [!WARNING]
> If you want to use the Zigbee applications, disable the ZB CLI before opening an application such as the sniffer. The CLI and the applications cannot run at the same time.

## Usage

### Zigbee Sniffer

The sniffer captures IEEE 802.15.4 packets over the air. Open **Applications > Zigbee > Sniffer** and select the channel to monitor.

### Zigbee Spoofing

The spoofer emulates Zigbee end devices, such as smart light bulbs and switches, to interact with a nearby network as another device.

### Zigbee Wardriving

Wardriving performs geotagged Zigbee network reconnaissance, storing the discovered networks with GPS coordinates on the microSD card.

### Wireshark Integration

Zigbee frame capture can stream to Wireshark for detailed protocol analysis.

## Example

Inspect the status of a Zigbee light from the ZB CLI:

1. Enable the ZB CLI from **Settings > ZB CLI**.
2. Create a light data model:

```bash
zha add 1 on_off_light
dm register
```

3. Form a network and open it for joining:

```bash
bdb_comm start form
network open -t 200
```

## Expected Result

The sniffer displays the captured Zigbee frames, and wardriving writes geotagged network data to the microSD card. In the CLI example, the switch can control the light status changes, which you can verify by reading the light attribute again.

## Limitations

> [!WARNING]
> Zigbee components do not work in the current beta release of Minino. They are available only in firmware versions prior to `1.1.13.0`. To use them, check out the `1.1.13.0` tag and build that version.

- Zigbee operates on the 2.4 GHz band only.

## Related Documentation

- [Reference](reference.md)
- [Thread / OpenThread](feature-thread.md)
- [Troubleshooting](troubleshooting.md)
- [Understanding Minino](understanding-minino.md)

> Keep this page focused on understanding and using the feature. Move long task-oriented procedures to Tutorials.
