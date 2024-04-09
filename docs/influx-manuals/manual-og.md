--- 
title: OG Manual
--- 


## 1. Introduction

Overview of this manual and it's use in conjuction with the inFlux platform


### 1.1 Intended Use

#### 1.1.1 Investigation Device Caution

::: warning CAUTION - INVESTIGATIONAL DEVICE
LIMITED BY FEDERAL (OR UNITED STATES) LAW TO INVESTIGATIONAL USE
:::

::: note details Intended for laboratory research
-   Approval for use beyond laboratory research requires express permission.
-   inFlux should only be operated by trained personnel in accordance with standard operating procedures of the facility
-   All devices (e.g. lasers) that are part of the inFlux instrument platform should be used in accordance within the specifications of the original manufacturer.
:::

#### 1.1.2 Spigot software

-   No longer relevant.

### 1.2 About the *inFlux&reg; Cell Sorter Operator Manual v2.1*

-   Resource for inFlux operators
-   Intended to be an introduction to the inFlux platform and the basic operations
-   A reference giude for experienced users
-   The manual contains:
    -   Basic description of influx
    -   Critical safety information
    -   Operating procedures
    -   Maintenance information
    -   ~~Spigot Interfance~~ No longer relevant

### 1.3 Using this manual

-   User’s should read through the guide before first using the instrument.
-   Be aware of the text style conventions

### 1.4 Chapter Descriptions

There are six chapters

1.  Introduction
    -   Intended use
    -   This manual’s
        -   Scope
        -   Organization (You are here)
        -   Conventions
1.  Instrument overview
    -   How the inFlux works TLDR
    -   Main functional subsystems
        -   Descriptions
        -   Images
        -   Terminology
1.  Safety
    -   Critical safety info
        -   potential hazardds
        -   Safety features
        -   Warning labels
1.  Operating Procedure
    -   Step by step instructions.
1.  ~~Spigot Interface~~
    -   Likely to be skipped
1.  Maintenance
    -   Cleaning
    -   Periodic Maintenance
    -   Inspection

### 1.5 Document Conventions

::: danger DANGER/WARNING
Hazards that, if not avoided, will result in death or serious injury.
:::

::: warning CAUTION
Hazards that, if not avoided, might result in minor to moderate injury and/or physical damage to the instrument platform.
:::

::: tip NOTICE
Indicates important information
:::

#### 1.5.2 Instrument Description Conventions

|    **Text Style**  |        **Meaning**          |    **Example**   |  
|:-------------------|:----------------------------|:-----------------|  
| **ALL CAPS BOLD**  | Physical Instrument Button  | **PLATES**       |
| *ITALICS CAPS*     | Instrument Display          | *Pinhole Camera* |
| *Italics*          | Instrument Component?       | *Nozzle*         |
| `Monospace Font`   | Software menus and values   | `File`           |  
| `Mono > Menu Item` | Software menu item.         | `File > Open`    |
| *`Mono Italics`*.  | Software ???                | *`Something...`* |


::: note STAGE ADJUSTMENT AXES
-   Stages are the adjustable platforms for focusing and aiming:
    -   Illumination laser light
    -   Light edmitted as fluorescence or scatter 
    -   Detailed later in the guide
-   Each stage is adjustable in Three Cartesian Axes: X, Y, Z
    -   Defined with respect to *either*
        -   Illuminating light path
        -   Path of emitted fluorescnce or scatter
    -   The axes directions
        -   X-Axis: Move stage parallel to the light path.
            -   Don’t move without much foresight.
        -   Y-Axis: Sweep the stage horizontally (and perpendicular to the light path)
        -   Z-Axis: Move stage vertically (and perpendicular to light path)
:::

::: note Nozzle Adjustment Axes
-   Nozzle Stage Cartesian
    -   The nozzle stage has all three cartesian axes and all adjustments are used in typical operation
-   Nozzle Assembly Tilt
    -   Theta 
        -   Side-to-Side tilt parallel the direction of laser illumination
    -   Phi 
        -   In/Out parralel to fluoresence/scattering emission optical path
:::

::: note Well Deposition Unit (WDU) Axes
-   With respect to movement of the WDU Collection Tray
    -   X-Axis: “Right-left”
    -   Y-Axis: “In-Out” (Front-back)
:::

---

## 2. Instrument Overview

::: note Summary
This chapter provides the user with:
-   Functional description of the influx
-   pictorial tour of:
    -   Instrument
    -   Main sub-systems
-   Brief description of each functional sub-system
:::

### 2.1 Functional Description

-   The influx brings together several technologies to provide:
    -   high-speed detection
    -   Analysis
    -   Sorting
-   For particals capable of fluorescing when excited by laser light.
-   Each technology will be described as a functional subsystem

::: note from Cytopeia
-   The influx focuses laser light on a fast-moving, thin stream of particles (e.g. cells, chromosomes, DNA) and observes the fluorescence and light scatter emitted by the particles using sensitive Photo Multiplier Tubes (PMTs). 
-   High-speed electronics capture these data, and depending on user-defined parameters, sort/no-sort decisions are made almost instantly
-   the influx nozzle causes the stream to break intodroplets in a predictable fashion.
-   The inFlux selectively places an electric charge on individual droplets containing desired particles to be sorted.
-   High voltage plates then deflect the individual droplets from the stream for separate collection.
:::

### 2.2 Pictorial Tour

-   Front View
    -   Nozzle Assembly
    -   Chamber (door)
    -   Base
    -   Table
    -   Well Deposition Unit
    -   Control Panel
    -   Deflection Plates
    -   Workspace
-   Top View
    -   Laser
    -   Pressure Console
    -   Drop Camera Stage
    -   Forward scatter detector Stage
    -   Nozzle Stage
    -   Illumination Stage
    -   Illumination steering optics
    -   Image Block
    -   Detector Module
-   Side View: Tanks/Laser illumination
    -   Illumination Optics Cover
    -   Digital Scale
    -   Sheath Reservoir (Tank)
    -   Waste Reservoir 
    -   Vacuum Pump
-   Instrument Rear
    -   Forward Scatter Detector Stage
    -   Nozzle Stage
    -   Illumination Stage
    -   Steering Tower
    -   Pre-Amp Module
    -   Laser
    -   Detector Module
-   Monitoring Equipment
    -   Camera Monitoras
        -   Pinhole
        -   Drop/FSC
        -   Stream
    -   Oscilloscope

### 2.3 Functional Subsystems

A brief description of each functional subsystem

#### 2.3.1 Fluidics

Fluidics system includes components necessary for:
-   sample introduction
-   Sheath fluid management
-   Pressure Regulation and monitoring
-   Waste fluid recovery

