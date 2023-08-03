---
title: System Power
icon: power-off
---






[[toc]]

## System Power TLDR:

1. Turn On InFlux Instrument
2. Check Cameras with Marshal Monitor
3. Turn on Lasers
4. Turn On Computers and start Sortware

## Turn On InFlux

::: note asset “Workstation Power Switches”
Power switches are on the Workstation cart and instrument chassis. Note:
-   the *Eliminator E 107* power strip.
-   The Sort Chamber Control Buttons 
:::

1. Turn On Primary Power “Power Strip 1” Computer Table
2. Turn On Instrument Power using Rocker Switch on Instrument Chassis
3. The Vacuum Pump and Lasers are plugged into the Front Panel Power Switches on the unit labeled *Eliminator E-107*
3. Turn On Power for the Vacuum Pump.
    ::: note asset “Vacuum pump in a box”
    The vacuum pump is behind the instrument chassis in a sound isolation bin. Note:
    -   Exhaust Location
    -   Power Toggle
    :::
    1.  Vacuum pump power is on switch 1 (labeled Vac) by default.
    5.  The Vacuum pump is in a plastic bin behind the instrument. 
    5.  The bin is for sound isolation.
    6.  The pump exhaust fan should be facing out of the corner with the *exquisitly* carved port. To keep the pump from overheating.
    7.  The Vacuum pump toggle switch should be on. We normally leave this toggled and power the vacuum pump 
4. Lasers are powered with the Rocker Switches on the *E 107* Unit. We will turn them on later. For reference:
    1. The  Switches are numbered:
        1. **2** 488 - 488nm *Coherent* Laser
        1. **3** 457 - 457nm *Melles Griot* Laser
        1. **4** 671 - 671nm *Opto Engine* Laser
4. Turn On Tektronix TDS 2014C Oscilliscope using the Power Switch on the Top Left Corner.

## Check the Cameras using the Marshall Monitor

1. Monitor is located on Computer Table.
3. Left Monitor “PIN HOLE”
    1. VIDEO 1 - Pinhole Camera of the Stream and the Laser Pinholes
    2. VIDEO 2 - None
4. Center Monitor  “DROP”
    1. VIDEO 1 - FSC Pinhole Camera 
        1. Camera is located on the FSC optical path
    2. VIDEO 2 - Drop Camera: For finding Break-off Point for Flow Sorting
        1. The Drop Camera is moved with the Drop Camera Z Knob located near the Sheath Valve on the top of the Instrument
        2. If the Drop Camera seems dark, be sure that the Drop Camera Mirror is installed outside the Laser Chamber with the Flat Side facing towards the corner between the FSC and Side/Fluorescence lenses. There is an opening in the wall of the Laser Chamber, allowing light from the Drop Camera Mirror to illuminate the stream viewed by the Drop Camera.
5. Right Monitor “STREAM”
    1. VIDEO 1 - Stream Camera (Shows Sort Chamber for Sorting and Coarse Alignment)
        1. If this Camera is dark, make sure to activate the yellow ILLUM Button located on the Front Right side of the Instrument Chassis


## Turn On Computers & Start Software

The Workstation is comprised of two computers connected via a router. 

### Shutdown Procedure

::: warning When shutting down the PCs
**Always** shutdown the computers gracefully using the Windows operating system. Failure to do so may cause latent performance issues that are difficult to explain.
:::

### Check Router

1. The router should be plugged in and on.
2. The first and second ports on the rear of the router should be connected to:
    1. Dell PC
    2. HP PC
    3. User's laptop (Optional)

### Start Dell PC (CytoServer)

::: note asset “Workstatiom cart front”
Front of the workstation cart where the PCs, Marshal Monitors, Oscilliscope, Main system power, and router are stored.
:::

1.  Ensure that the InFlux Instrument is powered On.
2.  Ensure the device and it's peripherals are plugged in:
    1.  Dell PC to Always-On powerstrip
    2.  Dell PC Monitor ("Dell Monitor") to Always-On powerstrip
    3.  Dell PC to Dell Monitor via DVI-to-VGA Adapter and VGA Cable.
    4.  Dell PC to Router (typically, second port) via Ethernet
    5.  Dell PC Keyboard (in front of the Monitor) to Dell PC
    6.  *Note:* This PC does not have a mouse plugged in by default. If you want to use one, it must be a *wired* USB mouse.
3.  Power On the PC and Monitors using front panel button.
4.  During the initial boot, you will get a Warning about the System Battery being Low
    ```sh
    Alert! System Battery voltage is low.
     Strike the F1 key to continue, F2 to run the setup utility.
      Press F5 to run onboard diagnostics
    ```
    1.  Press the F1 key on the Dell PC Keyboard to continue booting.
    2.  The Dell PC should emit two short beeps once it boots to the login screen. This means that the InFlux Instrument is powered on and connected to the Dell PC via the router.

    ::: note Dell PC Error Beeps
    If the Dell PC begins to beep an error code of 3 long beeps in quick succession, then it is not connected to the InFlux Instrument.
    1.  Is the InFlux Powered on?
    2.  Is the router powered on?
    3.  Is the Dell PC connected to the router?
    4.  Is it still beeping?
        1.  Go to network troubleshooting, you lucky dog.
    :::

5. Use the login info recorded locally.
    1. To get to the password entry without a mouse 
            1. Press TAB twice to open the password field
        1. Type in the locally recorded password 
        2. Press ENTER
    2. *Note* You can use TAB to move around the login window to turn off the computer.
6. Wait for this PC to boot up and login to Desktop before proceeding


### Start HP PC 

1. Ensure the InFlux Instrument, Router, and Dell PC are all On.
2. Ensure the HP PC and its peripherals are plugged in:
    1. HP PC to Always-On powerstrip
    2. HP PC Monitor ("LG Monitor") to Always-On powerstrip
    3. HP PC to LG Monitor via DisplayPort cable
    4. HP PC to Router (typically, second port) via Ethernet
    5. HP PC Keyboard (Wireless, "Logitech G613" , USB Dongle "G613" in Front Panel USB-2.0 Port)
    5. HP PC Mouse (Wireless, "Logitech" , USB Dongle "MTA8" in Front Panel USB-2.0 Port)
3. Power On the HP PC using Front Panel Switch. 
4. Power On LG Monitor using button on bottom/center of monitor.
5. Use the login info recorded locally



 ### Network Troubleshooting