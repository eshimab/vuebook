---
title: 1.0 Turn on inFlux
icon: power-off
---

<!-- filename: /docs/influx-flight/ifm-01-startup/ifm-01p02-system-power.md -->

<!-- Reference Links -->
<!-- Usage -->
<!-- [img-label]: ./assets/filename.png -->
<!-- ![Caption Text][img-label] -->
[img-workstation]: ./assets/img-01p02-system-power/img-01p02-power-workstation-pcsOn.png
[img-powerZoom]: ./assets/img-01p02-system-power/img-01p02-power-chassisOn-zoom.png
[img-elim]: ./assets/img-01p02-system-power/img-01p02-optics-lasers-e107-on-anno.png
[img-sortControls]: ./assets/img-01p02-system-power/img-01p02-power-sortChamberControl-anno.png
[img-vacBack]: ./assets/img-01p02-system-power/img-01p02-vacuum-in-box.png
[img-marshals]: ./assets/img-01p02-system-power/img-01p02-power-cameraMonitors-anno.png
<!-- Assets -->

<!-- URLs -->

<!-- End Ref Links -->


[[toc]]


## System Power TLDR:

1. Turn On InFlux Instrument
2. Check Cameras with Marshal Monitor
3. Turn on Lasers
4. Turn On Computers and start Sortware

## 1.0 Turn On InFlux

<!-- ::: note asset “Workstation Power Switches” -->
<!-- Power switches are on the Workstation cart and instrument chassis. Note:

### Workstation
![Workstation Power][img-workstation]


### the *Eliminator E 107* power strip.
![Eliminator][img-elim]

### The Sort Chamber Control Buttons 
![Sort Chamber Control Buttons][img-sortControls] -->
<!-- ::: -->




1. Turn On Primary Power “Power Strip 1” Computer Table
### Workstation
![Workstation Power][img-workstation]

2. Turn On Instrument Power using Rocker Switch on Instrument Chassis
### Chassis Power
![inFlux Chassis Power][img-powerZoom]

3. The Vacuum Pump and Lasers are plugged into the Front Panel Power Switches on the unit labeled *Eliminator E-107*
4. Turn On Power for the Vacuum Pump.
    ::: note asset “Vacuum pump in a box”
    The vacuum pump is behind the instrument chassis in a sound isolation bin. Note:
    ![Vacuum Pump from back in box][img-vacBack]
    :::
    1.  Vacuum pump power is on switch 1 (labeled Vac) by default.
    2.  The Vacuum pump is in a plastic bin behind the instrument. 
    3.  The bin is for sound isolation.
    4.  The pump exhaust fan should be facing out of the corner with the *exquisitly* carved port. To keep the pump from overheating.
    5.  The Vacuum pump toggle switch should be on. We normally leave this toggled and power the vacuum pump 
5. Lasers are powered with the Rocker Switches on the *E 107* Unit. We will turn them on later. For reference:
    1. The  Switches are numbered:
        1. **2** 488 - 488nm *Coherent* Laser
        2. **3** 457 - 457nm *Melles Griot* Laser
        3. **4** 671 - 671nm *Opto Engine* Laser
6. Turn On Tektronix TDS 2014C Oscilliscope using the Power Switch on the Top Left Corner.

## 1.2 Check the Cameras using the Marshall Monitor

![Marshal Monitors][img-marshals]

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


