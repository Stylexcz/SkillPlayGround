# Thread / OpenThread

## Overview

### What is it?

The Thread menu of Minino groups the applications that interact with Thread networks, the IP-based mesh protocol that runs over the IEEE 802.15.4 radio.

### What does it do?

Minino can sniff Thread network packets, inject multicast and broadcast packets into a Thread network, and stream captures to Wireshark.

## Requirements

### Hardware

- Minino board with antenna connected
- A Thread network to capture or inject into

### Software

- Minino firmware release series 1.x
- [Wireshark](https://www.wireshark.org/) for live frame capture
- Optional: an OpenThread Border Router and an OpenThread end device for the examples in the developer guide

### Firmware

- Minino firmware release series 1.x

## Configuration

The Thread applications run from the device menu. OpenThread command examples for a Border Router and an end device are documented in the [developer guide](../../firmware/README.md).

## Usage

### Thread Sniffer

The sniffer captures IEEE 802.15.4 / 6LoWPAN Thread network packets over the air. Open **Applications > Thread > Sniffer** and select the channel to monitor.

### Thread Broadcast

The broadcast application injects multicast and broadcast packets into Thread networks. Use it to test how devices react to injected traffic.

### Wireshark Integration

Thread frame capture streams to Wireshark for detailed protocol analysis.

## Example

From the OpenThread Border Router CLI, create a fresh network and start the Thread service:

```bash
dataset init new
dataset
dataset commit active
ifconfig up
thread start
state
```

The device state changes to `leader` when the network is ready.

## Expected Result

The sniffer displays captured Thread frames, and the broadcast application sends the injected packets into the selected network. In the Border Router example, the device reaches the `leader` state and the network is ready.

## Limitations

> [!WARNING]
> Thread / OpenThread components do not work in the current beta release of Minino. They are available only in firmware versions prior to `1.1.13.0`. To use them, check out the `1.1.13.0` tag and build that version.

- Geotagged Thread wardriving is a planned feature, not yet working.

## Related Documentation

- [Zigbee](feature-zigbee.md)
- [Reference](reference.md)
- [Troubleshooting](troubleshooting.md)
- [Understanding Minino](understanding-minino.md)

> Keep this page focused on understanding and using the feature. Move long task-oriented procedures to Tutorials.
