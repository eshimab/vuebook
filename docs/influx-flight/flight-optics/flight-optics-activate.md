---
title: Alignment Pre-Flight
icon: list-check
---




## Jump to...

[[toc]]

## Laser Power

::: danger Close the Physical Laser Shutters before turning on lasers!
-   As a general safety procedure. But also...
-   The automatic electronic shutters that block the lasers when the Laser Chamber is open are **not** installed for the 488 and 457 lasers. 
-   The only way to block those lasers is with the physical laser shutters
-   Push the shutter in so that the red tape is **not** showing to **close** the shutter.
:::

::: note asset "Laser Chamber Door Shut"
Laser Chamber Door is closed. Notice the finger switch and the Drop Camera Mirror is facing the correct direction.
:::

### Laser Power: 488

Turn On 488nm *Coherent* Laser Power Supply Unit with the following sequence:
1.  Turn on the 488 Rocker Switch (*E 107* Plug 2) 
2.  Turn Key CW to `ON` (key is horizontal)
3.  Use the dial to set the 488nm Laser Power Percent to 108 (as seen in the digital read-out)
4.  Laser Shutdown:
    1.  Turn key CCW to `STANDBY` (key is veritcal)
    2.  (Optional) Turn off Laser PSU using rocker switch on PSU front panel
    3.  Turn off the 488 Rocker Switch (*E 107* Plug 2)


::: note asset "Laser Power Supplies 488 and 457"
Laser power supply units (PSU) and E 107 Power Switches when all lasers are powered on.
:::

### Laser Power: 457

Turn On 457nm *Melles Griot* Laser  Power Supply Unit with the following sequence:
1.  Turn On 457 Rocker switch (*E-107* Plug 3)
2.  Turn Key clockwise to `Laser Enable` (key is horizontal)
3.  Green `Laser On` Button
4.  Success?
    -   You should here a code beep of 2 short and 3 long in quick succession to indicate laser is active. 
    -   The Laser Emission will have 1 green light
5.  Error? 
    -   The 457 PSU will repeatedly send out error codes if it was not booted up in the correct order.
    -   The `System Fault` error light will be on
    -   Restart the laser.
6.  Laser Shutdown:
    1.  Press the red `Laser Off` button
    2.  Turn Key counter clockwise to `Laser Disable` (key is vertical)
    3.  Turn off 457 Rocker switch on (*E-107* Plug 3)

### Laser Power: 671

*(Optional)* Turn On 671nm *Opto Engine* Laser Power Supply Unit
::: note asset "Laser PSU 671"
Laser PSU for the 671 is located on the rear/right corner of the Instrument table.
:::
1.  Turn on the 671 Rocker Switch (*E 107* Plug 4) 
2.  Turn on 671 Laser PSU using the rocker switch
    -   Labelled `PSU-H-LED` located on back-right corner of Instrument table
3.  Turn the Key to `ON` (key horizontal)
4.  Use the `Knob` to set Laser Power to **6.73?**
5.  Laser Shutdown:
    1.  (Optional) Turn Key to `DISABLE` (vertical)
    2.  (Optional) Rocker switch to `OFF`
    3.  Turn Off the 671 Rocker Switch (*E 107* Plug 4) 


## Laser Systems Reference

::: note asset "Like... a million...."
Maybe wait and see what pictures the protocol requires before doing these.
:::

### Laser Chamber

1.  Where the Lasers pass through the Sample Stream.
2.  Laser Chamber Components
    1.  Left: Laser Ingress
        1.  Lasers enter the chamber from the Laser Intake Paths, after being directed using the Laser Stages (top of instrument, to left of Laser Chamber)
    2.  Rear: Side-Scatter (SSC) and Fluorescence detector lens
        1.  This lens is fixed and cannot be moved with a Stage.
    3.  Right: Forward Scatter (FSC) Detector Lens
        1.  This Lens can be moved using the FSC Lens Stage (located on Instrument Top, at right of Laser Chamber)
    4.  Rear/Right Corner (between SSC and FSC lens): Cut-out for Drop Camera Mirror
    5.  Front/Left Outside Laser Chamber: Drop Camera Mirror
        1.  The Mirror has a peg on the bottom that fits into a slot outside the left edge of the Laser Chamber Door
        1.  The Mirror should have the flat side angled towards the Drop Camera Cut-out
    6.  Front: Laser Chamber Door
        1.  There is a magnet switch that automatically closes the electric shutters on the Laser Shutters (at instrument far left)
        2.  After opening the door (therefore closing the Electric Shutters), close the Laser Chamber Door, and place a finger over the Finger Switch (upper right corner of track where the Laser Chamber Door slides) to open the Electrix Shutters. 
        3.  Note: The Electric Shutters can be forced open by closing and opening the Physical Laser Shutter Stops using the handles on Instrument Left Side.
        4.  Further Note: The Electric Shutters for the 488nm and 457nm lasers have been **removed** because the Electroc Shutters were sticking and not re-opening when the Finger Switch was activated. The 488 and 457 lasers can only be shuttered using rhe Physical Laser Shutters.
    7.  Bottom of Chamber below Nozzle Assembly: Port where the Stream enters the Sort Chamber below.
        1.  During alignment, the combination of the Stream Stage and Stream Tilt may lead to the Stream not being centered in the port. That is okay.
    8.  (*Optionla*) Top: Laser Chamber Cover
        1.  For sensitive sorting, or if using UV Lasers
3.  Shown on the Pinhole Camera
    1.  The 5 Pinholes go to the fluorescence detector paths for each laser.
    2.  From Top to Bottom the Pinholes are:
        1.  Top: 488nm
        2.  Empty
        3.  Middle: 457nm
        4.  Empty
        5.  Bottom: 671nm

### Laser Intake Paths

1.  Located on Left of Instrument
2.  Physical Laser Shutters are located on the far left of the instrument, at the rear of the Laser Intake Path Panel.
    1.  There are automatic Laser Shutters that close when the Laser Chamber door is open (unless the magnetic switch has been defeated).
    2.  The automatic Shutters are re-opened when the Laser Chamber door is closed and the “Finger Switch” in the upper right corner of the Laser Chamber Door path has been activated (by hovering a finger over the sensor).
    3.  The automatic shutters can also be opened by physically opening (or closing and reopening if the physical shutter was open) the Shutter Stops.
    4.  The automatic Laser Shutters for the 488 and 457 lasers have been **removed** because they were sticking. The **only** way to block the 488 and 457 lasers is to close the Physical Shutter.