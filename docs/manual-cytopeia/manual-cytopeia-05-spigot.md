--- 
title: 5. Spigot
--- 


---

-   This chapter describes the layout of the Spigot interface and the various options available to the user within each of the various screens.

### 5.1 Overview

1.  The Spigot interface consists of three main components: the toolbars and the left and right displays.
2.  The size and position of these three components on the screen cannot be changed.
3.  The left display is fixed in place, and it always contains a two-dimensional (2D) data display with corresponding histograms.
4.  Particle rate, sort percentages, and other data are displayed here as well.

![Spigot Display](image_url) *ahh, the good ole days*

### 5.2 Left Display

1.  The left display shows a 2D, real-time dot plot.
2.  Each dot represents data the sorter has received from its photo-multiplier tubes (PMTs) as processed by the analog-to-digital converters (ADCs).
3.  These data represent the intensity, as detected by the PMTs, of the light re-emitted by particles in the sample stream, upon laser excitation and after the light has passed through the instrument's filter set.

#### 5.2.1 Basic Information

1.  The user can select which parameters to display on the X and Y axes of the left display by choosing from available parameters from the dropdown lists labeled X and Y on the left side of the toolbar.
2.  Particle injection rates are shown in the lower left-hand corner.
3.  The default color of the dots displayed in the 2D plot is white, and they change color depending on whether they fall into gates corresponding to the left (green), right (red), or both (yellow) sort directions.
4.  The user has the option of changing these colors using GLOBAL OPTIONS, discussed later in this chapter.

#### 5.2.2 Sort Windows

1.  For sorting operations, the left display is used in conjunction with the right display's sort screen for drawing sort windows (SWs).
2.  When one of the six LUTs displayed on the right display is highlighted with an orange border, the left display changes to show the same parameters as the highlighted LUT.
3.  SWs can be drawn in any shape, moved, resized, or removed in the left display.

#### 5.2.3 Classifier Filters

1.  Selecting from the Classifier Filter drop-down list on the left side of the toolbar allows the user to see what is actually being sorted based on the SWs drawn and activated in the LUTs.
2.  For example, applying a Left Classifier Filter displays the result of all the active Left SWs drawn in the LUTs (using "and" logic).
3.  Applying these filters does not alter the actual sort.
4.  Sort decisions are governed by the SWs as drawn and activated using the Right Display’s LUTs; applying a classifier filter only modifies the displayed data.

#### 5.2.4 LUT filters

1.  For additional convenience during sorting, the user can simulate the effect of individual LUTs by selecting Show LUT Filters in the left side of the toolbar.
2.  This places six small blue squares, representative of the six LUTs, in the upper left corner of the display's dot plot.
3.  By clicking on one or more of these squares, the user can simulate how the dot plot and the sort results would change if particular LUTs were made active or inactive.
4.  Thus, if six LUTs have been defined, this LUT simulation tool can be used to evaluate the pass through (or exclusion) of particles by the LUTs either individually or in groups.
5.  This allows displaying data using "or" logic, if desired.
6.  Again, applying a LUT filter only changes the displayed data, not the actual particles being sorted.

#### 5.2.5 Sort Data

1.  Percentages of particles displayed as falling into the left and right SWs are displayed in the upper left-hand corner of the left display.
2.  Clicking on that portion of the screen toggles the displayed data between percentages and particles/sec.
3.  This data will change with the application of classifier filters.

---

-   This chapter describes the layout of the Spigot interface and the various options available to the user within each of the various screens.

### 5.1 Overview

1.  The Spigot interface consists of three main components: the toolbars and the left and right displays.
2.  The size and position of these three components on the screen cannot be changed.
3.  The left display is fixed in place, and it always contains a two-dimensional (2D) data display with corresponding histograms.
4.  Particle rate, sort percentages, and other data are displayed here as well.

![Spigot Display](image_url) *ahh, the good ole days*

### 5.2 Left Display

1.  The left display shows a 2D, real-time dot plot.
2.  Each dot represents data the sorter has received from its photo-multiplier tubes (PMTs) as processed by the analog-to-digital converters (ADCs).
3.  These data represent the intensity, as detected by the PMTs, of the light re-emitted by particles in the sample stream, upon laser excitation and after the light has passed through the instrument's filter set.

#### 5.2.1 Basic Information