-   Sample Introduction
    -   Placing a stream of particles (typically suspended in MilliQ water or a saline solution) in the center of a larger stream of sheath fluid
    -   Using carefullt regulated pressures, the stream is forced through a tiny orifice in a nozzle to produce a fine, fast-moving jet of fluid with sample particles in the center.
-   Sheath Fluid
    -   So named becaue the sample fluid is surrounded by a Sheath of saline (or MilliQ) water as it is forced through the nozzle
    -   This causes the sample core within the stream to be centered and lined up with the jet emitted from the nozzle tip.
    -   The main components of sheath fluid managemeant are:
        -   Sheath Reservoir (tank)
        -   Digital scale for monitoring level of fluid in the Sheath reservoir.
        -   Sheath line
        -   Sheath valve
        -   Nozzle Assembly
-   Pressure Regulation
    -   Adjust Sheath PSI directly. 
    -   ~~Two presets levels of pressure for sheath~~ 
    -   Adjust Sample psi directly
    -   Adjust Sample relative to Sheath psi
    -   Adjust **BOOST** psi relative to Sample psi
    -   Monitor Sample and Sheath psi 
    -   Main Components:
        -   Pressure Console
        -   Pressure lines
-   Waste Fluid Recovery
    -   Retrieving all fluids that have been run through the inFlux except for those sorted into collection vessels
    -   Main Components
        -   Waste drains and buckets
        -   Purge line and valve
        -   Waste Lines
        -   Waste Reservoir (tank)
        -   Vacuump pump

#### 2.3.2 Illumination

The illumination subsystem includes all the components necessary to apply a focused beam of laser-emitted light to the jet of sheath and sample fluid exitting the nozzle tip.

Illumination subsystem main components:
-   Laser(s)
-   Protective shields and guards
-   laser shutters
-   Shutter interlock system
-   Alignment prisms and/or mirrors
-   Iris diaphragms
-   Focusing lenses mounted on adjustable stages

#### 2.3.3 Detection

-   The detection subsystem is modular and open.
-   The purpose is to spectrally separate and quantify the intensity of light fluoresced or scattered by particles passing through the laser beam.
-   Detection Subsystem Main Components
    -   Image block assembly
        -   Objective lens
        -   Pinhole mirror
        -   Prisms for directing light into the detector modules
    -   Detector modules
        -   Band-pass filters
        -   Dichroic mirrors
        -   Photo Multiplier Tubes (PMTs)

#### 2.3.4 Signal Processing

Signal Processsing encompasses all the electrical components necessary to:
-   control PMTs
-   Amplify and Process analog PMT signals into digital data that are sent to ~~Spigot~~ Sortware (via the Dell PC and router).
-   Signal Processing Main Components
    -   Logarithmic (log) and Linear (lin) Pre-amplifiers (preamps).
    -   Analg-to-Digital Converters (ADCs)

#### 2.3.5 Sort Electronics

The Sort Electronics Subsystem is comprised of all the electronic components necessary for sorting particles. Including:
-   Trasnferring sort gating information from ~~Spigot~~ Sortware into the hardware look-up tables
-   Applying the hardware look-up table information and data provided by Signal Processing to make sort/no sort decisions.
-   Controlling electrical components involved in the sorting of individual drops:
    -   Drop Formation
    -   Drop Tracking
    -   Drop Deflection
-   Sort Electronics Subsytem Main Components
    -   Circuit boards for hardware look-up tables
    -   Counters
    -   Piezo Drive
    -   Stream Deflection
    -   High Voltage Deflection Plates
    -   Control circuitry
    -   Note: Many of these components are housed in the Electronics Console

#### 2.3.6 Sample Collection

After droplets are formed and deflected from the sample stream, the Sample Collection Subsystem is responsible for collecting the droplets.

The options for sorting are:
-   Standard 5ml test tubes
-   24, 48, 96 well plates
-   microscope slides

Sample Collection Subsystem Main Components:

-   Well Deposition Unit (WDU)
    -   Two-Axis moveable tray powered by stepper motors and controlled by the User via the ~~Spigot~~ Sortware interface.
    -   The tray can hold a well plate or use attachments for test tubes or microscope slides

#### 2.3.7 Monitoring

The Monitoring Subsystem enables the User to oberserve in real-time:
-   data acquired by the inFlux
-   Feedback on system settings
-   View close-up images necessary for proper adjustment and monitoring of the instrument

-   Monitoring Subsystem Main Components
    -   Software interface
    -   Triple LCD Camera Monitors
    -   Oscilliscope
-   Monitoring System Auxillar Components
    -   Pressure readouts
    -   Drop Position indicator
    -   Master Clock










## 3 Safety

This chapter:
-   alerts users to known or potential hazards reasonably associated with the inFLux operation
-   outlines safety precautions

::: danger From the Cytopeia manual:
>   Operation of the intrument poses several potential hazards, including hazardous voltage and current, laser ratiation and moving parts. PLEASE read and understand this safety information and this entire manual prior to operating the instrument and follow all safey precautions.
::: 

### 3.1 Hazards

-   The follwing table lists the primary potential hazards that may be encountered during inFlux operation.
-   The instrument is labeled with ANSI/ISO-harmonized safety labels, alerting the user to these potential hazards.
-   The alerting symbols contained in these labels are shown in the table

| type       |     Potential Hazard              | Symbol |
|:-----------|:----------------------------------|--------|
| Electrical | High voltage plates and circuitry |        |
| Light      | Laser Radiation                   |        |
| Light      | UV Radiation                      |        |
| Mechanical | Pinch/crush from Moving Parts     |        | 
| Pneumatic | Tanks and fluidics under pressure  |        | Heat      | Heated air from instrument

### 3.2 Safe Operation



#### 3.2.1 General Electric

-   As with all electrical equipment, protect against shock by connecting to an approved grounded power source.
-   Do not, under any circumstances, remove the grounding plug from the power plug.
-   Do not perform any servicing except as specifially stated in this manual.
-   Do not removr any wiring cover or panel with a warning label affixed to it. These covers and panels provide protection against potential electrical shock from components inside.


#### 3.2.2 High Voltage Plates

This instrument requires the use of high voltage plates (HV Plates/Deflection Plates) to deflect desired droplets from the stream for collection. Whenever the plates are in use, the potential for electrical shock exists.

::: danger High Voltage
Do not reach into Workspace (Sort Chamber) while the Deflection Plates are energized! Switch **PLATES** off prior to opening door door and reaching into Workspace (Sort Chamber).
:::

#### 3.2.3 Light Hazards

##### Laser Radiation

This instrument utilizes both Class 2 and Class 3b laser radiation during operation. Follow all laser safety precautions.

::: danger Laser radiation present!
-   Wear suitible eye protection.
-   AVOID DIRECT EXPOSURE TO THE BEAM.
:::

