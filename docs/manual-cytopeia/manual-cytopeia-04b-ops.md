--- 
title: 4. Operating Procedures B
--- 

<!-- filename: manual-cytopeia-04b-ops.md
-ops.md -->

::: note Summary
This chapter contains detailed step-by-step instructions for operators new to the instrument. Information on use of the software is included.
:::


# 4.6 Sample Introduction
---

## 4.6.1 Load Sample Tube

1.  Use only Falcon 35-2063 5mL sample tubes.
2.  Cytopie recommends all samples be filtered to 40um to prevent nozzle clogs.

1.  Fill tube with up to 3 mL of sample.
2.  Load tube into sample tube holder and lock the tube in place over the stopper using the lever.
3.  Take care not to damage the sample tube.

# img: Locking sample tube in place

::: warn
1.  Use care when removing the sample tube.
2.  The sample tube is usually pressurized and may spill or splatter.
3.  To properly remove the sample tube:
4.  Move the lever slowly backward until the tube is pushed down into the recessed area of the lever.
5.  Pressure is then released, and the tube may be removed safely.
:::


## 4.6.2 Open SAMPLE VALVE

1.  Check that the sample pressure is set about 1 PSI over the sheath pressure.
2.  Open the SAMPLE VALVE.

## 4.6.3 Run sample at a low rate

1.  Aim the laser so that it is just above the center pinhole, in between pinholes for multi-laser systems.
2.  When running bright calibration beads or cells at a low flow rate, a narrow sample core can be viewed in the pinhole monitor.
3.  If the flow rate is too high, the sample core will be very large, approaching the size of the jet.
4.  If no beads are observed flashing in the stream, then the flow rate is too low.
5.  (Ken Note) *"We use spheriotech ultra rainbow beads at one drop to one ml sheath (approx).*

# img: Pinhole camera image, with beads showing in stream

1.  The flow rate of the sample is determined by the sample pressure setting.
2.  A sample pressure of 1 PSI over sheath pressure at low flow rate is usually achieved; however, this setting depends on the concentration of the sample.
3.  When first running a sample, you may wish to BOOST the sample pressure temporarily in order to get sample to the jet quickly.
4.  Hold down the BOOST button to boost the sample to 3 PSI over the sheath.
5.  Adjust sample pressure until a low flow rate is achieved.
6.  Iterate between these steps until the sample core is as narrow and bright as possible:
    1.  Adjust the y-axis of the illumination stage so that the brightest signal is observed in the pinhole monitor.
    8.  Adjust the x-axis of the nozzle stage so that the signal is tightened (spatially) in the pinhole monitor.
7.  Use the z- and y-axes of the nozzle stage to place the sample core in the center of the pinhole.
8.  The SAMPLE VALVE may be closed if desired at this point to preserve the sample until data acquisition parameters are set up.


# 4.7 Data Acquisition
---

1.  Spigot software is used for most all data acquisition controls.
2.  Spigot allows control of PMTS and allows custom gating schemes to be developed and saved in configuration files.
3.  It is recommended that a configuration file be saved for each protocol run on the inFlux.
4.  See the chapter on the Spigot Interface for detailed descriptions of the spigot functions.
5.  This chapter will refer to fluorescence channels as FL1-FL7 and forward and side scatter as FSC and SSC.

## 4.7.1 Open a Spigot Configuration File (*.sco)

1.  If a spigot configuration file has already been saved for alignment particles, open that file and skip the steps outlined below for configuring Spigot.
2.  Otherwise, follow the directions below and set up a new configuration and save the settings in a new *.sco file by selecting FILE > SAVE CONFIGURATION FILE in Spigot.

## 4.7.2 Activate PMTs

1.  Activate all PMTs that will be used during alignment.
2.  It is crucial that the FSC PMT is activated since it is the signal that is used for the system trigger.
    1.  No data will be acquired unless the FSC PMT is activated.

## 4.7.3 Choose parameters to plot

1.  Choose parameters to plot in Spigot's Left display as described in the Spigot Interface chapter.
2.  Typically FL1 is plotted vs FSC and these instructions will detail how to set-up and align those two parameters.
3.  Use a similar method for plotting other or more parameters.

