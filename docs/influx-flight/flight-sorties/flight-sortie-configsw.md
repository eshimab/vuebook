---
title: Sortware HUD
icon: computer
---






<!-- Reference Links -->
<!-- Page Links -->
[piezo-amp]: ./flight-sortie-piezo.md "Piezo Amplitude (V)"
[piezo-freq]: ./flight-sortie-frequency.md "Piezo Frquency (kHz)"
<!-- Image Links -->

<!-- End Ref Links -->


[[toc]]

## Sortware Panels

1.  **Sort Settings**
    1.  Set Drop Delay and Deflection for sorted events
2.  **Sort Layout**
    1.  Sorting vessel (calibration, tubes, well-plate)
    2.  Populations to be sorted
3.  **Tray Control**
    1.  Position the Sort Tray Stage to match the Sort Layout choice  
4.  **Gate Heirarchy**
    1.  Target Populations for sorting.

---

## Sort Settings

### Drop Formation

1.  Drop Drive
    1.  Turn the Nozzle Assembly Electronics On or Off
    2.  Affects the Piezo Amplitude and Drop Frequency
    3.  If the Laser Chamber door is open, the Drop Drive will not turn on.
    ::: danger Drop Drive does NOT affect Deflection Plates
    -   The Deflection Playes must be turned on/off using the PLATES button on the Sort Chamber Control Panel.
    -   The auto-shutoff for the Nozzle Assembly electronics will **not** affect the Deflection Plates. 
    :::
    1.  The Piezo Amplitude and Frequency are discussed in depth in this section
2.  Piezo Amplitude (Voltage)
    1.  Amplitude of vibration of the Piezo-electric crystal
    2.  Primary means of making small adjustments to keep the Drop Delay consistent throughout the day.
    3.  See the page on [Piezo Amplitude][piezo-amp] for a meandering discussion.
3.  Drop Frequency
    1.  Frequency of vibration of the Piezo-electric crystal
    2.  The frequency, stream PSI, and nozzle diameter are the sorting trinity.
        1.  Our nozzle diameter options are effectively limited to
            1.  70um
            2.  86um
        2.  For a given nozzle diameter, there are combinations of Sheath PSI and Frequency that will be optimal
            1.  This relates to the ratio of the surface disturbance imparted by the frequency to the diameter of the jet.
    3.  See the [Piezo Frequency][piezo-freq] section for more details than are useful.

### Stream

1.  Stream Focus
    1.  Most likely to be 3-10%
    2.  Constrains the counter-side streams that form as a response to the vestigle charge on adjacent droplets as they are slightly deflected by the Deflection Plates
    1.  If more than 10% Stream Focus is required, consider the following (in order)
        1.  Loweing the Maximum Drop Charge
        2.  Lowering the Stream Deflection (% Max)
        3.  Lowering the Pizo Voltage
        4.  Finding a new Frequency/Piezo stability point.
2.  Maximum Drop Charge (Volts)
    1.  Maximum charge applied to each droplet.
        1.  This is often 50-60V, and shouldn't exceed 80V.
    2.  Droplet deflection is a balance between Maximum Drop Charge and Stream Deflection (% Max).
    3.  These Buttons enable the Deflection Plates to allow the user to determine stable sort settings (Piezo Amplitude, Frequency)
        1.  Test Streams
            1.  Turn on Deflection Plates at constant % Max (set in *Stream Deflectin (% Max)*)
        2.  Flash Charge
            1.  Turn Deflection Plates on and off to fine-tune Piezo and Frequency
        3.  Short Flash
            1.  Increase frequency of Deflection Plate on/off to perfect Piezo and Frequency

### Stream Deflection (% Max)

1.  Sort Device (see *Sort Settings > Device*)
    1.  Displays the chosen Sort Device from the (*Sort Settings > Device*) panel.
2.  Stream Deflection (% Max) slider(s)
    1.  Strength of the voltage applied to the Deflection Plates to pull sorted droplets to the side of the sheath drain.
    2.  If the Stream Deflection is too high, droplets will be pulled into the Deflection PLates.
    3.  Droplet deflection is a balance between Maximum Drop Charge and Stream Deflection (% Max)
    4.  There will be 1 slider for each sort stream:
        1.  Calibration Slides: 1x (Far Left)
        2.  Well-Plate: 1x (Far left)
        3.  Two-Tube: 2x (Left, Right)
        4.  Four-Tube: 4x (Far Left, Left, Right, Far Right)


### Sort Mode

1.  Dropdown Menu:
    1.  1.0 Drop Pure
2.  Settings
    1.  Drops
    2.  Objective
    3.  Extra Coincidence
    4.  Phase Mask Current Drop
    5.  Drop Delay
        1.  The number that the InFlux uses to determine when a target particle is in the droplet at the tip of the jet and can be sorted.


### Drop Delay Calculator (`> More`)

The first step to determinig the Drop Delay is a calulation based on the position of the following parts of the stream as determined by the Drop Camera

1.  Laser Intercept
    1.  Where the 488nm trigger laser intercepts the stream
    2.  Normally 43-45
2.  Start 10 Drops
    1.  Above the first of 10 drops
    2.  Aim for the thinnest part of the stream above the nascent drop
    3.  There will be 5 "drops" (stream undulations) above the Break-Off-Point drop (which in the 6th in the series)
    4.  BOPs that are above (or have a Drop Camera value of less than) 155 may be difficult to see due to the Camera's position.
3.  Breakoff
    1.  Bottom of the final droplet that is still attached to the jet
    2.  This droplet will be the 6th in our series
4.  End 10 Drops
    1.  Bottom of the droplet at the end of 10 drops
    2.  There should be 4 unattached droplets

---

## Sort Layout

1.  Sort Device
2.  Sort Limit
    1.  Value
    2.  `Unlimited`
3.  Sort Report
4.  Sort Mode Selection (*Sort Settings Panel*)
    1.  Drop Down
5.  Amplitude (*Sort Settings Panel*)
    1.  Piezo
6.  Bottom Bar
    1.  Sort Ready
    2.  Drop Down
        1.  Automatic
    3.  Start Selected
    4.  Start
    5.  Pause
    6.  Reset
    7.  Safe
    8.  Eject

---

## Tray Control

1.  Zoom Factor
    1.  Drop Down
2.  Tabs
    1.  Current Sort Device
    2.  Custom Sort Device
3.  Grid Coordinates
    1.  Location
        1.  X
        2.  Y
    2.  Layout Type (*From Sort Layout*)
        1.  Type of Sort Device as set in `Sort Layout`
    3.  $\Delta$ Drop Delay
        1.  Option is available when the `Sort Device` is set to `Calibration Slide` or `Coarse Calibration Slide` in `Sort Layout`
        2.  This is the step in Drop Delay that the instrument increments when fine-turning the Drop Delay Value.
        3.  Usually 0.3-0.5 for Coarse Calibration slides
        4.  Always 0.1 for Calibration Slides
        5.  Extra fine-tuning of Drop Delay can be done manually if the 0.1 step is too large
    4.  Tray Movement Arrows
    5.  Set Home

---

## Gate Heirarchy


