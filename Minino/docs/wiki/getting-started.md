# Getting Started

## Overview

This guide shows how to set up a Minino board and achieve the first successful result: power the board and confirm that the serial console responds by reporting the chip information.

## Requirements

### Hardware

- Minino board
- USB-C cable
- Optional: microSD card for logging and captures
- Optional: three AAA batteries for battery operation

### Software

- A terminal emulator, such as `miniterm`, PuTTY, or the `make monitor` command from the ESP-IDF environment
- To build the firmware from source: [ESP-IDF v5.5.1](https://docs.espressif.com/projects/esp-idf/en/v5.5.1/esp32/get-started/index.html) and [Make](https://www.gnu.org/software/make/)

### Firmware

- Minino firmware release series 1.x, or a build you create from source

## Hardware Setup

### Step 1 — Connect the board

Connect the board to your computer using a USB-C cable. The board powers on from the USB connection.

If you prefer battery operation, insert three AAA batteries into the onboard battery holder. The board can run without a USB connection, but the serial console requires the USB connection.

### Step 2 — Identify the serial port

Identify the serial port the board exposes. The name depends on your operating system:

- Linux: `/dev/ttyUSB0`, `/dev/ttyACM0`, or similar
- macOS: `/dev/cu.usbmodemXXXX`
- Windows: `COM1`, `COM2`, or similar

## Software Setup

### Step 1 — Open a terminal emulator

Open a terminal emulator and connect to the serial port of the board. The console uses the USB Serial/JTAG interface at `115200` baud by default.

```text
minino> 
```

### Step 2 — Verify the console

The console shows a welcome message and a `minino>` prompt with a user guide:

```text
Welcome to the Minino Console.
Type 'help' to get the list of commands.
Use UP/DOWN arrows to navigate through command history.
Press TAB when typing command name to auto-complete.
Press Enter or Ctrl+C will terminate the current
command.
minino> 
```

> [!TIP]
> If you use the ESP-IDF environment from the firmware directory, `make monitor` connects to the console automatically.

## Initial Configuration

No configuration is required after powering on. The device menu is driven by the onboard buttons:

- Use the **UP** and **DOWN** buttons to move through the menu.
- Use the **LEFT** and **RIGHT** buttons to select and confirm.

The first entry is the **Applications** menu, which groups the wireless applications.

## First Run

Confirm the firmware is running by requesting the chip information from the console:

```bash
get_chip_info
```

Expected output:

```text
Chip type: ESP32-C6
```

The output continues with the number of cores, the available features, and the chip revision.

## First Example

Navigate to the display menu to see the device in action:

1. Power on the board.
2. Use the buttons to open **Applications**.
3. Enter an application and press the button assigned to exit to return to the menu.

The OLED shows the current battery- or USB-powered state and the menu tree.

## Expected Result

The board powers on, shows its menu on the OLED display, and the serial console answers `get_chip_info` with the ESP32-C6 chip information. This confirms that the hardware, the firmware, and the USB connection all work.

## Related Documentation

- [Wi-Fi Security](feature-wifi.md) — run your first wardriving session
- [Reference](reference.md) — learn the console commands
- [Tutorial](tutorial.md) — a complete step-by-step procedure
- [Understanding Minino](understanding-minino.md) — product overview

> Keep this page focused on the first successful result. Move advanced workflows to specialized pages.