-   For each laser installed with the instrument, follow the laser manufacturer’s operating manual and facility-specific laser safety precautions.
-   For the safety of operators and other persons near the inFlux system during operation, the instrument is equipped with an automatic laser shutter interlock system.
    -   Suitable eye protection must still be worn
    -   Do not intentially defeat this system.

##### Ultra Violet Light



#### 3.2.4 Mechanical

Mechanical pinch or crush hazard due to:
-   Do not remove guard or covers with labels alerting mechanical hazards. 
-   Use caution with sort chamber door hinge

Well Deposition Unit
-   Moving parts alert
-   Don’t reach into “workspace” while unit is operating

#### 3.2.5 Pneumatic

Pressurized air and vacuum hazards
-   Safely connected
-   Know how to shut off
-   Use caution near vacuum 

::: warning Pressurized air and fluid lines
The sheath reservoir, sheath lines, and sample lines are pressurized during operation. **Do not operate the instrument at more than 100 PSI.** Use caution when handling Sheath reservoir connections and when relieving reservoir pressure with the pressure relief valve.
:::

#### 3.2.6 Biohazard

::: warning 
Do not introduce any toxic, biohazardous, or other potentially dangerous substances into the instrument.
:::

Responsibility for disregarding this caution rests solely with the owners and operators of the instrument. As with all research-grade equipment:
-   Observe universal biohazard safety precautions and utilize standard laboratory procedures
-   operate Instrument only with doors fully closed to guard against aerosols, splashes, and spills.
-   keep intrument workspace (sort chamber) and table clean.
-   Do not store liquids on the instrument table.


## 4 Operating Procedures

::: note Summary
This chapter contains detailed step-by-step instructions for operators new to the instrument. Information on use of the ~~Spigot~~ software is included.
:::

### 4.1 Preparation

#### 4.1.1 Collect Supplies

Gather and clean all supplies
-   Sheath and waste reservoirs
-   nozzle tip
-   nozzle back-flush reservoir (spoon)
-   sample tubes
-   cotton swabs
-   paper towels
-   microscope slides

#### 4.1.2 Prepare fluidics reservoirs

-   Fill the sheath tank with up to 6 liters of sheath fluid, preferably filtered at 0.2um.
-   Ensure the Waste Reservoir is clean and empty
-   Attach lids and quick connect fittings from instrument fluidics lines to the reservoirs
    -   Note that each port is unique. Each fitting connects to only one port.

### 4.2 Power-up

#### 4.2.1 Power up Fluidics

##### Start Fluidics Early

Fluids take from 30-60 minutes to fully stabilize. It is therefore important to start the fluidics as early as possible.

##### Choose Sort Setting

This section not relevant.

##### Close Valves

Ensure all the valves are closed:
-   Sample Valve
-   Sheath Valve
-   Purge Valve
-   Sample Pressure Valve

##### Pressurize Sheath Reservoir

1.  Close the pressure relief valve on the sheath reservoir. 
2.  turn on air supply by flipping up the AIR toggle switch on the Pressure Console
3.  Observe the gauge on the sheath reservoir to ensure that it is being pressurized.
    1.  Reseat the lid of the Sheath Res if the pressure on the Sheath Res does not increase.

##### Apply Vacuum

1.  Turn on the vacuum pump or other vacuum supply
2.  Read the gauge of the waste reservoir and ensure that it reads at least 5” Hg. If less than 5” Hg is observed after the tank has a few moments to come to pressure, tighten the lid.
    3.  It is necessary for the wastr reservoir lid to be tightened as much as possible *without* the use of a wrench.

#### 4.2.2 Start Lasers

Most lasers require at least 30 minutes of warm-up time. 
1.  Close all laser shutters on the instrument and start all lasers in accordance with the manufacturer’s procedures. 
2.  Typical Laser Control Units have key switches to prevent unauthorized or unintended use.
3.  Power output of the laser may be set to the desired label, or the laser put into standby mode.

#### Start Computer

Turn on the computer

#### 4.2.4 ~~Power-up electronics Console~~

#### 4.2.5 ~~Start Spigot~~

### 4.3 Stream Generation

#### 4.3.1 Flush system

1.  Place the flush bucket under the nozzle
2.  Recheck that the waste reservoir has an adequate level of vacuum applied to it.
3.  Open the Purge Valve and then the Sheath Valve 
4.  Run sheath fluid through the lines for approx 2min
5.  Ensure that lines are free of air bubbles
6.  Close the Purge and Sheath valves

####  4.3.2 Clean and attach nozzle tip

1.  Get the nozzle tip
2.  Clean Nozzle tip
    3.  Sonicate nozzle tip for approx 5 minutes
    4.  Fill a 60my syringe filtered water (De-ionized distilled milliQ SheathSolution etc) 
    5.  Attach or 0.1um filter to the tip of the syringe
    6.  Place the nozzle (tip up) on the edge of the outflow of the 0.1um filter
    7.  Flush with clean water. Don't worry about keeping it wet or drying it out.
1. Install the nozzle tip
    1.  Using tweezers where necessary to avoid contaminating the nozzle tip..
    2.  Snuggle an O-ring of PN-645263 in the channel at the inside-bottom of the nozzle nut.
    3.  Hold the nozzle nut aloft. Insert the nozzle, tip down, so the the O-ring seals to the sloped sides of the hozzle tip, and the nozzle protrudes from the bottom of the nollze nut
    4.  Gently snuggle the nozzle tip and O-ring to even out pressure on the O-ring
    5.  Screw the nozzle nut onto the threads at the tip of the nozzle assembly. Using only your fingers, tighten the nozzle nut onto the assembly as tighyly as you can. Never use wrenches or other tools to install the nozzle nut
        1.  Be gentle starting off. If you feel any sort of resistance, it may be that the base of the nozzle tip is pressing against the rim of the pipe the nut is being attched to
        2.  Carefully bach the nut off, and attempt to re-straighten the nozzle tip within in nozzle nut to attempt another installation. Remember to keep the nozzle tip clean of contamination.

#### 4.3.3 Start a stream

1.  Open the Sheath Valve to start a stream


#### 4.3.4 Backflush and Debubble

1.  Backflusgh the sample loine by oppenning ther SAMPLE VALVE. 
2.  Close th SAMOKE mVAKVE after the samople line drips  sheath fluid for abouit 30 seconds
3.  Close tyhe SAMPLE VALVE after backflushing
4.  

1.  Purtge the nozzle of bubbles by placing the clcean nozzle purge reservoid filled withnsheath gluid atop the flush bucket.
2.  this allows sheath fluid to be pulled up into the nozzle
3.  

##### img "Nozzle purgwe reservoir rests in place on flush bucket"

