# Board not detected

## Symptoms

When you run `catsboard-cli detect`, the board is not found:

```text
Error: no board detected on port /dev/ttyUSB0
```

## Possible Causes

### Cause 1 — Wrong serial port

The tool is configured for a different serial port than the one the board uses.

### Cause 2 — Board not powered

The board has no power, so the computer cannot detect it.

## Solution

### Step 1 — Check the serial port

Show the configured port:

```bash
catsboard-cli config get port
```

### Step 2 — Set the correct serial port

Set the port that the board is connected to:

```bash
catsboard-cli config set port /dev/ttyUSB0
```

> [!WARNING]
> Keep the board connected while changing the port, or the tool cannot detect it.

### Step 3 — Detect the board again

Run:

```bash
catsboard-cli detect
```

Expected output:

```text
Board detected: CatsBoard
```

## Verification

Run the detection command again and confirm that the board is reported:

```bash
catsboard-cli detect
```

Expected result:

```text
Board detected: CatsBoard
Firmware version: 2.3.0
```

## Related Documentation

- [Understanding CatsBoard](understanding-catsboard.md)
- [Getting Started](getting-started.md)

<!-- Writer note (do not include in the output): troubleshooting starts from an observable symptom and ends with a verifiable resolution. -->