1.  The user can select which parameters to display on the X and Y axes of the left display by choosing from available parameters from the dropdown lists labeled X and Y on the left side of the toolbar.
2.  Particle injection rates are shown in the lower left-hand corner.
3.  The default color of the dots displayed in the 2D plot is white, and they change color depending on whether they fall into gates corresponding to the left (green), right (red), or both (yellow) sort directions.
4.  The user has the option of changing these colors using GLOBAL OPTIONS, discussed later in this chapter.

#### 5.2.2 Sort Windows

1.  For sorting operations, the left display is used in conjunction with the right display's sort screen for drawing sort windows (SWs).
2.  When one of the six LUTs displayed on the right display is highlighted with an orange border, the left display changes to show the same parameters as the highlighted LUT.
3.  SWs can be drawn in any shape, moved, resized, or removed in the left display.

#### 5.2.3 Classifier Filters

1.  Selecting from the Classifier Filter drop-down list on the left side of the toolbar allows the user to see what is actually being sorted based on the SWs drawn and activated in the LUTs.
2.  For example, applying a Left Classifier Filter displays the result of all the active Left SWs drawn in the LUTs (using "and" logic).
3.  Applying these filters does not alter the actual sort.
4.  Sort decisions are governed by the SWs as drawn and activated using the Right Display’s LUTs; applying a classifier filter only modifies the displayed data.

#### 5.2.4 LUT filters

1.  For additional convenience during sorting, the user can simulate the effect of individual LUTs by selecting Show LUT Filters in the left side of the toolbar.
2.  This places six small blue squares, representative of the six LUTs, in the upper left corner of the display's dot plot.
3.  By clicking on one or more of these squares, the user can simulate how the dot plot and the sort results would change if particular LUTs were made active or inactive.
4.  Thus, if six LUTs have been defined, this LUT simulation tool can be used to evaluate the pass through (or exclusion) of particles by the LUTs either individually or in groups.
5.  This allows displaying data using "or" logic, if desired.
6.  Again, applying a LUT filter only changes the displayed data, not the actual particles being sorted.

#### 5.2.5 Sort Data

1.  Percentages of particles displayed as falling into the left and right SWs are displayed in the upper left-hand corner of the left display.
2.  Clicking on that portion of the screen toggles the displayed data between percentages and particles/sec.
3.  This data will change with the application of classifier filters.

#### 5.2.6 Histograms

1.  The histogram is also correspondingly colored so that the user can quickly recognize how the distribution of points falls within each sort gate.
2.  Peak and coefficient of variation information for each histogram is also displayed.
3.  By moving the mouse pointer over the dot plot, the user can move cross-hairs to determine the coordinates of any particular point on the plot.

#### 5.2.7 Quadrant Data

1.  If the user clicks the left mouse button while positioning these cross-hairs, blue lines will be placed in the plot dividing it into quadrants.
2.  The numbers of particles falling within each quadrant is displayed in small blue boxes in the upper left area of the display.

### 5.3 Right Display

1.  The right display can be customized to show a number of different instrument configurations and data analysis screens.
2.  The available screens are:
    -   Sort Controls
    -   Sort Controls with Histograms
    -   Simple Hardware Configuration (“Simple Config”)
    -   Simple Hardware Configuration 2 (“Simple Config 2”)
    -   Configure ADCs
    -   Configure PMTs
    -   Configure Compensation
    -   Sort Delay
    -   Analysis (with five different views)
    -   Tray
3.  The right display screens can be selected by clicking on one of the colored buttons on the toolbar or via the CHANGE DISPLAY drop-down menu on the menu bar.
4.  Some of the screens present overlapping data or configuration choices.
5.  Users can set the same parameter on more than one screen and other affected screens are immediately updated to reflect the new setting.
6.  Where appropriate the right main section of the toolbar changes to allow user input for customizing the selected screen and setting various parameters.
7.  In other cases, the right section of the toolbar is completely replaced by the selected screen.
8.  Each of these right display screens are described in more detail in the remainder of this section.

#### 5.3.01 Sort Controls

1.  When Spigot is first started or if SORT is clicked, the right display shows six numbered squares representing LUTs and the right side of the toolbar changes to show sorting related options.
    1.  For example, the figure at right shows LUT 1 with a left (green) SW active.
