---
title: Running Samples
icon: vial-circle-check
---




[[toc]]

## Sample Pre-Flight

### Previously...

Ensure that:
1.  The The Waste Tank is plumped and the dial shows approx 5.
    1.  vacuum pump turned on via the front panel power switch.
    1.  The vacuum pump has its exhaust fan pointed out through the hole in the side of the plastic bin.
    1.  The waste tank is connected to the influx sheath waste lines and the vacuum pump.
2.  The sheath tank is plumbed and the 0.2um Sterivex is installed and free of bubbles.
3.  The nozzle assembly flowpath is free of bubbles.
3.  Ensure that the Sheath PSI is set to 15.0 (sheath readout)
    1.  Set to 15.0 using the Sheath PSI knob on the right side of the regulator tower.
2.  The Sheath fluid is running and the RUN button is lit green.
3.  The Stream is centered over the waste pipe using ILLUM and the Stream camera.

### Sample line is primed

1.  The Sample Line is purged of air using backflush:
    -   Press the BACKFLUSH Button (Next to Sample Cradle) to open the sample valve.
    ::: note Backflush Details
    -   The BACKFLUSH button can only be used when either RINSE or RUN are lit up. 
    -   The override button will open the sample valve regardless of the sheath control buttons.
    :::
3.  The Sample valve contains an infrared sensor that detects air in the sample line. If it trips, then:
    -   Error Light 2 (below backflush ) will be **unlit**
    -   The SAMPLE button will be disabled 
4.  The Sample Air Filter is installed.
    ::: note asset “Sample air filler”
    Properly installed on the instrument. This filter is normally good for 6 months.
    :::
    1.  The sample air filter provides the sample psi air pressure to force the sample fluid into the sheath fluid. 
    6.  The air filter connects to the center of sample T connector. 
    7.  Airflow in that filter flows from the luer slip end (influx side) to the female luer lok (sample T side)
    8.  Check that the air filters luer lok on the sample T side is screwed in.
    9.  then that the filter’s Slip Plug is snugly seated into tue influx-side female luer.
1.  The Flowmeter software is on and running.

### Set Sample PSI

2.  Set the sample PSI
    2.  Set the Samle Offset Knob to the “middle” of it’s range. There should be about 6mm of thread showing.
        ::: note asset “Sample offset knob centered ”
        The knob is approximately at its midway point.
        ::;
        3.  We do this to give ourselves wiggle room after setting the primary Sample PSI
    3.  Use the Primary Sample PSI knob on the right side of the regulator tower to set the Sample PSI to 16.1?
4.  Check the BOOST psi
    4.  Pressing and holding the brass BOOST button should increase the Sample PSI (in sample readout) by approx 20. 
        -   Use the BOOST knob to adjust the BOOST PSI to match this behavior.
    ::: note asset “Sample psi and boost psi”
    -   sample psi display should show approx 16.1 (or +1.1 of sheath psi) for 30ul/min flow rate.
    -   Boost is + 20 of sample
    :::
    ::: note Relative vs Absolute PSI
    -   The Sheath and Sample PSI knobs are absolute values
    -   The BOOST and Sample Offset are relative settings that add (or subtract, in the case of Sample Offset) to the Sample psi setting.
    :::



## Sample Fluidics

### Placing Sample Tubes in the Sample Cradle

1.  Ensure Sample Line is purged of air by pressing the BACKFLUSH Button (Next to Sample Cradle) and letting Sheath Fluid drip out the line
3.  Place tube on Sample Cradle
    ::: note asset “Sample tube on cradle before closing handle”
    Hold the tube in place and swing the sample cradle handle CW to tighten the tube on the rubber sample tube nozzle.
    :::
    1.  Install the tube by raising it upward around the Sample Line until the tube rim meets the Rubber Sample Cradle Nozzle. Do not manually press the Sample Tube onto the Rubber Nozzle
    2.  Holding the Tube up against the Rubber Nozzle, use the Handle to swing the Sample Cradle Base clockwise to lock the Sample Tube in Place.
    3.  By using the Sample Cradle Base, the tube will be gently and evenly pushed snug agains the Rubber Nozzle.
        1.  Note: When Removing Sample Tubes that have become pressurized, very slowly turn the Sample Cradle Base Handle CCW to gently release the pressure. That will prevent Sample Fluid from being ejected out of the Sample Tube.
    ::: note asset “sample tube installed in cradle”
    Ready to rock.
    :::

### Injecting sample into sheath

1.  Put the sample tube onto the sample cradle and close it.
2.  Press SAMPLE to open the sample valve.
3.  Check the Flowmeter Software and use the Sample Offset knob to adjust the flow rate to approx +30ul/min. 

::: details Problems? 
I’m not surprised.
:::

### Measuring Sample Volume

::: warning When sample volume accuracy is critical
If sample volume accuracy is important to your project, you should do the following. These are listed in order of importance and are detailed below.
    1.  Use balance to record the mass difference of every sample, in addition to the flowmeter data.
    2.  Test the flowmeter accuracy with MilliQ water
    2.  Keep your sample flow rate below 50 ul/min. 
    5.  Run both flowmeters on `Flow [Linearized]` and record log files for each meter.
:::

### Maximizing volume accuracy

1.  Use balance to record the mass difference of every sample, in addition to the flowmeter data.
		1.  You will need to know the salinity to 
		2.  Get the "pre" mass after you have filled the sample line and the event rate has stabilized
		2.  Do not backflush until after you have recorded the "post" mass and the `Totalizer` volume.
2.  Test the flowmeter accuracy with MilliQ water
    2.  Use the Balance to compare the flowmeter totalizer volume with the mass difference.
    3.  The basics of running samples will be detailed in "sample basics" after the Fluidics setup.
2.  Keep your sample flow rate below 50 ul/min. 
    5.  Above 60ul/min, the *Sensor Viewer* `Totalizer` volume will begin to overestimate the volume. 
    6.  The disparity will increase with faster flow rates. The estimates diverge by ~4% at 80ul/min and by ~10% at 100ul/min.
    7.  The disparity is, however, consistent, and a linear correction (relative to the chosen flow rate) can be useful if volume is important but time is short.
5.  Run both flowmeters on `Flow [Linearized]` and record log files for each meter. 
		6.  See the Flow Meter