1.  Ensure tghat the nozzle tip uis submerfed into filterded sheathnfluid in the nozzlw purge reservoir. 
2.  Clos both the SAMPLE VALVE and the SHEATH VALVE, then open up the purge-valve.
3.  When the purge-valve is opened b, bubbles (in the nozzle assy) shou8ld be observed as they are pulled up throughj the nozzle
4.  When all bubbles have travelled past the purge-valve, open the sheath-valve and then close the purge-valve. If necessary, add sheath fluid to thed nozzle back fl;ush resdrvoirn to keep the tip submerged =through out this process.

##### img "Swavb excess fkluid from the sides of the nozzle tip"

1.  Remove the nozzle back fl;ush reservoir and use a cotton swab or similar  to removr excesds fluid from the nozzle tp
2.  Ensure that strea stream is emitted straigt out of the nozzle tip
    1.  If the stream is even slightly askew, return to the top of thie=s sybsecgion and repeat cleaning of the nozzle and flushing the system
3.  Ensure that there are no bubbles in the system by closing he SHEATH VALVE 
    1.  If there are no bubbles, the stream should snap of quickly (less than one second)
    2.  If there are bubbles, the stream will take more time to stop (10-30sec)
        1.  This will require repeating this subsection
4.  After testing for bubbles, reopen the SHEATH VALVE
5.  

#### 4.3.5 Align Stream

1.  Ensure that a cornining tube is set in the well platform beneath the stream drain in the sort chanver.
2.  **WE NEED TO FIND OUT WHAT THAT MEANS SOR SORTWARE**

##### img "WDU Tray in PRESENT Position"

1.  Remopve the flush bucket so that the stream passes gthrough the illunanation chamber into the srt chamber.
2.  Flip the ILLLUM switch on the Control Panel to ON to illluminatd the stream ner trhe drain
3.  The stream may or may not landf is the stream drain, btu should becaptured by the corning tube if it missesd the stream drain.
    1.  If not take extra precautuins to ensure the strezm is contained.
4.  Aligninment of the stram consists of:
    1.  Bringing the stream into the focal point of ther micrfoscope obejctvbie
    2.  Use the piunhold monitor and the sirt strean nibutir fir orunarty vusyak feedvacj wghuke najubg adhystnebts ti tge bizzke srtafwe.

1. **(1) Bringing the stream into focus**
    1. Use the x-axis (focus) and y-axis (left right) and zaxis (up-down) micrometers of the nozzle stage to focus and posirtion the astream in the pinhole moinitor as shown below
    2. The stream should be centered in the puinholes, sharply focused, and the nozzle tip shouild be barely visible in the top of the monitor
    3. It may be helpful to use the halogen lamp to illuminate the srteam in the laser chamber for this procedure.
2. **(2) Positiion Stream**
    1.  Once tyhe stream is properly focused in the pinhole monitior use the theta-angle and phi-angle micrometers of the nozzle stage to aim thew steram at the drain in the sort stream monitor
3.  Iterate between  **(1)** and **(2)** until the stram is focused and positioned in the pinhole minitor ans also aimed at the draiun in the sort stream monitor.
4.  

##### img: "Right: Stream Focused in Pinhole Camera. Left: Stream Aimed at drain"

### 4.4 Droplet Formation

1.  Droplet foprmation is achieved by using a piezoelectyric elementy to focus an acoustive wave into the stream at the nozzle tip.
2.  The stream may need to run abiout about 10 minutyes befire drioket formation will become stable
3.  

#### 4.4.1 Turn on the piezoelectric

1.  Flip up the PIEZO switch on the Control Panel.
2.  Rotate the PIEZO knob to an appropriate amplitude setting 
    1.  Typiically this setting is approxzimately 4 for Standard Sort flow and 6 for High SPeed Soret flow.
    2.  If the ampliotyude is too high the wwavefiorm of the jety will intyerfere wuith the fiorward scatter siughakl,.
    3.  If the amoplkitude is too klow the Break-Off Point (BOP) will be unstable
3.  Fine-turning of the piwezo amplitude will be completeerd later whehn optimizing the BOP
4.  (Ken note) *"This switch is a locking switch: Pull out then flip up"*

#### 4.4.2 View the Break-Off Point (BOP)

1.  Adjust thwe micrometer of the drop camera so that the BOP can be seen in the drop monitor.
2.  (Ken Note) *"Drop position indidccates micrometer position"*
3.  (Ken Note) *"Drop Position should be about 200 and piezo should be about one. 6 drops should be visible on minitor"*
4.  (Ken Note) *"For Counting we want this set lower than for sorting"*

##### img: Drop camera image Ken Note *"Drop Position = 200"*

#### 4.4.3 Close and turn on PLATES

1.  Swing the Deflection platyes into their closed position ~~and tiughten their thumbscrews to hold them into place~~

##### img Defelcton Plate and Thumbscrew

1.  Close the Sort Cavity Door and switch on the high voltage platesd by flipping the PLATES switch on the control pannel up
2.  Note that a red LED on the control panel willl illimunate to indicate the plates are on.

#### 4.4.4 Turn on *STREAM DEFLECTION*

1. Flip up the STREAM DEFELCTION switch on the control panel
2. SEt the stream deflection amplitudfe knob to about 1/4 of its full range for now.

#### 4.4.5 Optimize Break Off Point (BOP)

1.  Creating test sort streams and tuning the piezo ampliotude to optimize the BOP

1.  Create left andf right test sort streams by flipping up the TEST LEFT and TEST RIGHT switches on the contr0ol panel.
2.  Sort streams should now be visible in the sort stream monitor.
3.  Use the deflection amplitude knob to adjust the soirt streams sio that they clear te drain as shown below.

##### img: Sort stream image with side streams

1. Flip up the $$1-1\frac{1}{2}$$ switch on tyhe contyrol front panel.
2. Adjust the PIEZO AMPLITUDE knob until the sort streams are maximally deflecteed
3. Use the drop minitopr to note that the piezo amplitude and be increas3ed or decreased until the next or previuos drop is deflecvted
4. Once the desired drop is defelected ooptmially, carefully note the appearance of the droplet formation at thwe BOP.
5. It is crucial that the droplet waveform remains constant while sorting.
6. It is sometimes necessary the adjust the PIEZO AMPLITUDE while sorting to keep the waveform at of the gert at the BOP constant.
7. Flip off TEST LEFT, TEST RIGHT , and 1-11/2


#### 4.4.6 Set STREAM DEFLECTION amplitude