2.  Spigot thus enables specifying up to twelve SW (six left and six right).
3.  For each set, the current data is shown relative to the axes in which the SWs are defined.
4.  These smaller displays are updated in real-time similar to the larger dot plot in the left display, and immediately reflect changes made in the SW via the left display.
5.  Dots are also color-coded in these windows in a similar fashion to the left window.
6.  Clicking on any LUT immediately brings its contents up on the left display. In this way, users can watch their data in real-time on up to six sets of axes and quickly switch between these axes on the larger left display.
7.  Statistics are also displayed for each of the defined SWs as well as current SW status information.
8.  Once the SWs have been created to the user’s satisfaction, sort controls are conveniently located at the top of the screen.

#### 5.3.02 Simple Hardware Configuration 1

1.  SIMPLE CONFIG is a right display screen that shows a comprehensive collection of options to configure the Spigot interface for ADC channels 1 through 8.
2.  This display includes some of the commonly used settings available via the Configure ADCs and Configure PMTs screens, as well as some GLOBAL OPTIONS.

#### 5.3.03 Simple Hardware Configuration 2

1.  The SIMPLE CONFIG 2 screen is identical to the SIMPLE CONFIG display, except that more channels may be configured, up to a total of 12, depending on the number of ADCs that are installed on the inFlux.
2.  SIMPLE CONFIG 2 shows channels 5 through 12, while SIMPLE CONFIG shows channels 1 through 8.
3.  Thus, channels 5 through 8 are configurable on either hardware configuration screen.

#### 5.3.04 Configure ADCs

1.  This screen allows users configuration of the ADCs.
2.  All of these settings (except for Coincidence controls at bottom left) are available from the hardware configuration screens.
3.  On the right side of the screen, each ADC’s digital gain can be adjusted, and ADCs can be assigned to one of three “events”.
4.  On the upper left side of the screen -- TRIGGER SETTINGS -- ADC channels are selected for display on the oscilloscope using their Scope Display control.
5.  Below that are arrow type controls for setting Trigger Level for Event 1 and Trigger Delay for Events 2 and 3.
6.  The lower left part of the screen -- SORT and COINCIDENCE -- allows setting the sort delay parameter.
7.  In some circumstances, coincidence may be enabled and adjusted here as well.

#### 5.3.05 Configure PMTs

1.  Each of the PMTs installed on the inFlux may be individually configured using this right screen display.
2.  All of these controls are also available on the hardware configuration screens.
3.  For each PMT, power can be toggled on and off, and a green light shows power on.
4.  Gain may be adjusted using the slide control (Note: gain can be adjusted using the orange triangle sliders on the axes of the 2D plots if enabled in GLOBAL OPTIONS).
5.  PMT amplification may also be toggled between logarithmic and linear.
6.  The type of each PMT installed on the inFlux may be set using the drop-down list.

#### 5.3.06 Configure Compensation

1.  Spigot can be configured to change the data display to compensate for spectral overlap.
2.  Clicking COMPENSATE changes the right display to that shown in the image below.
3.  A checkbox at the top turns software compensation on and off.
4.  A slider control below that adjusts noise threshold level.
5.  Four sets of channels can be set up for compensation.
6.  As the note indicates at the top of the screen, a channel can only be compensated with respect to one other channel, and Spigot will indicate if this rule has not been followed by marking the duplicate compensation channel with an “X” and will use the first compensation.

#### 5.3.07 Sort Delay

1.  Spigot assists the inFlux operator by providing a convenient method for calculating the sort delay setting.
2.  Selecting a sort delay places a graphical representation of the sort stream in the right display.
3.  There are windows for entering drop camera values corresponding to four points on the stream, and for entering clock or drop frequency.
4.  Spigot estimates the sort delay setting based on these inputs when the Calculate button is clicked.

---

#### 5.3.08 Analysis

1.  The right display can be configured to display five different analysis screens by using the analysis buttons on the button bar.
2.  The available screens are:
    1.  2D/Histogram
    2.  2D Plot
    3.  3D Plot
    4.  Histograms
    5.  Topographic Histogram
3.  Buttons for these views are inactive until ANALYSIS is clicked.
4.  The first time ANALYSIS is selected after starting the Spigot application, the default view is 2D/Histogram.
5.  The user can then navigate through the five different views by clicking the now active analysis buttons.
6.  If the user selects a right display option other than one of the analysis views, the analysis buttons once again become inactive.
7.  However, Spigot remembers the analysis view last used, so that subsequent clicking on ANALYSIS brings up the most recently viewed screen option.
8.  The right section of the toolbar also changes with each different analysis view selection, giving users many options for customizing the data display.
9.  In each of the analysis views, the data points or histograms change color depending on the SWs drawn.
10. Whenever SWs are drawn or modified, the analysis views are updated simultaneously.

