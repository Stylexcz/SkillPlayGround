# FAQ

## What can Minino do?

Minino works as a multiprotocol security research tool across seven technologies: BLE, Wi-Fi, surveillance detection, Zigbee, Thread, Matter, and GPS. It can sniff traffic, inject packets, scan for devices, and log geotagged evidence to a microSD card.

## Do I need to build the firmware myself?

No. Release builds are published on the [official repository](https://github.com/ElectronicCats/Minino). You only need ESP-IDF 5.5.1 and Make if you want to build the firmware from source.

## Can I update the firmware over the air?

Yes. The About menu includes an OTA firmware update option over Wi-Fi. OTA requires the 8 MB flash variant of the module.

## Which trackers does the BLE scanner detect?

The scanner detects Apple AirTags, Samsung Galaxy SmartTag and SmartTag2, Tile (Mate, Pro, Slim), and Chipolo devices, with RSSI signal tracking and distance estimation.

## Is Zigbee or Thread supported in the current release?

The current beta release disables Zigbee and Thread components. They are available only in firmware versions prior to `1.1.13.0`. See [Zigbee](feature-zigbee.md) and [Thread / OpenThread](feature-thread.md).

## How do I use the console?

Connect the board over USB and open a terminal emulator on the serial port at `115200` baud. Type `help` to list the commands. See the [Reference](reference.md).

## Compatibility

### Which operating systems are supported?

Linux, macOS, and Windows. You only need a terminal emulator for ordinary use; building from source requires the ESP-IDF toolchain.

### What firmware is required?

Minino firmware release series 1.x, built with ESP-IDF 5.5.1.

## Requirements

### How is the board powered?

From the USB-C connection or from three AAA batteries in the onboard battery holder.

### Do I need a microSD card?

For wardriving, captures, routes, and the signature overlay, yes. The device can format the card to FAT32 from the settings menu.

### Do I need a GPS fix for wardriving?

Yes. The wardriving features store GPS coordinates, so the device needs a clear view of the sky.

## Limitations

### Is Matter fully supported?

Matter protocol support, the Matter CLI, and Matter spoofing are planned features, not yet working.

### Does Wireshark work with all protocols?

BLE captures stream to Wireshark, as do Zigbee and Thread captures. Wi-Fi Wireshark integration is a planned feature.

### Are there power saving modes?

Light sleep mode is available; deep sleep mode is planned.

## Related Documentation

- [Getting Started](getting-started.md)
- [Understanding Minino](understanding-minino.md)
- [Reference](reference.md)
- [Troubleshooting](troubleshooting.md)

> Keep FAQ answers concise. Move long procedures to the appropriate specialized page.
