# Console Command Reference

## Overview

This page is the lookup reference for the Minino console commands. The console runs over the USB Serial/JTAG connection and supports tab completion and command history. Use `help` at any time to list the commands available on your firmware build.

> [!NOTE]
> The Zigbee and Thread command groups below require the ZB CLI and firmware versions prior to `1.1.13.0`. See [Zigbee](feature-zigbee.md) and [Thread / OpenThread](feature-thread.md) for the current status.

## Syntax

```text
minino> COMMAND [ARGUMENTS]
```

## System Commands

### `get_chip_info`

Reports the chip model, cores, features, and revision.

```text
get_chip_info
```

#### Expected Output

```text
Chip type: ESP32-C6
```

### `get_free_heap`

Reports the currently free heap memory.

### `get_min_free_heap`

Reports the minimum free heap memory seen since boot.

### `get_reset_reason`

Reports the reason the device reset.

### `reset`

Restarts the device.

### `launch`

Launches an application by name from the console.

## Wi-Fi Commands

### `save`

Saves a Wi-Fi network for the device to connect to.

#### Syntax

```text
save AP_NAME PASSWORD
```

#### Example

```text
save Hacknet_EXT secret-password
```

### `web_config`

Configures the target for the CatDoS attack.

#### Syntax

```text
web_config IP_VICTIM PORT_VICTIM PATH_VICTIM
```

#### Example

```text
web_config 192.168.0.178 8000 /
```

### `catdos`

Starts the denial-of-service attack against the configured target.

### `wifi_scan`

Starts a Wi-Fi scan and lists the nearby access points.

## SSID Spam Commands

Get help for the group:

```text
help spam
```

### Expected Output

```text
Type 'help <command>' to get help for a specific command
  spam_delete
  spam_save
  spam_show
```

### `spam_save`

Saves a list of SSIDs for the spammer. Each comma in the text creates a separate message.

#### Syntax

```text
spam_save --name=NEW_NAME "message one, message two"
```

Saving with a name that already exists updates it.

### `spam_show`

Lists the saved SSIDs with their indices.

### `spam_delete`

Deletes a saved SSID by its index.

#### Syntax

```text
spam_delete INDEX
```

## UART Bridge Commands

<div align="center">

| Command                       | Purpose                                                            |
|-------------------------------|--------------------------------------------------------------------|
| `print`                       | Send text over the bridge                                          |
| `println`                     | Send text plus a newline over the bridge                           |
| `uart_bridge`                 | Start or stop the bridge                                           |
| `uart_bridge_get_config`      | Show the current bridge configuration                              |
| `uart_bridge_set_config`      | Set the bridge configuration                                       |
| `uart_bridge_set_baud_rate`   | Set the baud rate (`9600`, `115200`, `230400`, `460800`, `921600`) |
| `uart_bridge_set_buffer_size` | Set the buffer size                                                |
| `uart_bridge_set_data_bits`   | Set the data bits                                                  |
| `uart_bridge_set_parity`      | Set the parity                                                     |
| `uart_bridge_set_stop_bits`   | Set the stop bits                                                  |
| `uart_bridge_set_flow_ctrl`   | Set the flow control                                               |

</div>

## GATT Commands

### `gattcmd_scan`

Scans for nearby Bluetooth devices and reports their MAC addresses.

### `gattcmd_enum`

Enumerates the GATT characteristics of a selected device.

### `gattcmd_write`

Writes a value to a GATT characteristic.

> [!NOTE]
> The GATT commands are still under development. They have been tested against devices that do not encrypt GATT writes.

## Zigbee CLI Commands

The Zigbee CLI is enabled from **Settings > ZB CLI**. Its prompt is `esp>`.

<div align="center">

| Command                                                  | Purpose                           |
|----------------------------------------------------------|-----------------------------------|
| `zha add <endpoint> <device_type>`                       | Create a Zigbee device model      |
| `dm register`                                            | Register the created device model |
| `bdb_comm start form`                                    | Form a new network                |
| `bdb_comm start steer`                                   | Join an existing network          |
| `network open -t <seconds>`                              | Open the network for joining      |
| `network scan -m <mask>`                                 | Discover networks                 |
| `network ed_scan -m <mask>`                              | Run energy detection              |
| `zcl send_gen read -d <addr> --dst-ep 1 -e 2 -c 6 -a 0`  | Read a cluster attribute          |
| `zcl send_raw -d <addr> --dst-ep 1 -e 2 -c 6 --cmd 0x01` | Send a raw command                |
| `zcl send_gen disc_attr -d <addr> --dst-ep 1 -e 2 -c 4`  | Discover attributes               |
| `zdo request active_ep -d <addr>`                        | Request the active endpoints      |
| `zdo request neighbors -d <addr>`                        | Request the neighboring devices   |

</div>

### Example — Form a network and open it

```text
esp> bdb_comm start form
esp> network open -t 200
```

## OpenThread CLI Commands

The OpenThread examples use the standard OpenThread CLI (`>`) from the Border Router or the end device.

<div align="center">

| Command                        | Purpose                            |
|--------------------------------|------------------------------------|
| `dataset init new`             | Create a new network               |
| `dataset`                      | Show the network details           |
| `dataset networkkey <key>`     | Join an existing network           |
| `dataset commit active`        | Commit the configuration as active |
| `ifconfig up`                  | Activate the network interface     |
| `thread start`                 | Start the Thread service           |
| `state`                        | Show the device status             |
| `udp open` / `udp bind <port>` | Open and bind a UDP socket         |
| `udp send <ip> <port> <text>`  | Send a UDP message                 |
| `ipaddr`                       | Show the interface addresses       |

</div>

## Output / Return Values

- Commands print their result to the serial console.
- Errors from ESP-IDF report an error code you can look up.
- Pressing `Ctrl+C` while a command is running terminates it.

## Notes

- Use `TAB` to auto-complete command names and `UP`/`DOWN` for history.
- The exact set of commands depends on the firmware build and the enabled features.
- The SSID spammer stores each SSID name without spaces, up to 13 characters; the saved message list supports up to 1024 characters.

## Related Documentation

- [Getting Started](getting-started.md)
- [Tutorial](tutorial.md)
- [Troubleshooting](troubleshooting.md)
- [Understanding Minino](understanding-minino.md)

> Use this page for lookup information. Detailed teaching sequences belong in Tutorials.
