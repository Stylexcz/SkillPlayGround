# Troubleshooting

This page describes common problems with Minino, starting from an observable symptom and ending with a verifiable resolution.

## OTA update does not work

### Symptoms

An OTA update fails to install, or the board does not have space for the update.

### Possible Causes

OTA updates require the 8 MB flash variant of the ESP32-C6 module. Boards with other memory capacities do not have room for the OTA partitions.

### Solution

Build the firmware without OTA and flash the no-OTA image:

1. Follow the build instructions in [Getting Started](getting-started.md) with OTA disabled.
2. Flash `bootloader.bin` at `0x0`, `partition-table.bin` at `0x8000`, and `minino.bin` at `0x20000`.

### Verification

The device boots the flashed firmware and works normally. The OTA menu item is no longer present.

## Zigbee or Thread pages are not available

### Symptoms

The Zigbee or Thread applications are missing or do not work on the current firmware.

```text
Not available in this beta version: Zigbee components do not work in this beta version of Minino.
```

### Possible Causes

The current beta release disables Zigbee and Thread components. These components are available only in firmware versions prior to `1.1.13.0`.

### Solution

Build and flash firmware from the `1.1.13.0` tag:

1. In a clone of the repository:

```bash
git checkout 1.1.13.0
```

2. Build and flash as described in [Software & Firmware](software-firmware.md).

### Verification

The Zigbee and Thread menu entries appear and their applications run.

## Device not detected on the serial port

### Symptoms

Flashing or connecting with a terminal shows nothing, or the tool reports that the device is not present.

### Possible Causes

The serial port used by the tool does not match the port of the device.

### Solution

1. Identify the serial port of the device:

- Linux: `/dev/ttyUSB0` or `/dev/ttyACM0`
- macOS: `/dev/cu.usbmodemXXXX`
- Windows: `COM1`, `COM2`

2. Set the port, for example:

```bash
export PORT=/dev/ttyUSB0
```

3. Flash or monitor the device using that port.

### Verification

The device appears on the port, the board is detected, and the console responds to `get_chip_info` with the ESP32-C6 chip information.

## The saved access point does not show in the application

### Symptoms

You saved an access point, but the application does not display it and does not connect.

### Possible Causes

The application loaded its access point information before the credentials were saved.

### Solution

Exit the application and enter it again. The application loads the saved access point, tries to connect, and then opens the target configuration screen.

### Verification

The application screen shows the saved network and the connection status.

## SSID spam command rejects a name

### Symptoms

`spam_save` does not accept an SSID name.

### Possible Causes

The SSID name contains spaces or exceeds 13 characters. Names are written without spaces and must not exceed 13 characters.

### Solution

Use a shorter name without spaces, for example:

```text
spam_save --name=NewName "message one, message two"
```

### Verification

`spam_show` lists the saved SSID.

## Build fails with dependency issues

### Symptoms

The build stops with dependency or configuration errors.

### Possible Causes

Stale build files or outdated dependencies in the project.

### Solution

Clean the project and rebuild:

```bash
make clean
make setup
make compile
```

### Verification

The build completes and produces the firmware binaries as described in [Software & Firmware](software-firmware.md).

## Related Documentation

- [Reference](reference.md)
- [Getting Started](getting-started.md)
- [Software & Firmware](software-firmware.md)
- [FAQ](faq.md)
