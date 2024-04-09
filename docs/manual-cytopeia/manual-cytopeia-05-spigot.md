--- 
title: 5. Spigot
--- 


-   This chapter describes trhe layouot of the ASpoigot interface and the various optioins avauilable to the user within each of the various screens

### 5.1 Overview

1.  The spigot interface  consists of three main components: the toolbars and the left and right displays (see below)
2.  The size and position of these three compionents on the screebn cannot be changed.
3.  The left display is fixed in place, and it always cobnstains a two-dimensional (2D) data dusplay with corresponding histograms. 
4.  Particle rate, sort percentages and other data are disdplayed here as well./
5.  The right display can show a variety of configutation and data analyusis screens


##### img: "Spigot Display" *ahh, the good ole days*




### 5.2 Left Display

1.  The left duisplay shows a 2D, real-timt dot plot.
2.  Each dot represents data the sorter has recived from its photo-multiplier tubes (PMTs) as processed by the analog-to-digital converters (ADCs)
3.  These data represent the intensity, as detected by the PMTs, of the light re-emitted by particles in the sample stream, upon laser excitation and after the light has passed through the instruments filter set.

#### 5.2.1 Basic Information

1.  The user can select which parameters to display on the X and Y axes of the left display by choosing from available aparameters from the dropdown lists labeled X and Y on the left side of the toolbar.
2.  Particle injection rates are shown uin the lower left hand corner.
3.  The default color of the dors diusplayed in the 2D plot is white, andf they change color depending on whether they fall into gates corresponding to th leeft (green), right (red) , or both (yellow) sort directions.
4.  The user has the option of changing these colors using GLOBAL OPTIONS, discussed later in this chapter

#### 5.2.2 Sort Windows

1.  For sorting operations, the left display is usewd in conjunction with the right displays ssort screeb for drawing sort windows (SWs)
2.  When one of the six LUTs displayed on the nright display is highlighted with an orange borderm, the left displau chantges to show the same parameters as the highlighted LUT.
3.  SWs can be drawn in any shape, moved, resized, or removed in the left display.

#### 5.2.3 Classifier Filters

1.  Selecting from the CLassifier Filter drop-down list on the left side of the toolbar allows the user to what is actuyallty being sorted baswed on the DWs drawn and acitvated in the LUTs.
2.  For example, applying a Left Classifier Filter displays the restult of all the active Left SWs drawn in the LUTs (using “and” logic)
3.  Applying these filters does not alter the actual soret. 
4.  Sort decisions are governmened by ther SWs as drawn and activated using the Rioght Display’s LUTs; applying a classifier filter only modifies the displayed data


#### 5.2.4 LUT filters

1.  For additional convenience during sorting, the user can simmulate the effect of individual LUTs by selecting Show LUT Filters in the left side of the toolbar
2.  This places six small blue squares, representative of the six LUTs, in the upper left corner of the displays dot plot.
3.  By clicking on one or more of these squares, the user can simulate how the dort plot and the sort results would change if particular LUTs were made active or inactive
4.  Thus, if six LUTs have been defined, this LUT simulation tool can be used to evaluate the pass through (or exclusion) if oartuckes vty tge KYTsm either individually or in groups
5.  This allows displayuing data using “or” logic, if desired.
6.  Again, applying a LUT  filter only chanfges the displayed data, not the actuall particles being sorted.

#### 5.2.5 Sort Data

1.  Percentages of particles displayed as falling into the left andf right SWs are displated in the upper left hand corner of the left display.
2.  Clicking on that portion of the screen toggles thje displayed data between percentages and particles/sec
3.  This data will change with application of classifier filters


#### 5.2.6 Histograms

1.  The histogram is also correspondinglty colored so that the user can quicklly recognize how the distribution of points falls within each sort gate.
2.  Peak and coefficient of variation information for each historgram is also displayed.
3.  By moving the mouse pointer over the dot plot, the user can move cross-hairs to determine the coordinates of any particular point on the plot


