# Run a Wi-Fi Wardriving Session

## Overview

This tutorial shows how to run a Wi-Fi wardriving session with Minino: discover nearby Wi-Fi access points and store them with GPS coordinates on a microSD card for later analysis.

## Requirements

### Hardware

- Minino board with antenna connected
- microSD card
- Access to the outdoors with a clear view of the sky

### Software

- Minino firmware release series 1.x

### Firmware

- Minino firmware release series 1.x

### Additional Materials

- USB-C cable or three AAA batteries for power

## Setup

Prepare the microSD card:

1. Turn on the device.
2. Open **Settings > SD Card Settings**.
3. Confirm the card capacity and integrity. Format the card to FAT32 if requested.

## Procedure

### Step 1 — Go outdoors

Move to a location with a clear view of the sky so the GPS can acquire satellites. Indoor readings are unreliable.

### Step 2 — Check the GPS fix

Open **Applications > GPS > Num Sats** and wait until the screen shows a usable satellite count. The fix time is normally a few seconds outdoors.

### Step 3 — Start wardriving

Exit the GPS application and open **Applications > WiFi > Wardriving**.

### Step 4 — Walk the route

Walk or drive the route you want to cover. The screen shows the discovered access points and the GPS status. Keep the device in view of the sky.

### Step 5 — Stop the session

Press the button assigned to exit the application. The session writes its log to the microSD card.

### Step 6 — Read the log

Insert the microSD card into a computer and open the wardriving CSV file with a spreadsheet or a text editor.

## Expected Result

The CSV file contains one row per detected access point: the MAC address, SSID, authentication mode, channel, frequency, RSSI, and the GPS coordinates captured during the walk.

## Troubleshooting

### The GPS never acquires a fix

**Symptoms:** the satellite count stays at zero.

**Possible cause:** the device is indoors or the sky is covered.

**Solution:** move to an open area and wait for the fix to complete.

**Verification:** the satellite count and the location screen show valid coordinates.

### No log file is written

**Symptoms:** the wardriving screen shows no log indicator and the card has no new file.

**Possible cause:** the microSD card is not FAT32 or is not detected.

**Solution:** check the card in **Settings > SD Card Settings** and format it to FAT32.

**Verification:** after a new session, the card contains a CSV log.

### No networks are discovered

**Symptoms:** the access point counter does not increase.

**Possible cause:** few 2.4 GHz networks are near the device, or the antenna is not connected.

**Solution:** verify the antenna connection and move closer to a known access point.

**Verification:** the counter increases when the known access point is detected.

## Related Documentation

- [GPS & Wardriving](feature-gps-wardriving.md)
- [Wi-Fi Security](feature-wifi.md)
- [Reference](reference.md)
- [Troubleshooting](troubleshooting.md)

> Keep one tutorial focused on one clear task or outcome.
