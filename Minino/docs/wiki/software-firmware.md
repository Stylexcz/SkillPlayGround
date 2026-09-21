# Software & Firmware

## Overview

Minino runs firmware based on the ESP-IDF development framework. The firmware provides the button-driven menu shown on the OLED display, the wireless applications, the console commands, the web file browser, and over-the-air (OTA) updates. All software and firmware for Minino is open source.

## Requirements

### Software

- A terminal emulator to use the serial console
- [ESP-IDF v5.5.1](https://docs.espressif.com/projects/esp-idf/en/v5.5.1/esp32/get-started/index.html) to build the firmware from source
- [Make](https://www.gnu.org/software/make/) to use the provided build commands
- [Python](https://www.python.org/) and `esptool` to flash using command-line tools

### Firmware

- Minino firmware release series 1.x, or a build you create from source

### Operating System

- Linux, macOS, or Windows

## Official Tools

| Tool      | Purpose                                                             | Status  |
|-----------|---------------------------------------------------------------------|---------|
| ESP-IDF   | Official Espressif development framework used to build the firmware | Current |
| Make      | Build automation for the provided commands                          | Current |
| `esptool` | Flash the firmware over USB                                         | Current |

> Prefer currently supported tools when available.

## Software

### ESP-IDF

The ESP-IDF framework is the toolchain used to compile the Minino firmware. Version 5.5.1 is required; newer versions are not guaranteed to compile the project.

#### Installation

Follow the [ESP-IDF installation guide](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/index.html) for your operating system. After installation, load the environment in your terminal, for example:

```bash
get_idf
```

> [!IMPORTANT]
> The version you need to install must be [5.5.1](https://github.com/espressif/esp-idf/releases/tag/v5.5.1). We cannot guarantee that a more recent version will compile.

#### Usage

The Makefile in the firmware directory provides the build commands:

```bash
make setup
make compile
```

See [Getting Started](getting-started.md) for the full workflow.

### Terminal Emulator

A terminal emulator such as `miniterm`, PuTTY, or the `make monitor` command is used to open the serial console at the device baud rate. The console is where you type commands such as `save`, `web_config`, and `get_chip_info`.

## Firmware

### Current Firmware

Minino firmware is distributed as release builds on the [official repository](https://github.com/ElectronicCats/Minino). The repository tags follow the `1.x` release series.

### Firmware Requirements

- Building requires ESP-IDF 5.5.1.
- OTA updates require the 8 MB flash variant.

> [!IMPORTANT]
> OTA requires 8 MB flash. If you want to build for other memory capacities, compile without OTA.

### Firmware Installation

Connect the device and flash the release using the address table for the build type.

#### Firmware with OTA

| Flash Address | File                   |
|---------------|------------------------|
| `0x0`         | `bootloader.bin`       |
| `0x8000`      | `partition-table.bin`  |
| `0x15000`     | `ota_data_initial.bin` |
| `0xa0000`     | `minino.bin`           |

```bash
python -m esptool --chip esp32c6 -b 460800 --before default_reset --after hard_reset write_flash --flash_mode dio --flash_size 8MB --flash_freq 80m 0x0 bootloader.bin 0x8000 partition-table.bin 0x15000 ota_data_initial.bin 0xa0000 minino.bin
```

#### Firmware without OTA

| Flash Address | File                  |
|---------------|-----------------------|
| `0x0`         | `bootloader.bin`      |
| `0x8000`      | `partition-table.bin` |
| `0x20000`     | `minino.bin`          |

```bash
python -m esptool --chip esp32c6 -b 460800 --before default_reset --after hard_reset write_flash --flash_mode dio --flash_size 8MB --flash_freq 80m 0x0 bootloader.bin 0x8000 partition-table.bin 0x20000 minino.bin
```

### Firmware Update

The device can update its own firmware over the air from the About menu (`OTA Firmware Update`). This procedure requires a Wi-Fi connection and the 8 MB flash variant of the module.

## Configuration

- Firmware version and debug settings are configured with `idf.py menuconfig`.
- Wi-Fi station credentials are saved from the serial console with the `save` command.
- The console provides `help` to list all available commands.

## Version Compatibility

| Hardware Version     | Software / Firmware Version | Notes                      |
|----------------------|-----------------------------|----------------------------|
| ESP32-C6-WROOM-1U-N8 | Firmware release series 1.x | Built with ESP-IDF 5.5.1   |
| Flash 8 MB variant   | OTA-capable builds          | Required for OTA updates   |
| Other flash sizes    | Builds without OTA          | Use the no-OTA flash table |

## Related Documentation

- [Getting Started](getting-started.md)
- [Reference](reference.md)
- [Troubleshooting](troubleshooting.md)
- [Understanding Minino](understanding-minino.md)
