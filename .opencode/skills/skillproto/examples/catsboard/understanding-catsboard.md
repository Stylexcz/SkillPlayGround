# Understanding CatsBoard

> This page is the high-level entry point for the product.
> Keep detailed procedures and large references in specialized pages.

## Overview

### What is CatsBoard?

CatsBoard is a fictional development board that combines a microcontroller, wireless connectivity, and a sensor interface in a breadboard-friendly format.

### What is it used for?

CatsBoard is used for prototyping connected measurement projects. Its main use cases are reading sensors, collecting readings, and sending them over a network.

### Main Features

- USB-C connection
- Onboard temperature sensor interface
- Wireless connectivity
- Command-line tooling for setup and reading

### Product Architecture

The board has three main blocks: a microcontroller that runs the firmware, a sensor connector for external modules, and a wireless radio for communication. The firmware exposes a command-line interface over the serial connection.

---

## Hardware

CatsBoard is a compact board with a microcontroller, a USB-C port, a sensor connector, and a wireless radio. It is designed to work without soldering on a breadboard.

In a full wiki, the detailed hardware documentation lives in its own hardware page.

---

## Software & Firmware

The board runs CatsBoard firmware, which provides the commands used to configure the board and read sensors. Setup and configuration are covered in [Getting Started](getting-started.md).

---

## Features / Applications

### Quick Temperature Reading

The onboard sensor interface can read temperature directly, which is useful for verifying that a setup works.

### Wireless Monitoring

With the wireless radio, readings can be sent to a remote collector for monitoring.

### Application Setup

CatsBoard firmware supports configuring the collector address and the reading interval.

---

## CLI / TUI

The command-line tool exposes a small set of command groups:

<div align="center">

| Command Group | Purpose                  |
|---------------|--------------------------|
| `catsboard`   | Main commands for setup  |
| `sensors`     | Read connected sensors   |
| `network`     | Configure the network    |
| `config`      | Show and change settings |

</div>

In a full wiki, the complete command syntax is documented in its own reference page.

---

## Compatibility

<div align="center">

| Category  | Supported / Required   | Notes                   |
|-----------|------------------------|-------------------------|
| Hardware  | CatsBoard 2.x          | First-generation board  |
| Firmware  | CatsBoard firmware 2.x | Or later                |
| Software  | catsboard-cli 2.x      | Or later                |
| OS        | Linux, macOS, Windows  | Serial drivers required |

</div>

---

## Related Documentation

- [Getting Started](getting-started.md)
- [Sensors Command Reference](reference.md)
- [Board not detected — Troubleshooting](troubleshooting.md)

> Do not turn this page into a complete manual. Its purpose is to give the user context and guide them to the detailed documentation.
