# Sensors Command Reference

## Overview

This page is the lookup reference for the `sensors` command group of `catsboard-cli`. It lists the commands available to read sensors connected to a CatsBoard board.

## Syntax

```text
catsboard-cli sensors [COMMAND] [OPTIONS]
```

## Parameters

<div align="center">

| Parameter | Type   | Required | Description                             |
|-----------|--------|:--------:|-----------------------------------------|
| `sensor`  | String | Yes      | Sensor name: `temp` or `hum`            |

</div>

## Options

<div align="center">

| Option    | Description                | Default          |
|-----------|----------------------------|------------------|
| `--port`  | Serial port to use         | Configured port  |

</div>

## Examples

### Example 1 — Read the temperature

```bash
catsboard-cli sensors read temp
```

### Expected Output

```text
Temperature: 24.5 deg C
```

### Example 2 — List the connected sensors

```bash
catsboard-cli sensors list
```

```text
Connected sensors:
  - temp
```

## Output / Return Values

Every command returns `0` on success and `1` on error. Commands print a status message to stdout; errors are printed to stderr.

## Notes

- The tool name and the commands are fictional and belong to the demo product.
- Reading a sensor requires CatsBoard firmware 2.x or later.

## Related Documentation

- [Understanding CatsBoard](understanding-catsboard.md)
- [Getting Started](getting-started.md)

<!-- Writer note (do not include in the output): this page is for lookup information. Detailed teaching sequences belong in Tutorials. -->
