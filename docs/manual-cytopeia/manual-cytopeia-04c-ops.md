--- 
title: 4. Operating Procedures C
--- 

<!-- filename: manual-cytopeia-04c-ops.md -->

::: note Summary
This chapter contains detailed step-by-step instructions for operators new to the instrument. Information on use of the software is included.
:::



### 4.10 Analyzing

1.  Once the system is tuned, data may be analyzed.
2.  Spigot provides real-time analytical tools described in the Spigot interface chapter.
3.  For detailed statistical analysis, Spigot allows data to be stored in the *.fcs file format that can be read and manipulated with separate analysis software such as FlowJo.

#### 4.10.1 Save *.fcs files

1.  To save data to an *.fcs file from Spigot, refer to LIST TOOL and QUICK LIST sections in the Spigot Interface chapter.



### 4.11 Drop Delay

1.  Setting the proper drop delay is critical for sort purity and recovery.
2.  When the same nozzle tip and sheath pressure are used each day, the delay setting will be very similar day to day, and thus some of the following steps may not be necessary.
3.  The following instructions describe how to find the proper delay setting without knowing the previous day's settings.

1.  It is very important that the fluid stream has had at least 30 minutes of warm-up time to stabilize. It is also very important that there are no bubbles in the nozzle.
2.  Refer to the Stream Generation section to make sure that the nozzle is properly purged of bubbles.

#### 4.11.1 Optimize Droplet Formation

1.  Re-optimizing the BOP as described in the above section on Droplet Formation.
2.  

1.  Use the PIEZO AMPLITUDE knob to ensure that the waveform of the jet at the BOP remains constant through the delay calibration process.
2.  Minor adjustments to the PIEZO AMPLITUDE knob are normal.
3.  If a major adjustment is necessary, then check to make sure that there are no bubbles or clogs in the nozzle.

#### 4.11.2 Use Spigot to approximate Drop Delay

1.  Open the SORT DELAY screen in Spigot.
2.  Scan the drop camera to the points indicated, using the bottom edge of the drop monitor as a reference point.
3.  Enter the value of the DROP POSITION (indicated on the pressure console) for each position.

##### img: Drop Position readout on Pressure Console

1.  Enter the master clock frequency in Hz and click Calculate.

##### img: Clock setting (KHz) on function generator

1.  Spigot will calculate the approximate drop delay.
2.  Click Set Drop Delay in Spigot to set the system drop delay to the calculated value.

#### 4.11.3 Run test series with the WDU

1.  Run calibration particles at a low rate (100-1000/sec) and draw a SW around them as described in the Sort Gating Section.
2.  From the TRAY screen in Spigot, send the WDU to Calibration > Present.
3.  Place a microscope slide in the WDU and insert it in the first position.
4.  Send the WDU to Calibration > Sort Ready.
5.  Open the SORT screen in Spigot and choose the number of particles to be sorted for the calibration run.
6.  It is recommended (and these instructions will assume) that the sort count be set to 20.
7.  Open the TRAY screen in Spigot and click Sort! The WDU will place a 5x5 matrix of puddles on the slide.
8.  Each puddle on the slide represents a sort command for the set number of particles (20) at different delay settings.
9.  After the WDU deposits the 225 puddles, a screen will pop up that lists the delay setting Spigot used for each of the 25 puddles.
10. Take the slide to a fluorescent microscope and count the number of particles in each puddle.
11. A Drop Delay Worksheet is provided in the appendix of this manual as a suggested method for keeping track of the particle counts per puddle.
12. Identify the three puddles in series with the highest particle counts.
13. Take note of the position of the middle puddle of the series of 3 with the highest count.
14. Read the delay value from the Spigot delay setting popup that corresponds to the puddle indicated above.
15. This will be the delay setting used for the next calibration run.

#### 4.11.4 Set Drop Delay

1.  To set the drop delay to the value indicated by the delay setting popup, open the SIMPLE CONFIG screen in Spigot and change the delay setting as required.

#### 4.11.5 Repeat Delay Calibration

1.  Repeat the above steps until two calibration series in a row yield the same value for the delay.
2.  This will be the delay setting used for the rest of the day.
3.  Remember that sheath pressure, master clock setting, and BOP all need to remain constant in order for this delay setting to be accurate.
4.  If any of those settings change, the delay will need to be reset as described above.

### 4.12 Sort Modes

1.  When sorting, it is important to consider both coincident particles and the position of particles inside droplets.
2.  Coincidence occurs when two or more particles are closer than the spacing of the droplets, so that more than one particle ends up in the droplet.
3.  Obviously, these droplets must not be sorted in order to achieve maximum purity.
3.  Coincidence is higher when sample rates are higher and when droplet rates are lower; thus, choosing a proper sort mode depends on those settings and the desired result of the sort: Purity or Recovery.
4.  When the exact count of a sort is important, such as when sorting one particle into each of 96 wells, it is important to consider the position of the particle inside the droplet since particles near the droplet boundaries may end up in either droplet.

#### 4.12.1 inFlux Systems

1.  The inFlux sorter provides circuitry to take care of these issues.
2.  Coincidence circuitry allows the user to set a coincidence window (in the number of drops) before or after an event is detected.
3.  If another particle is detected within the coincidence window, the particles will not be sorted.
4.  A 1-1/2 drop sort mode is also available.
5.  The 1-1/2 drop sort mode will sort two drops when a particle is on a droplet boundary and one particle when a droplet is in the center of a drop, ensuring accurate sort count.
6.  Cytopeia recommends three different combinations of these two settings to arrive at useful sort modes depending on the desired outcome of the operator.
7.  Other settings may be experimented with as desired.