## 4.7.4 Set initial PMT gains

1.  The inFlux system is shipped pre-configured for linear (lin) or logarithmic (log) amplification for fluorescent channels.
2.  These settings can be changed on the Patch Panel on the front of the electronics console.
3.  Spigot can also be set to either log or lin for any channel as a visual reminder of the controlling hardware setting and to display logarithmic scales on data plots.
4.  As PMT gains are increased, the system will begin to acquire pulse data.
5.  The oscilloscope is used to monitor the pulses and is very useful for setting initial PMT gains.
6.  From Spigot's Simple Config screen, set the [Scope Display] > [CH1 and CH2] displays to FSC and FL1 (usually channels 1 and 3).
7.  Use Spigot to increase the FSC gain until pulses of about 5V can be detected on the oscilloscope.
8.  Do the same for FL1.
9.  Since the range for pulse height measurements in Spigot is 0-10 V, pulse heights of about 5V should correspond to data that is acquired in about the middle of a FL1 vs FSC plot in the left display.
10. Make sure that data are being acquired by Spigot and adjust the PMT gains so that the data are not off-scale.

## 4.7.5 Set trigger level and event trigger delay

1.  [Trigger Level] sets the threshold for the lowest detectable signals and is set off the system trigger (usually FSC).
2.  Its intended use is to eliminate noise.
3.  It is best to keep the [Trigger Level] as low as possible since the system will not detect any events that fall below the threshold, and those events may end up in the sorted sample.
4.  With multi-laser systems, it is necessary to set the Event Delay for each additional laser.
5.  Align additional lasers using the pinhole monitor and the oscilloscope.
6.  Adjust the event delay from the menu until the signals from the additional lasers fall into appropriate bins as displayed on the third oscilloscope trace (labeled as the ALL cable).
7.  Finally, make sure that additional laser channels are set to the appropriate levels (1, 2, or 3) in the [SIMPLE CONFIG] screen. Typically, [EVENT DELAY] will only need to be changed if the sheath pressure of the system is changed.


# 4.8 Alignment
---
1.  Fine-tuning of the inFlux involves positioning the sample core at the focal point of the objective lens in the pinhole, illuminating the sample core optimally, and aligning the FSC.
2.  PMT gains may need to be adjusted as the system is to keep data on scale.

## 4.8.1 Focus light emission from the sample in the stream

1.  Open sample valve and ensure that the sample flow is flowing at a low rate.
2.  As described earlier in this chapter, ensure that the sample core is:
    1.  focused
    2.  maximally illuminated
    3.  in the center of the pinhole using:
        1.  the pinhole monitor
        2.  Nozzle Stages
        3.  Illumination Stage

## 4.8.2 Optimize Fluorescence Channel

1.  While a FSC signal must be detected first (if it is the system trigger), it is important to first align to a FL or SSC channel since the objective lens is fixed while the FSC detector stage allows adjustment.
2.  Some flow cytometer operators prefer to align the FL signals using linear amplification.
    1.  To do so, move the BNC connector on the front of the electronics console from LOG to LIN for the appropriate channel.
    2.  Remember to set the channel back to LOG after tuning and use Spigot to re-adjust the PMT gain appropriately.
3.  Adjust the y-axis of the illumination stage and use the oscilloscope pulse monitor and the left Spigot screen to maximize the signals from the FL1 detector.
4.  The pulse should be as high as possible and the signal in Spigot should be maximized.
5.  Remember to ignore the FSC signal while tuning the FL channel.

## 4.8.3 Optimize forward scatter signal

1.  Once the FL signal is optimized, the FSC signal can be optimized.
2.  Use the y- and z-axes of the forward scatter stage to maximize the signal from the FSC detector.

## 4.8.4 Optimize additional laser paths

1.  After the first laser path is aligned for fluorescence and FSDC, additional laser paths can be aligned for fluorescence using their respective illumination stages as described in this section.

# 4.9 Sort Gating
---