1.  The proper setting of deflectuioin ampliotufde resdults in a sort stream that falls into the center of a sort tuber during 2-way sorting
2.  (Ken Notes) *"With 1-1/2 switches up you need tyo see four deflections 0 maximize defelction distance"*
2.  (Ken Notes) *"Otherwise, should onl;y have two deflections. Adjust piezo so that onoly two are outside"*
2.  (Ken Notes) *"System must be warmed up and the drop rate not changing"*
3.  (Ken Notes) *"STREAM FOCUS: Adjust knob to tahje tghe fuzziness off center stream."*
4.  (Ken Notes) *"FUZZINESS INDICATES CHARGE LEAKAGE"*
5.  (Ken Notes) *"ONLY ADJUST STREAM FOCUS WHEN 1-1/2 BUTTON IS IN THE OFF POSITION"*




1.  Place a tube uin the left recepoticle of the WDU (Well Deposition Unit) insert
1.  Place a microscope slide over the tube
2.  Spigot Steps
    1.  In trasy scrteen send wdu to the 2-tube sort ready position
    2.  Quickly flip up and down the TEST LEFT switch on the control panel to put a small droplet of water on the slide
    3.  Send rthe WDU to 2-Tube -> 2 Tube.
3.  Remove the WDU insert and check the slide to see if the droplet would have landed in the center of a collection tube.
4.  If 96-well sortibng is desired, follow a similar procesdure exceopot use a 96 well tray insert and the 96-well sort mode for the WDU mode


###  4.5 Illumination

1. Illumination consists of steering the laser paths so that they intersect the stream at proper locations.
2. The following stps shbould be repeated for each illumination laser


#### 4.5.1 Open Laser Shutter

1.  Close the laser chamber door slide and pyuty the chambner lid in place
2.  Open the manual laser shutter on the left side of the sort head

##### img: Manual laser shutter in open position

1.  The instrument is also equipperd with an automatic laser shutter ninterlock system.
2.  When the system is armed, openning the chamber door slide will cause the automatic shutter to close.
3.  it will not repoen unless two conditions are met
    1.  The chamnber door slide is alosed 
    2.  The system is resert byu placing a finger in front the of the reset detector.
4.  The reset detector is behind a small hole in the uppper right corner of the chamber door, as shown below.

##### img: Laser Interlock system reset apperature.

::: warning ALWAYS USE EYE PROTECTION
1.  The laser interlock system does NOT eliminate the need for operators to wear weye protection
2.  it is possible thast a bright light pointed at the chamber area will cause the laser  shutter to be opened evben though the chamber door slide is open
:::


#### 4.5.2 Steer laser to stream

1.  Note: 
    1.  Most lasers will show a glow in the pinhole minitor when they strike the stream.
    2.  All lasers will scatter off the stream and create a horizontal laser scatter line across the chamber and the chamber door window
    3.  This procedure can be more challenging with UV lasers due to their invisibility. 
    4.  Fine-tuniung tof the laser will be completed later, when running calibration files

1.  For each laser:
1.  Use the illumination stage's y-axis (sweep) and z-axis to aim the laser at boith the center of the stream and at the height of the appropriate pinhole
2.  Adjust the y-0axis micrometer of the nozzle stage so that the forward and side scatter intensities are maximized
3.  Adjust the z-axis micrometer so that the appropruate pinhole i silluminated.
4.  Again, this is an interactive process.
5.  The laser will not need to be focused except ffor special applications
6.  For information on laser focus see chapter 5
7.  Repeat for each laser.


### 4.6 Sample Introduction


#### 4.6.1 Load Sample Tube

1.  Use only Falcon 35-2063 5mL sample tubes.
2.  Cytopie recommends all samples be filtered to 40um to prevenmt nozzle clogs

1.  Fill tube with up to 3 mL of sample.
2.  Load tube iinto sample tube holder and lock the tyube in place over the stopper usinmg the lever
3.  Take care not to damage the sambple tube

##### img: Locking sample tube in place


::: warn
1.  Use care when removingh the sample tube
2.  The sample tube is usually pressurized and may spill or splatter.
3.  To properlly remopve the sample tube
4.  Move the lever slowly backward until the tube is pushed down into the recessed area of the lever.
5.  Pressure is then released and the tube may be removed safely
:::



#### 4.6.2 Open SAMPLE VALVE

1.  Check that the sampple pressure is set about 1 PSI over the sheath pressure
2.  Open the SAMPLE VALVE

#### 4.6.3 Run sample at a low rate

1.  Aim the laserso that it is just above the center pinhole, in between pinholes for multi lasert systems
2.  When running bright calibration beads or cells at a low flow rate a narrow sample core can be viewed in the pinhole minotor
3.  If the flow rate is too high, the sample core will be verty large, approaching the size of the jet.
4.  If no beads are observed flashing in the stream then the flow rate is too low.
5.  (Ken Note) *"We use spheriotech ultra rainbow beads at one drop to one ml sheath (approx)"*

##### img: Pinhole camer aimage, with beads showing in stream

1.  The flow rate of the samopkle is determined by the sampe pressuer setting.
2.  A sample pressure of 1 PSI over sheath pressure a low flow rate is usually achieved, however this setting depends on the concentration of the sample.
3.  When first running a sample you may wish tio BOOST the sample pressure temporarily in order to get sample to the jet q  uickly.
4.  Hold down the BOOST button the boost the sampkle to 3 PSI over the sheath
5.  Adjust sample pressure until a low flow rate is achieved.
6.  Iterate between these steps unti9l the sample core is as narrow and bright as possible:
    1.  Adjust the y-azis of the illumination stafe si tgbat tge brightest signal is observed in the pinhole monitor
    8.  Adjust the x-axis of the nozzle stage so that the signal is tighted (spatiallty) in the pinhole monitor
7.  Use the z- and y-axes of the nozzle st6age to place the sample core in the center of the pinhole
8.  The SAMPLE VALVE may be closed if desired at thisd pouint to opreserve tghe samplwe until data acquisition parameters are set up.



### 4.7 Data Acquisition

1.  Spigot software is used for most all data acquisition controls.
2.  Spigot allows control of PMTS and allows custom gating schemes to be developed and saved in configuration files
3.  It is reciommended that a configuration file be saved for eacgh protocol run on tyhe inFlux.
4.  See the chapter on the Spigot Interface ffor detailed sdcrriptions of the spigot functions
5.  This chapter will refer to fluorescence channels as FL1-FL7 and forward and side scatter as FSC and SSC.




#### 4.7.1 Open a Spigot Configuration File (*.sco)

1.  If a sp8igot configuration file has already been saved fort alignmernt particels, open that file and skp the steps outlines below for configurint  Spigot
2.  Otherwise, follow the direcvtions below and set up a new configuration and save the settings in a anew *.sco file by sleecting FILE > SAVE CONFIGURATION FILE in Spigot


#### 4.7.2 Activate PMTs

