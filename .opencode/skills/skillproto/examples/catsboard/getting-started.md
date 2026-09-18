# Getting Started

## Overview

This guide shows how to set up a CatsBoard board and achieve the first successful result: detect the board and read its temperature.

## Requirements

### Hardware

- CatsBoard board
- USB-C cable
- Temperature sensor module

### Software

- catsboard-cli 2.x
- Terminal emulator

> [!NOTE]
> The tool name and the commands in these examples are fictional.

### Firmware

- CatsBoard firmware 2.x or later

## Hardware Setup

### Step 1 — Connect the sensor

Connect the temperature sensor to the board's sensor connector.

![CatsBoard board with the temperature sensor connected](images/catsboard-setup.png)

### Step 2 — Connect the board

Connect the board to your computer using a USB-C cable.

## Software Setup

### Step 1 — Install the tool

Install the command-line tool:

```bash
pip install catsboard-cli
```

### Step 2 — Verify the installation

Run:

```bash
catsboard-cli --version
```

Expected output:

```text
catsboard-cli 2.3.0
```

## Initial Configuration

The board works out of the box. Configure the serial port so the tool can find the board:

```bash
catsboard-cli config set port /dev/ttyUSB0
```

Expected output:

```text
Port set to /dev/ttyUSB0
```

## First Run

Connect the board, then detect it:

```bash
catsboard-cli detect
```

Expected output:

```text
Board detected: CatsBoard
Firmware version: 2.3.0
```

## First Example

Read the temperature from the connected sensor:

```bash
catsboard-cli sensors read temp
```

Expected output:

```text
Temperature: 24.5 deg C
```

## Expected Result

The board is detected, and `catsboard-cli sensors read temp` returns a temperature value in degrees Celsius.

## Next Steps

- [Understanding CatsBoard](understanding-catsboard.md)
- [Sensors Command Reference](reference.md)
- [Board not detected — Troubleshooting](troubleshooting.md)

> Keep this page focused on the first successful result. Move advanced workflows to specialized pages.