##### img: “Spigot: 2D/Histogram Screenshot”

#### 5.3.09 2D/Histogram View

1.  This default analysis view is similar to the left display, except that SWs cannot be drawn here.

#### 5.3.10 2D Plot View

1.  The 2D analysis screen is simply the 2D/Histogram screen without the histogram and additional data display.
2.  It provides a simplified, uncluttered view of the dot plot.

#### 5.3.11 3D Plot View

1.  The 3D analysis view adds the additional feature of visualizing the data in a three axes perspective dot plot.
2.  In this view, the right side of the toolbar enables selection of the three parameters displayed, as well as the application of a classifier filter.
3.  The theta and phi angles of the display can also be changed with a slider control.
4.  As with most displays in Spigot, the limit of dots displayed can be adjusted using the Display Limit slider control.
5.  If Autoscale is unchecked, the plot can also be moved in the X and Y directions, and can be zoomed in and out using slider controls located in the toolbar above the display.
6.  If the Shadow box is checked, Spigot draws a colored dot “shadow” on the lower plane of the display.
7.  If the Cube box is checked, Spigot draws dashed lines to complete a cube, allowing another way to visualize the data in 3D.

##### img: “Spigot: 3D Plot Screenshot”

#### 5.3.12 Histograms View

1.  In the Histogram view, three histograms allow convenient comparison of data from three channels.
2.  The right side of the toolbar has drop-down lists for selecting a channel for each histogram to display, and for applying any classifier filter desired.
3.  Reset buttons allow resetting of the individual histograms.
4.  There is also an option to display the data in 8-bit or 12-bit resolution.
5.  Note: This feature changes only the display resolution; the inFlux stores data at 12-bit resolution.

##### img: “Spigot: Histograms Screenshot”

#### 5.3.13 Topographic Histogram View

1.  This analysis view presents the data in a 2D topographic histogram.
2.  The right side of the toolbar contains drop-down lists for selecting the channels to be displayed on the X and Y axes of the histogram.
3.  A classifier filter may be applied.

##### img: “Spigot: Topo Histogram Screenshot”

#### 5.3.14 Tray

1.  Software control of the WDU is accessed by selecting TRAY from the button bar.
2.  The right toolbar section continues to display sort controls so that it is possible to initiate a sort from the screen.
3.  The TRAY screen contains two sliders, in-out (y-axis) and left-right (x-axis), that allow the WDU tray to be moved to any position within its range of motion.
4.  The numbers displayed near the center of each slider represent the current position of the WDU tray in millimeters from the home position (fully in, fully right).
5.  Full throw represents the total range of the WDU tray.


1.  At the bottom right of the TRAY menu, there are controls for selecting three sort modes: 2-Tube, Calibration, and 96 Well.
7.  Within each sort mode, there are four pre-defined positions: Tray in, Safe, Sort Ready, and Present Tray.
8.  To move to a particular position, first click on the desired sort mode and then click on the position for that sort mode.
9.  Some predefined positions may be the same for multiple sort modes.
10. Nudge Displacement allows the WDU tray to be moved a particular distance with the arrow keys on the keyboard.
11. The number in the Nudge Displacement window indicates the number of mm that the WDU tray will move with each keystroke.
12. To use this feature, the Nudge Displacement window must be highlighted.

1.  The pre-defined Sort Ready positions are the default positions for sorting in each mode.
14. Thus, it is recommended that the Sort Ready position be chosen before sorting.
15. However, you may displace the tray from the sort ready position before sorting as long as the sort command will not cause the WDU tray to move beyond its range during a 96 well sort or calibration routine.
16. Use 2-Tube sort mode to move the tray to any position and sort either right or left.
17. Default pre-defined positions and nudge displacement values may be changed.
18. Special sort patterns can also be added if necessary.
19. Contact Cytopeia if your application demands special WDU configurations.





### 5.4 Toolbar

1.  Note: While the foregoing introduction to the various right display screens already has covered most of the options available to the user from the toolbars, this section presents information on additional toolbar options and features.
2.  The toolbar at the top of the screen consists of two main toolbar sections above the right and left displays, a button bar for selecting common functions and tasks, and a typical menu bar at the top of the screen.

##### img: "Left Main Toolbar"
- ADC1
  - No Classifier Filter
  - Display Limit
  - Accumulate