1.  Activate all PMTs that will be used during alighm,ent
2.  It is crucial that the FSC PMT is activasted suince it isd the signal that is used fir the system trigger
    1.  No data will be acquired unless the FSC PMT is activated

#### 4.7.3 Choose paramteres to plot

1.  Choose parametersd to plit in Spigots Left displat as descruivbed in the Spigot Interface chapter/
2.  Typically FL1 is plotted vs  FSC and thesae instructions will detail how to set-up and align those two parameters.
3.  Use a similar method for plotting other or more parameters.


#### 4.7.4 Set intial PMT gains

1.  The inFlux system is shipped pre-confuigured for linear (lin) or logarithmic (log) amplification for fluorescent channels.
2.  These settings can be changed onnthe Patch Panel on the front of the electrionics console.
3.  SPigot can also be set tio either klog or lin for any channel as a visual remiunder of the controlling hardware setting and to displau logarithmic scales on data plots
4.  As PMT gains are increased the system will begin to acquire pulse data
5.  The oscilliscope is used to  moniitor the pulses and is verty usweful for setting initial PMT gains
6.  From Spigots Simple Config sacreen, set the [Scope Disoplay] > [CH1 and CH2 ] displays to FSC and FL1 (usually channels 1 and 3)
7.  Use Spigot to increase rthe FSC fgain until pulses  of about 5V can be detected on ther noscilliscope.
8.  Do the same for FL1
9.  Since the range for pulse height measurements in sppigot is 0-10 V. pulse heights of about 5V should correscpond to data that is acquiresds in about the middle of a FL1 vs FSC plot in the left display.
10. Make sure that data are beiung acquired by Spi9got and adjust the PMT gains so that the data are not off-scale

#### 4.7.5 Set trigger level and event trigger delat

1.  [Trigger Level] sets the threshhold  for the lowest detectabole signal sand it set off the system trigger (usually FSC)
2.  Its intended use is to eliminate noise
3.  It is best to keep the [Trigger Level] as low as possible since the system will not detect any events that fall below the threshhold, and those events may end up in the sorted sample
4.  With multilaser systems, it is necessary to set the Event Delayt for each additional laser
5.  Align adduitional lasers using the pinhole mmonitor and the oscilliscope.
6.  Adjust the event delat from the menu until the sdignals from, the addition lasers fall into appropriate bins as displayed on the third oscilliscope trace (labeled as the ALL cable).
7.  Finally, make sure that additional laser cghannels are set to the appropriate levels (1, 2, or 3) in the [SIMPLE CONFIG] screen. Typically, [EVENT DELAY] will only need to  be changed if the sheath pressure of the systen is changed.



### 4.8 Alignmeng

1.  Fine-tuning of the inFlux involvers positioning the sample core at the focal point of the objectuive lens in the pinhole, illuminating the sample core optimallty, and aligning the FSC. 
2.  PMT gains mat neesd to be adjusted as the ststen si as ti keep aata on sxccale.

#### 4.8.1 Focus light emission from the sample in the stream

1.  Open sample valve and ensure that the samplem flow is flowing at a low rate.
2.  As described earlier in this chapter, ensyure that the sample core is:
    1.  focused
    2.  maximally illuminated
    3.  in the center of the pinhole using:
        1.   the pinhole monitor
        2.   Nozzle Stages
        3.   Illumination Stafe

  

#### 4.8.2 Optimize Fluorescence Channel

1.  Whjile a FSC signal must be detected first (if it is the system trigger), it is important to first align to a FL or SSC channel since the objective lens is fixed while the FSC detector stafge allows adjustment
2.  Some flow cyometer operators prefer to align the FL signals using linear amplification.
    1.  To do so, move the BNC connector on the front of the electronics console from LOG to LIN for the appropriate channel.
    2.  Remember ti set the channel back to LOG after tuning and use Spigot to re-adjust rhe PMT gain appropriately
3.  Adjust the y-axis of the illumination stafe and use the oscillisope pulse monitor and the left SDpigot screen to mazimize the the signals from the FL1 detector
4.  The pulse should be as high as possible and the signal in Spigot shoud be maximized
5.  Remember to ignore the FSC signal while tuning the FL channel

#### 4.8.3 Optimize forward scatter signal

1.  Once the FL signal is optiomized, the FSC signal can be optimized
2.  Use the y- and z-axies of the forward scatter stage to maximize the signal from the FSC detector

#### 4.8.4 Optimize aditional laser paths

1.  After the first l;aser path is aligned for fluorescence and FSDC< additional laser paths can be aligned for fluorescence yusiung their resopectuive illumination stages as described in this secion.

### 4.9 Sort Gating

1.  Sort gates can be defined via the Spuigot interface. 
2.  Up to 12 (6 left andf 6 right) 2-parameter sort windows can be defined at the same time.
3.  Sort windows are tweo dimantional sort gates thjat allow the operator to select portions of ata tio vbe sorted
4.  Many options, such as sort filtering, are available
5.  These instrucvtions will describe how to sert up a basic sort window as well as a few advancved features
6.  The Spigot Interface chapter also contains reference information.

#### 4.9.1 Draw Sort Windows in Spigot

1.  To draw a sort window (SW) in Spigot first click on the SORT
1.  The right duisplay will contain six squares  corresponding to the instruments six Look-up Tables ("LUTs")
2.  Highlight LUT 1 by blicjking inside the square of LUT 1.
3.  The border aroundn LUT 1 will turn orange indicating that LUT 1 is selkected for editing
4.  Choose the parameters for the SW (i.e. FL1 vs FSC) by changing the X and Y axes selection on tyhe left display.
5.  The LUT will ingherit the axes of the left display's plot when axes are changed.


1.  In the left toolbars sort window function area, choose whether the gate will be a left SW< right SW< or both by clicking g left right ior vbithg. Next draw as a rectabgnle ,ellipse,. or poltygon. 
2.  To draw a rectangular or elliptical SW click on RTectangle or Ellipsemajd left cl;l;ick and derag on the left disdplat.
3.  To draw a SW of any shape (polyugon), single left click again and continue the oopriocess untikl the desired shape is drawn
4.  Right  click to close thje polygon and finish drawing the SW
5.  OPnce the SW is drawn on the left display it will also appeaer in the LUTnon the Rigt DIsplay if Show Sort Windows is checked in the right toolbar
6.  Data that have a left SW drawn aroundf it will become red.
7.  Data that are selecvted for both right anmd left sorting will become yuellow and will nnot be sorted


1.  Additional LUTs can now be selected, and differenrt parameter may be selectec for SW drawing. For exampl;e, the LUT 2 may be chosern to displau FL2 vs SSC
2.  By drawing another SW aroundf these new parameters ist is possibnle to detect a particle with four desireable characterisics 
    1.  e.g. FSC FL1 FL2 FL3
        1.  It may fluoresce green
        2.  Have poarticle forward and perpendicular scatter values, and not fluoresc red