#### 4.12.2 Setting 1: High throughput, high purity, low recovery (<85%)

1.  Use this setting when sample rates are high compared to droplet rates, and when the count of the sorted particles is less important.
2.  Pre and Post Coincidence = 3/4 drop, 1 drop sort

#### 4.12.3 Setting 2: Low Throughput, High Purity, Higher Recovery (<95%)

1.  Use this setting when sample rates are low compared to droplet rates, and when the count of the sorted particles is important.
2.  Pre and Post Coincidence = 1-1/4 drop 1-1/2 drop sort

#### 4.12.4 Setting 3: Highest Recovery, Lower Purity

1.  Use this setting when high recovery is desired and purity is not as important.
2.  Pre and Post Coincidence = Disable Coincidence, 1-1/2 drop sort

#### 4.12.4 How to set the coincidence and sort mode

1.  The 1 -- 1-1/2 switch on the control panel switches the sort mode from 1-drop (switch down) to 1.5-drop (switch up) while sorting.
2.  Note that the same switch is also used to fine-tune the phase of the SOP as described in the droplet formation section above.
3.  The function is unrelated to the sort mode function and is only intended to be used for setup, and not for sorting.
4.  Coincidence settings can be changed in the CONFIGURE ADCs menu in Spigot.
5.  Do not set the coincidence higher than 1-1/4 drop.

### 4.13 Sample Collection

1.  The WDU feature allows samples to be collected into 5ml sample tubes and 96-well plates.
2.  Additional collection trays can be developed for special configurations.
3.  Make sure that the system is aligned, droplet formation is stable, and that the delay setting has been calibrated before collecting sample.

#### 4.13.1 Running Samples

1.  When running samples, it is critical that the sample line be back-flushed for about 30 seconds with switching to new samples to minimize sample carryover.
2.  If sample carryover is a major concern, load a sample tube with sheath fluid and run clean water through the sample line at high sample pressure (~5 PSI above sheath pressure) until no particles are detected.
3.  Alternatively, a new sample line can be installed with ease, ensuring no sample carryover.

#### 4.13.2 Left and/or Right Sort

1.  To collect up to two sample populations simultaneously, use the 2-Tube sort mode.
2.  To ensure that the sort streams will fall into the collection tubes, you may wish to double-check the setting of the PIEZO and the STREAM DEFLECTION amplitudes as described in the droplet formation section.
3.  Load two 5ml sample tubes into the WDU insert.
4.  Send the tray to the 2-Tube > SORT READY position.
5.  Make sure that the PLATES are on and that the STREAM DEFLECTION is on.
6.  Choose the number of cells to be sorted left or right from the SORT screen.
7.  Click on Left Sort or Right Sort to begin sorting (based on your gating scheme) into the collection tubes.
8.  A progress bar will pop up in Spigot to give feedback on the number of cells sorted as the sort progresses.

#### 4.13.3 96-Well Tray

1.  96-well Sorting allows a particular number of particles to be placed into each of the wells of a 96 well plate.
2.  Follow directions above but use the 96-Well mode for all tray settings.

#### 4.13.4 Sort Bypass

1.  Selecting Bypass mode in the right toolbar’s sort controls rather than Normal will enable sorting without counting.
2.  As much sorted sample as available in the sample tube will be sorted without count feedback.


### 4.14 Shutting Down

#### 4.14.1 Close Spigot

1.  *No text*

#### 4.14.2 Shut down fluidics

1.  For optimal results and decreased chances of contamination, the inFlux fluidics should be shut down, emptied out, and allowed to dry overnight.
2.  Use the following shutdown procedure:
    1.  Allow the sample line to backflush for at least one minute.
    2.  Close the SHEATH VALVE, SAMPLE VALVE, and PURGE VALVE.
    3.  Turn off the sheath pressure by flipping the AIR switch down on the Pressure Console.
    4.  Empty the sheath reservoir, rinse, and fill with about 200mL of 0.22um filtered distilled or de-ionized (or MilliQ) water.
    5.  Reattach the sheath reservoir (*Ed: Without inline filter I imagine?*), and flip up the AIR switch on the pressure console.
    6.  Reopen the SHEATH, SAMPLE, and PURGE VALVES, let the clean water flow through the system until it has been emptied the sheath reservoir and system blows air.
    7.  Allow the system to blow air until no more water is coming up the sheath line and until no more water drips from the sample line when backflushing.
    8.  Close the SHEATH VALVE, remove the nozzle tip (put nozzle tip in a safe place), place a flush bucket under the nozzle assembly and re-open SHEATH VALVE.
    9.  Let the system blow out for 10-15 minutes to fully dry out the tubing.
    10.  Flip the AIR switch to off on the Pressure Console.
    11.  Remove sheath and waste reservoir and empty all liquids.
    12.  Rinse and/or clean reservoirs as necessary.
    13.  Turn reservoirs upside down on the table on a piece of absorbing tissue.
    14.  Be careful not to damage the gauges or fittings.

#### 4.14.3 Shut down electronics console

1.  Turn the Electronics Console off by flipping the MAIN POWER switch on the bottom left of the console to the OFF position.
2.  Turn off all switches on the Control Panel.

#### 4.14.4 Shut down lasers

1.  Shutdown all lasers as specified by the manufacturer.