1.  Sort gates can be defined via the Spigot interface.
2.  Up to 12 (6 left and 6 right) 2-parameter sort windows can be defined at the same time.
3.  Sort windows are two-dimensional sort gates that allow the operator to select portions of data to be sorted.
4.  Many options, such as sort filtering, are available.
5.  These instructions will describe how to set up a basic sort window as well as a few advanced features.
6.  The Spigot Interface chapter also contains reference information.

## 4.9.1 Draw Sort Windows in Spigot

1.  To draw a sort window (SW) in Spigot, first click on the SORT.
2.  The right display will contain six squares corresponding to the instrument's six Look-up Tables ("LUTs").
3.  Highlight LUT 1 by clicking inside the square of LUT 1.
4.  The border around LUT 1 will turn orange, indicating that LUT 1 is selected for editing.
5.  Choose the parameters for the SW (i.e., FL1 vs FSC) by changing the X and Y axes selection on the left display.
6.  The LUT will inherit the axes of the left display's plot when axes are changed.

1.  In the left toolbar's sort window function area, choose whether the gate will be a left SW, right SW, or both by clicking left, right, or both.
2.  To draw a rectangular or elliptical SW, click on Rectangle or Ellipse, and left-click and drag on the left display.
3.  To draw a SW of any shape (polygon), single left click again and continue the process until the desired shape is drawn.
4.  Right-click to close the polygon and finish drawing the SW.
5.  Once the SW is drawn on the left display, it will also appear in the LUT on the Right Display if Show Sort Windows is checked in the right toolbar.
6.  Data that have a left SW drawn around them will become red.
7.  Data that are selected for both right and left sorting will become yellow and will not be sorted.

1.  Additional LUTs can now be selected, and different parameters may be selected for SW drawing. For example, LUT 2 may be chosen to display FL2 vs SSC.
2.  By drawing another SW around these new parameters, it is possible to detect a particle with four desirable characteristics:
    1.  e.g., FSC FL1 FL2 FL3
        1.  It may fluoresce green.
        2.  Have particle forward and perpendicular scatter values and not fluoresce red.

1.  In this fashion, up to 12 parameters can be set for both right and left sorting (depending on the number of photomultiplier tubes included in the particular inFlux configuration).
2.  SWs follow "and" logic; as additional SWs are created in multiple LUTs, only data selected in *all* SWs will be sorted.
3.  Data that are selected for the left or right sorting in *all* SWs will appear green (left sort) or red (right sort) in the Left Display.

4.  An operator may also choose data outside of a SW to be sorted again by selecting the LUT in the Right Display, drawing a SW in the left display, and clicking on Left or Right and clicking Outside in the left toolbar.
5.  This allows for "not" logic to be used when multiple SWs are drawn in multiple LUTs.

1.  Overall sort statistics are displayed on the left display, while individual statistics for each LUT are displayed next to each LUT.
2.  LUT statistics report the percentage of particles chosen for left sort, right sort, neither, or percentage of particles selected for left, right, neither, or both sort when SWs have been drawn in multiple LUTs.

1.  The Reset button (in the sort window function area) can be used to reset SWs drawn in a particular LUT window by selecting the LUT and clicking on Reset.
2.  All LUT SWs can be reset by clicking the Reset All button in the sort window function area.
3.  SWs may be moved or stretched by clicking on the modify button.

## 4.9.2 LUT/Classifier Filters

1.  Spigot allows data filtering based on SWs for easy identification of populations and subpopulations across many parameters.
2.  Two types of filtering are possible: LUT filtering and classifier filtering.
3.  When LUT filters are activated, the left display will only show data that are inside SWs drawn in the LUTs.
4.  LUT SWs can be filtered through in any combination, alone, or not at all.
5.  When a classifier filter is selected, the left display will only display data that have been selected for sorting in *all* LUT displays (i.e., the actual data to be sorted).

1.  To apply a LUT filter, click on SHOW LUT FILTERS.
2.  A small rectangle of six boxes will appear in the left display. These six squares represent the 6 LUTs and by clicking on one of the squares, the data will be filtered through any SW drawn in that particular LUT.
3.  Multiple LUTs can be filtered through in combination by clicking on more of the squares.

1.  Classifier filters can be applied by changing the left toolbar's drop-down menu selection from No Classifier Filter to the desired classifier filter setting.