1.  In this fashion up to 12 parameters can be set for both right and left sorting (dependingh on tyhe number of photo multiplier tubes included iin the particular inFlkux configuration)
2.  SWs follow "and" logisc; as additional SWs are created in multiple LUTs, only data selected in *all* SWs will be sorted.
3.  Data that are selectred for the lkeft or right sorting in *all* SWs will appear green (left sirt) or red ()right sort in the Left Display


4.  An operator may also choose data oyutside of a SW to be sort3ed again by selecting the LUT in the Right Dislplaty, drawing a SW in the left display, and clicking on Left or Right and clicking Outside in the left tooolbar
5.  This allows for "not" logic to be used when multiple SWs are drawn in multiple LUTs.


1.  Overall sort statuistics are displayed on the left display, while individual statistics for each LUT are displayed next to each LUT.
2.  LUT statistics report the percentage of particles chosen for left sort, right sort, neither or percentage of particles slected for left, right, neither, or both sort when SWs have been drawn in multiple LUTs.


1.  The Reset button (in the sort window function area) can be used to reset SWs drawn in a particular LUT window by sewlecting the LUT and clickking on Reset,
2.  All LUT SWs can be reset by clicking the Reset All button in the sortty weindow function area
3.  SWs may be nmmoved or strecthed the clicking on the modify button


#### 4.9.2 LUT/Classifier Filters

1.  Spigot allows data filtering based on SQWs for easy identification of populations and subpopulations across many parameters.
2.  two types of filtering are possible: LUT filtering and classifier filtering.
3.  When Lut filters are activated,m the left display will only sdhowe data that are inside SWs drawn in the LUTs.
4.  LUT SWs can be filtered through in any combination, alone, or not at all/\
5.  When a classifier filter is selectednin the elft display will only disdplayu data that have been selected for sorting in *all* LUT displatys (i.e. the actual data to be sorted)
6.  

1.  To apply a LUT filter click on SHOW LUT FILTZERS.
2.  A small rectangle of six boxes will appear in then left display. These suix squares rwepresent the 6 LUTs and by clicking on one of the squares the darta willl be filtered through any SW drawn in that particular LUT.
3.  Miltiple LUTs can be filtered through in combination by cliocking on more of the squares.
4.  

1.  Classifer filters can be applied by changing the left toolbar's drop down menu seolection ffrom No Classifier Filter tpo the desirted classifier filter sertting.

### 4.10 Analyzing

1.  Once the system is tuned, data may be analkyzed.
2.  Spigot provides real-time analytical tools described in the Spigot interface chapter.
3.  For detailed statuistucal analysis Spigot allows data to be stored in the *.fcs file format that can be read and manipulated with a separate analysis software such as FlowJo.

#### 4.10.1 Save *.fcs files

1.  To save data to an *.fcs file from SDpighot, refer to LIST TOOL and QUICK LIST sections in the Spigot Interface chapter

### 4.11 Drop Dely

1.  Setting the proper drop delay is critical for sort purity and recovery
2.  When the same nozzle tip and sheath pressure are used eqach day, the delay setting will be very similar day to day, and thus some of the following steps may not be necessaery
3.  The following instructuiions descriobe how to find the proper delaty setting without knowing the previous days settings.
4.  

1.  It is very important that thwe fluid stream ghas had at l;east 30 minutesd of warmup time to stabilize. it is also very important that there are nio bubbles in the nozzle. 
2.  Refer to the Stream Generation section to make sure that the nozzle is properly purged of bubbles.


#### 4.11.1 Optimize Droplet Formation

1.  Re-oprtimizing tyhe BOP as described in the above section on Droplet Formation
2.  

1.  Use the PIESZO AMPLITUDE knob to ensure that the waveform of the get at the BOP remains constant through the delay caibration processs
2.  Minor adjustments to the PIUEZO AMPLITUDE knob are normal.
3.  If a mahjor adjustment is necessary then check to make suirer that there are no bubbles or cloggs om the nozzle.

#### 4.11.2 Use Spigoty to approximate Drop Delay

1.  OPen the SORT DELAY screen in Spigot.
2.  Scan the drop camera to the points indicated. using the bottom edge of thew drop mmonitor as a reference point
3.  Enter the val;ue of the DROP POSITION (indicatyed on the pressure console) for each position.

##### img: Drop Position readfout on Pressure Console

1.  Enter the master clock frequency in Hz and click Calculate

##### img: Clock setting (KHz) on function generator

1.  Spigot will calculate the approxmiate drop delat.
2.  Click Set Drop Delay in Spigort to set the system drop delay to the calculated value.

#### 4.11.3 Run test series with the WDU

1.  Run calibrtation particles at a low rate (100-1000/sec) and draw a SW around them ass described in the Sort Gating Section
2.  From the TRAY screebn in Spigot send the WDU to Calihbration > Present
3.  Place a microscope slide in the WDU and insert in the first position.
4.  Send the WDU to Calibration > Sort Ready
5.  Open the SORT screen in Spigot anmd choose the number of particlesto be sorted for the calibration run.
6.  It is recommended (and these uinstructions will assume)  that the sort count be set toi 20.
7.  Open the TRAY screen in Spigot and click Sort! The WDY will place a 5x5 matrix opf puddles on the slide
8.  Each puddle on the slide represents a sort command for the set number of particles (20) at different delat settings. 
9.  After thre WDU deposits the 225 puddles ua screebn will pop up that liusts tghe delat settubg Sougit ysed fir eacg if tge 25 puddles.
10. Take the slide ti a fluorescebnt nucriscioe abd count the number iof the particles  in each puddle
11. A drop Delaty Worksdheet is provided in the appendix of this manual as a suggested method for keeoping track of the particle counts per puddle
12. Identify the three puddfles in series with the highest particle counts
13. Take note of the position of the middle puddle of the saeruies of 3 with the highest count
14. Read the delaty valye froim the WSpigot delay setting popup that coirresponds tio the ouddle indicated abiove
15. This will be the delay setting used for the next calibration run

#### 4.11.4 Set Drop Delay

1.  To sert the drop delay to the value indicated  by the delaty setting popup open the SIMPLE CONFIG sscreen in Spigot and change the delay setting as required

#### 4.11.5 Repeat Delat Calibration

1.  Repeat the above steps until tweo calivbration series in a row yield the same value for the delay.
2.  This will be the delay setting used for the rest of the day
3.  Remember that sheath pressure, master clock setting, and BOP all need to remain constant in order for this delay setting to be accurate.
4.  IF any of those settings change the delay will need to be reset as described above