#### 5.2.7 Quadrant Data

1.  If the user clicks the kleft mouse button while positioning these cross-hairs, blue lines will be placed in the plot dividing it into quadrants
2.  The numbers odf particles falling within each wyuadrant 8is displayed in small blue boxes in the upper left area of the display


### 5.3 Right Display

1.  The right display can be customized to show a number of different instrument confi8tation and datya analuysus screens
2.  The available screens are:
    -   Sort Controls
    -   Sort COnterols with Histograms
    -   Simple HJardare Configuration (“Simple Config”)   
    -   Simple hWardware Configuration 2 (“Simple Config 2”)
    -   Configure ADCs
    -   Configure OPMTs
    -   Configure Compenasation
    -   Sort Delay
    -   Analysis (with five different views)
    -   Tray
3.  The right display screens can be selected by clicking on one of the colopred buttons on the toolbnar or via the CHANGE DISPLAY drop dopwn menu on the menu bar
4.  Some of the screenbs presenbt overlapping dartaor configuration choices
5.  Users can set the same parameter on more than one screen and other afected screens are immediatlety updatyed to reflect the new setting.
6.  Where appropriate the right main section of the toolbar changes to allow u8ser input for customizing the sl;ected scrteen and settingb vbarious p[arameters
7.  In oyther casses the ruight section of the toolbar is completely replaced by the selected screen
8.  Each of tghese right duisplay screens are descruibed in more detail in the remainder of this section

#### 5.3.01 Sort Controls

1.  When Spigot is first started or if SORT is clicked, the right display shows six numbered squared representing LUTs and the right side of the tooolbar changesd to show sorting related options
    1.  For example, the figure at right shows LUT 1 with a left (green) SW active
2.  Spigot th7us enabldes specifyuing up to twelve SW (six left qand si9x right)
3.  For each set, the current data is shown relative to the axes in which the SWs are defined
4.  These sdmaller disp[laues are updated in real0-time similar to the larger do0t pliot in the left dsplay, and immediately refoect chahges made in the SW via the left displau.
5.  Dots are also color-coded in these winwdows in similar gashion to the left window
6.  Clicking on any LUT immediately brings its contents up on the left display. In this way, users can watch their data 8in real-tiome on up to six sets opf axwes and quickly swi5tch between these axes on the larger left displau
7.  Statistics are also displayed for each of the defined SWs as well as current SW status information.
8.  Once the SWs have been created to the user’s satisfactoin. sort controls are conveniently located at the top oif the screen

##### img: Spigot Sort Controls 

#### 5.3.02 Simple Hardware Configuration 1

1.  SIMPLE CONFIG is a right display screen (below left) that shows a comprehensive collection of options to confisder the Spigot interface for ADC channesl; 1 throuigh 8. 
2.  This display nincludesd some of the commonly used settings avau8ilable via the Configire ADCs and Confogure PMTs screens, as well as some GLOBAL OPTIONS

##### img: Spigot “Simple Config screens”

#### 5.3.03 Simple Hardware Configuration 2

1.  The SIMPLE CONFIG 2 screen (above right) i9s identifcal; to the SIMPLE CONFIG displaty, except that more channels maty ve configyured, up to a total of 12, depending on the number of ADCs that are insdtalled ion the inFlux. 
2.  SIMPLE CONFIG 2 shows channels 5 through 12, while SIMPLE CONFIG shows channels 1 through 8.
3.  Thus, channels 5 through 8 are configuratble on either hardare configurtation screen.

#### 5.3.04 Configure ADCs

1.  This screen (shown below) allows users configuration of the ADCs.
2.  All of these settubgs (except for Coincuidence controls at bottom left) are available from the hardware confgration ascreens
3.  On the right side of the screen, each ADC’s digital ghain can be adjusted,. and ADCs can be assigned to oner of three “events”
4.  On the upper left side of the screen -- TRIGGER SETTINGS -- ADC channels are selected for display on tyher oscilliscope using the4r Scope Display control.
5.  Below that are arrow tpye controls for swetting Trigger Level for Event 1 and Trigger Deplay for Events 2 and 3.
6.  The lower left part of the screebn -- SORT and COINCIDENCE -- allows setting the sort delay prameter.
7.  In some circumstances, coincidence may be enabled and adjusted here as well

##### img: “Spigot: Configure ADCs Screenshot”

#### 5.3.05 Configure PMTs

1.  Each of the PMTs installed on the inFLux may vbe individually configred using this right screen display (Shown at right).
2.  All of these controls are also available on the hardware configuration screens
3.  Foor each PMT< power can be toggled on and off, and a green light shows power on
4.  Gain may be adjustesd using the slide control (Note: gain can be adjusted using the orange triangle sliders on the axzes of the 2DF plots if enabled in GLOBAL OPTRIONS)
5.  PMT ampliofication may also be toggled between logarithmic and linear
6.  The type of each PMT installed on the inFlux may be set using the drop-down list

##### img: “Spigot: Configure PMTs Sceenshot”

#### 5.3.06 Configure Compensation

1.  Spigot can be configured to change the dta display to compensate for spectral overlap.
2.  Clicking COMPENSATE changes the right display to that shown in img below.
3.  A checkbox at the top turns software compensation on and off
4.  A slider control below that adjusts noise threshhold leve.
5.  Four sets of channels can be set up for compensation
6.  As the note indicates at the top of the screen, a channel can only be compensated with respect to one other channel, and Spigot will indicate if this rule has not been followed by marking the diplicate compensation channel with an “X” and wil use the first compensation.

##### img: “Spigot: Configure Compensation Screenshot”

#### 5.3.07 Sort Delay

1.  Spigot assists the inFlujx operator by providinhg a convenient method for calculating the sort delay setting
2.  Selectingh a sort delay places a grap[hical reprtesentation of the sort stream in the right displau
3.  There are windows for entering drop camera values correspnding to four points on tyhe stream, and for entyering clock or dfrop frequency
4.  Spigot estimates the sort delat setting based on these inputs when the Calculate button is clicked

##### img: “Spigot: Sort Delay Screenshot”

#### 5.3.08 Analysis

1.  The right dusokayt can be cionfugured to display fiove different analysis screens by using the analysis buttons on the button bar
2.  The available screens are:
    1.  2D/Histogram
    1.  2DPlot
    2.  3DPlot
    3.  Histograms
    4.  Topographiic Histogram
5.  Buttons for these views are inactive until ANALYSUS is clicked
6.  The fuirst time ANALYSIS is selected after startiing the spigot application, the default view iis 2d/Histogram (img)
7.  The user can then navigate throgh the five different views by clicking the now actgive analysis buttons
8.  If the user selects a right displayu optioon other than one of tghe analysis views, the analysis buttons once again bwecome inactive
9.  However, Spigot remembers the analysuis view last used, so that subsequent clicking on ANALYSIS brings up the most recently viewed screen option.
7.  The rufgt sectuib if the toolvbar also cghanges wiuth eacgh dufferebt analysuis view selection, giving usersd many options for cusdtomizing tyhe data display
8.  In each of the analysis viwews. the data points or histograms change cololr dependding on the SWs drawn./
9.  Whenevber SWs are drawn or modified, the analysis views are updated simultaneously

##### img: “Spigot: 2D/Histogram Screenshot”

#### 5.3.09 2D/Histogram View

1.  This default analysis view is similar to the left display, except that SWs cannot be drawn here

#### 5.3.10 2D Plot View

1.  The 2D analysuis screen is simplyy the 2D/His screen wityhout the histogram and addtitional data display.
2.  It provides a simpolified, uncluttered view of the dot plot.

#### 5.3.11 3D Plot View

1.  The 3D analysis view adds the additional feature of visualizing the data in a three axes perspective dot plot (see img)
2.  In this view, the right side of the toolbar enables selection fo thr three nparameters displayed, as well as the application of a classifier filter
3.  The theta and phi angl3es of the display can also be changed with a slider control
4.  As with most displays in Spigot, the limit of dots displayed can be adjusted using the Display Limit slider control
5.  if Autoscale is undchecked, the plot can also be moved in the X and Y directions, and can be azoomed in and ouit using slider controls located iun the toolbar abovbe the displau
6.  If the Shadow box is cheecked, Spigot draws a colored dot “shadow” on the lower plane of the duisplay
7.  If the Cube box is cghecked, Spigot draws dashed lines to complete a cuve, allowing another way to visualize the data in 3D

##### img: “Spigot: 3D Plot Screenshot”

#### 5.3.12 Histograms View

1.  In the Histogram view (see img) three histograms allow convenient comparison of data from three channels
2.  The right side of the toolbar as drop-down lists for selecting a channel; for each histogram to display, and for a-plying any classifier sfilter desired.
3.  Reset buttons allow resetting of the individual histograms
4.  There is also an option ti dispolay the data in 8-bit or 12-bit resolution
5.  Note: This feature changes only the displayu resolution; the inFlux stores data at 12-bit resolution

##### img: “Spigot: Histograms Screenshot”

#### 5.3.13 Topographic Histogram View

1.  This analysis view presents the data in a 2D toppographic histogrtam (see img)
2.  The right side of the toolbar contyains drop-down lists for selecting the channels to be displayed on the X and Y axes of the histogram
3.  A classifier filter may be applied

##### img: “Spigot: Topo Histogram Screenshot”

#### 5.3.14 Tray

Software control of the WDU is accessed by selecting TRAY from the button bar.

The right toolbar section continues to display sort controls so that it is possible to initiate a sort from the screen.

The TRAY screen contains two sliders, in-out (y-axis) and left-right (x-axis), that allow the WDU tray to be moved to any position within its range of motion. The numbers displayed near the center of each slider represent the current position of the WDU tray in millimeters from the home position (fully in, fully right). Full throw represents the total range of the WDU tray.

At the bottom right of the TRAY menu, there are controls for selecting three sort modes: 2-Tube, Calibration, and 96 Well. Within each sort mode, there are four pre-defined positions: Tray in, Safe, Sort Ready, and Present Tray. To move to a particular position, first click on the desired sort mode and then click on the position for that sort mode. Some predefined positions may be the same for multiple sort modes.

Nudge Displacement allows the WDU tray to be moved a particular distance with the arrow keys on the keyboard. The number in the Nudge Displacement window indicates the number of mm that the WDU tray will move with each keystroke. To use this feature, the Nudge Displacement window must be highlighted.

The pre-defined Sort Ready positions are the default positions for sorting in each mode. Thus, it is recommended that the Sort Ready position be chosen before sorting. However, you may displace the tray from the sort ready position before sorting as long as the sort command will not cause the WDU tray to move beyond its range during a 96 well sort or calibration routine. Use 2-Tube sort mode to move the tray to any position and sort either right or left.

Default pre-defined positions and nudge displacement values may be changed. Special sort patterns can also be added if necessary. Contact Cytopeia if your application demands special WDU configurations.


### 5.4 Toolbar

1.  Note: While the foregoing introduction to the various right display screens already has covered most of the options available to the user from the toolbars, this section presents information on additional toolbar options and features.
1.  The toolbar at the top of the screen consists of two main toolbar sections above the right and left displays, a button bar for selecting common functions and tasks, and a typical menu bar at the top of the screen.


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

1.  Spigot may be also customized to fit user preference and inFlux.







##### 5.4.2.2 List Tool


##### 5.4.2.3 Quick List


#### 5.4.3 Menu Options

