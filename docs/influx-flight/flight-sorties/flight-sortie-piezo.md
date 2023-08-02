---
title: Piezo Voltage
icon: bolt
---




## Find Break-Off-Point (BOP)

The break-off point (BOP) is where the waves on the surface of the stream (imparted by the nozzle assembly) cause the continuous stream jet to break off into individual droplets. 

Our primary means of influencing this are 
-   the stream (ie sheath) psi (which we will keep at 15.0)
-   the voltage (V) of the Piezo Crystal on the nozzle Assy 
-   the frequency (in kHz) of the nozzle vibration 

In general, this setup assumes that you will be using an 86um Nozzle at a constant sheath pressure of 15.0 PSI. 

## Drop Drive Cruise Control

Some combination of following settings are likely to work:
1.  Sheath PSI 15.0
2.  Nozzle Tip 43-45 (BOP Cam)
2.  Drop frequency 36.50-36.90kHz
3.  Piezo Voltage: 3-5V

This will generally yield:
1.  BOP(s) in the range of 155-165.
2.  Drop Delays of 21-23 (droplet cycles)

### The Piezo Voltage Range

1.  Piezo voltage will probably be 2-5V
2.  Voltages below 1.5 are unstable for sorting.
3.  Voltages above 6V will cause jet instability and create optical noise.

## Piezo Voltage

The voltage on the piezo crystal is your primary means of maintaining stream stability while using the instrument.
-   The optimal frequency is intimately linked  to the (fixed) nozzle diameter and subtle changes in the properties of the sheath fluid, such as its kinematic viscosity and temperature. 
    -   That restricts the valid frequency values to a much smaller range than piezo V.
-   But we cannot always control every the environmental factors that contributes to the optimal frequency
    -   It is more feasible to scan the range of potential frequencies than it is to constrain 
-   The precise combination of frequency and piezo V that yield a stable BOP will change day to day.
    -   The optimal frequency will have less variability on or between days
-   Once you have identified a stable frequency and calibrated the resulting Drop Delay, the piezo V gives you the flexibility to account for environmental changes.
-   An example where this is necessary is the amount of water in the sheath tank because it is an environmental factor that is *guaranteed* to change.

:::: tip The Piezo V will need to be raised as the sheath tank empties.

-   The Drop Delay is the time between when a particle passing through the trigger laser and when it is in the drop at the BOP.
-   We need a stable Drop Delay because that is how the inFlux determines when to activate the Deflection Plates to sort a targetted particle.
-   As the sheath tank empties, the jet slows down, and the Drop Delay increases
-   We counter that by increasing Piezo V, bringing the BOP closer to the nozzle, and decreasing the Drop Delay.

::: note details Per Ger's chapter
The digital PSI is our most (however qualified) accurate way to monitor sheath PSI. But the sheath psi is measured near the regulator. 
-   In the sheath tank, an incompressible fluid (water) is slowly being replaced by air. 
-   As the sheath tank empties,  the 15.0 psi (at the regulator) translates to less effective pressure in the sheath tank. 
-   Reducing the effective pressure in the sheath tank slows the flow of sheath fluid ie the jet
-   A slower jet will mean it takes longer for a particle to get from the trigger laser to the BOP.
-   Drop Delay *Increases.*

The Piezo V can counteract that Drop Delay Increase:
-   Increasing the Piezo V increases the disturbance to the cohesiveness of the jet.
-   The greater the disturbance, the less time it will take for the jet to break up into drops
-   That brings the BOP closer to the nozzle i.e. closer to the trigger laser.
-   A particle passing through the trigger laser will be at the BOP sooner because the BOP is closer.
-   Drop Delay *Decreases.*

The Drop Delay increase caused by an emptying sheath tank is cancelled out by raising the Piezo V to decrease the Drop Delay.
-   The particle may be moving slower (increasing Drop Delay), but the BOP is higher (decreasing Drop Delay).
:::
::::


### Piezo Voltage Details

1.  Piezo Minimum:
    1.  We operated for a while with a Piezo of 1.5-1.8V (37.00kHz/15.0psi/BOP ~155).
    2.  At that low of a Piezo voltage, we often had to adjust the Piezo voltage every few minutes to keep the sort streams from fanning.
3.  Piezo Maximum:
    1.  This isn't a risk of damaging the instrument. 
    2.  Applying too much energy to the jet causes instability.
        ::: note details Jet vs Stream
        -   The jet is the unbroken column of sheath fluid that exits the nozzle. The jet ends at the BOP. 
        -   The stream refers to the jet and the series of discrete droplets that the jet breaks into when sorting.
        :::
    3.  That instability is usually manifest in optical noise.
        1.  This can be simply be an increase in the noise floor of a 100-200 evt/s.
        2.  It can cause event rates above 100,000 evt/s that cause sortware to crash.
        3.  It can also cause strange data artifacts where you see spurious populations clustered at several FSC values.
    4.  We set the tip of the nozzle as low as possible because, even in absence of the Drop Drive, jet stability is inversely related to the distance from the nozzle.
        -   We aim for "just off camera," or at 43-45 on the Drop Cam, because it ensure that we are measuring close to the top of the jet while being safely above the laser paths.

### Optimal Piezo V

Generally speaking, for a given frequency, if we have found two stability points, we would prefer one with the higher Piezo V as long as it is below 5.0V. 
 
An example with a sheath at 15.0 psi and a frequency of **36.66kHz**
-   Piezo 3.47V and BOP 165
-   Piezo 4.76V and BOP 160
-   Piezo 6.49V and BOP 155

In this case, we would prefer Piezo of 4.76 with the BOP at 160. Despite the fact that our Piezo of 6.49V was stable, and that a higher BOP is generally more desireable, we were more likely to notice fanning or fuzzing of the sort streams and had a higher noise floor.

Some of the patterns we have noticed while scanning through Piezo voltages:
-   The higher a voltage, the wider the range of values that will still yield a stable sort stream.
    -   For the previous example, the range of "acceptable" Piezo voltages were:
        -   Piezo 3.47V (3.46-3.49V), BOP 165
        -   Piezo 4.76V (4.74-4.79V), BOP 160
        -   Piezo 6.49V (6.47-6.54V), BOP 155
    -   The effect is subtle but consistent.
-   For a given kHz/psi combination, the distance between stable break-off points will be consistent.
    -   It is not by chance that our previous example had BOPs spaced at 5.
    -   This is a consequence of the physics of droplet formation. 
    -   Knowing this lets you skip some Piezo voltages while you are scanning to find the optimal value.
    -   There aren't always multiple valid BOPs
        -   Three stable BOPs is uncommon
        -   You can usually find two valid BOPs, but...
        -   It is likely that one of the two BOPs will be more stable 