### 4.12 Sort Modes

1.  When sorting, it is important to consider both coincident particles and the position of particles inside droplets
2.  Coincidence occures when two or more particles are close than the spacing of the droplets, so thgat more than one particle ends up in the drolet. 
3.  Obviously, these droplets must not be sorted iun itder ti acgueve maximum purity
3.  Coincidence is higher than sampkle rates are higher and when droplet rqat3es are lower;m thus, chooosing a proper sort mode depends on those settingas and the desired result of the sort: Purioty or Recovery
4.  When the exact Count of a sort is important, suich as when sorting one particle into each of 96 wells, it is important to consider the position of the particle inside the droplet since particles near thr droplet boundaries may end up in either droplet

#### 4.12.1 inFlux Systems

1.  The inFlux sorter provides circuitry to take care iof thesde issues.
2.  Coincidence ciurcuitry allows the user to set a coincidence wiundow (in the number of drops) before or after an event is detected.
3.  If another particle is detected within the coincidence window, the particles will not be sorted.
4.  A 1-1/2 drop sort mode is also available.
5.  The 1-1/2 drop sort mode will sort two drops when a partuicle is on a droplet boundary and ione particle when a droplet is in the center oif a drop, ensuring accurtate sort count.
6.  Cytopeia recoomenads threee different combinations of these two settings to arrive at useful sort modes depending on the desired outcome of the operator.
7.  Other settings may be exoerunebted wuth as desired

#### 4.12.2 Setting 1: High throughput, high purity, low recovery (<85%)

1.  Use this setting when sample rates are high compared to droplet rates, and when the count of the sorted particles is less important.
2.  Pre and Posr Coincidence = 3/4 drop, 1 drop sort

#### 4.12.3 Setting 2: Low Throughput, High Purity, Higher Recovery (<95%)

1.  Use this setting when sample rates are low compared to droplet rates, and when the count of the sorted parti9clwes is important
2.  Pre and Post Coincidence = 1-1/4 drop 1-1/2 drop sort

#### 4.12.4 Setting 3: Highest Recovery, Lower Purity

1.  Use this setting when high recovery is desired and purity is not as important
2.  Pre and Post Coincidence = Disable Coincidence, 1-1/2 drop sort


#### 4.12.4 How to set the coincidence and sort mode

1.  The 1 -- 1-1/2 switch on the control panel switches the sort mode from 1-drop (switch down) to 1.5-drop (switch up) while sorting
2.  note that the same switch is also used to fine tune the phase of the SOP as described in the droplet formatuioin section above
3.  The function is unralted to the sort mode function and is only intended to be used for set-up, and not for sorting
4.  Coincidence settings can be changed uin tghe CONFIGURE ADCs menu in Spigot
5.  Do not set the coincidence higher thab 1-1/4 drop

### 4.13 Sample Collection

1.  The WDU fearture allows sampkles to be collected into 5ml sample tubes and 96-well plates.
2.  Additional collection trays can be devekioped for special configuatuins
3.  Make sure that the systemn is aligned, droplet formation is table, and thatt the deflay setting has been calibrated before collecting sample

#### 4.13.1 Running Samples

1.  When running samplesd it is critical that the sample line be back-flushed for about 30 seconds with switching to new samples to minimize sample carryover
2.  If sample carryover is a major concern, load a sample tube with sheath fluid and run clean water throuigh the sample line at high sample pressure (~5 PSI above sheath pressure) until no particles are detected.
3.  Alternatively a new sample line can be installed with ease, insuring no sample carryover.

#### 4.13.2 Left and/or Right Sort

1.  To collect up to two samplem populations  simultaneously, use the 2-Tube sort mode.
2.  To ensure that the soert streams wqill fall into the collection tubes, you may wish to double check the setting oif the PIEZO and the STREAM DELFECTION amplitudes as descruibed in the droplet formation section
3.  Load two 5ml sample tubes into the WDF insert
4.  Send the tray to the 2-Tube > SORT READY position.
5.  Make sure tyhat the PLATES are on and that the STREAM DEFLECTION is on. 
6.  Choose the number of cells to be sorted left or right from the SORT screen.
7.  Click on Left Sort or Right Sort to begin sorting (based on your gating scheem) into the collection tubes.
8.  A progress bar will pop up in Spigot to give feedback on the number of cells sortesd as tghe sort progresses

#### 4.13.3 96-Well Tray

1.  96-well Sorting allows a particular number of particles to be placed into each of the wells of a 96 well plate
2.  Followq directions above but use the 96-Well mode for all tray settings

#### 4.13.4 Sort Bypass

1.  Selecting Bypass mode in the right toolbar’s sort controls ratgher than Normal will enable sorting without counting
2.  As much sorted sample as availavbe in the sample tube will bne sorted without couint feedback

### 4.14 Shutting Down

1.  *No text*

#### 4.14.1 Close Spigot

1.  *No text*

#### 4.14.2 Shut down fluidics

1.  For optimal resukts abd decreased cgabces of contaminatioin, the inFlux fluidics should be shut down, emptied out and allowed to dry overnight.
2.  Use the following shutdown procedure:
3.  Allow sample line to backflush for at least one minute
4.  Close the SHEATH VALVE, SAMPLE VALVE, and PURGE VALVE
5.  Turn off the sheath pressure by flipping the AIR switch down on the Pressure COnsole
6.  Empty sheath reservoirm, rinse, and fill with about 200mL of 0.22um filtered distilled or de-ionized (or MilliQ) water.
7.  Reattach sheath reservoir (*Ed: Without inline filter I imagine?*), and flip up the AIR switch oin the pressure console
8.  Reopen the SHEATH, SAMPLE, and PURGE VALVES,let the clean water flow through the system until it has been emptied the sheath reservoice and system blows air
9.  Allow the systenm to blow air until no more water is coming up the sheath line and until no more water drips from the sample line when backflushing
10.  Close the SHEATH VALVE, remopve the nozzle tip (put nozzle tip in a safe place), place flush bucket under nozzle assembly and re-openm SHEATH VALVE
11.  Let the system blow out for 10-15 minutes to fully dry out the tubing.
12.  Flip the AIR switch to off on the Pressure Console
13.  Remove sheath and waste reservoir and empty all liquids,
14.  Rinse and/or clean reservoirs as necessary
15.  Turn reservoirs upside down on the table on a piece of absorbing tissue.
16.  Be careful not to damage the gauges or fittings

#### 4.14.3 Shut down electronics console

1.  Turn the Electronics Console off by flipping the MAIN POWER switch on the bottom left of the console to the OFF postitioni.
2.  Turn off all switches on thr Control Panel


#### 4.14.4 Shut down lasers

1.  Shutdown all lasers as specified by the manufacturer.





####
####
####