- ADC2
  - Reset Histogram
  - Colored Histogram
  - Setup LUT Filters
- Active
- Inside
- Outside
- Reset
- Both
- Right
- Draw Window
- Modify Window
- Gestures
- Ellipse
- Dimensions

---





#### 5.4.1 Toolbars

1.  The left main toolbar section does not change, except that certain options will be displayed as unavailable depending on other choices the user has made. 
2.  For example, if a SW has not been highlighted by the user, the toolbar section for drawing a SW will not be activated.
3.  The right main toolbar section often changes with changes in the right display and, in some cases, is completely replaced by the right display.


#### 5.4.2 Button Bar

1.  The button bar has labeled, color buttons for selecting each of the available right display screens.
1.  These have already been described above. 
2.  On the left side of the button bar are three additional buttons:
    -   GLOBAL OPTIONS
    -   LIST
    -   QUICK LIST.



##### 5.4.2.1 Global Options

1.  Spigot may be also customized to fit user preference and inFlux configuration by clicking on GLOBAL OPTIONS or by selecting GLOBAL ACTIONS: GLOBAL OPTIONS from the Global Actions drop down list on the menu bar.
2.  The dialog box that appears is shown below.


1.  Individual ADC channels may be deactivated by clearing the check boxes on the left side of the dialog box.
4.  Next, channel names may be changed from the default names ADC1, ADC2, etc. (this feature is also available on the hardware configuration screens.)
5.  On the right side of the dialog box, users may choose from among several colors on drop-down lists for customizing the data displays.
6.  There is also a check box for toggling the slider type PMT gain control on the 2D dot plots displays.


1.  The GLOBAL OPTIONS tool also allows "remapping" of PMTs to ADCs from the default configuration of ADC1 to PMT1, ADC2 to PMT2, and so on.
8.  Each drop-down list under Attached PMT enables mapping any PMT to a particular ADC, to reflect a change in hardware wiring of ADCs and PMTs.


::: warning CAUTION: 
1.  This feature should only be used by advanced users or technicians as it depends on the instrument's hardware configuration.
1.  Spigot and the inFlux will not operate properly if this feature is set up incorrectly.
:::








##### 5.4.2.2 List Tool

1.  Spigot has the ability to capture data and store it in files using the standard flow cytometry format (*fcs). 
2.  This data capture is configured using the List Tool, available by clicking LIST (or by selecting GLOBAL ACTIONS: TAKE A LIST from the drop down list on the menu bar).
3.  In the Start a List dialog box that appears, specific channels and parameters may be checked for inclusion in the data capture.
4.  The number of events to be captured may be set in the center of the dialog box, either by typing numbers in the window or by clicking on one of the shortcut buttons placed under the window for user convenience.
5.  After setting these list parameters, clicking Take List starts the data capture.
6.  A List Options dialog box also appears for attaching reference information to the file being created.
7.  Clicking on Save List brings up a standard Windows "Save As" dialog box for naming and saving the new list in a preferred location.

##### img: Spigot Software Screenshot: Start a List

1.  After setting these list parameters, clicking Take List starts the data capture.
1.  A List Options dialog box also appears for attaching reference information to the file being created.
1.  Clicking on Save List brings up a standard Windows "Save As" dialog box for naming and saving the new list in a preferred location.


##### 5.4.2.3 Quick List

##### img: Spigot Software Screenshot: List Options

1.  Once data capture has been configured using LIST, the user can repeatedly save data to files using the same list settings by utilizing the QUICK LIST feature.
1.  The QUICK LIST button (and GLOBAL OPTIONS: QUICK LIST from the drop down list on the menu bar) is active when the List Tool has been configured.
1.  Clicking on QUICK LIST starts a new data capture and saves the data to a new fcs file with a sequential number appended to the file name.
1.  For example, if the LIST was initially configured to save to a file named test.fcs, then subsequent files saved using QUICK LIST would be test1.fcs, test2.fcs, etc., all saved to the same directory path as the first file.

#### 5.4.3 Menu Options

1.  Under FILE, the user can open an existing Spigot Configuration File (*.sco) or save a current one to be used later.
1.  There are also options for printing the left or right displays, or both.
1.  The GLOBAL ACTIONS menu contains selections for displaying or storing the raw data stream from the sorter.
1.  In all other cases, the options available from the menu bar duplicate options available simply by clicking on buttons.

