--- 
title: OG Manual
--- 


## 1. Introduction

Overview of this manual and it's use in conjuction with the inFlux platform


1.1 Intended Use

1.1.1 Investigation Device Caution

::: warning CAUTION - INVESTIGATIONAL DEVICE
LIMITED BY FEDERAL (OR UNITED STATES) LAW TO INVESTIGATIONAL USE
:::

::: note details Intended for laboratory research
-   Approval for use beyond laboratory research requires express permission.
-   inFlux should only be operated by trained personnel in accordance with standard operating procedures of the facility
-   All devices (e.g. lasers) that are part of the inFlux instrument platform should be used in accordance within the specifications of the original manufacturer.
:::

1.1.2 Spigot software

-   No longer relevant.

1.2 About the *inFlux&reg; Cell Sorter Operator Manual v2.1*

-   Resource for inFlux operators
-   Intended to be an introduction to the inFlux platform and the basic operations
-   A reference giude for experienced users
-   The manual contains:
    -   Basic description of influx
    -   Critical safety information
    -   Operating procedures
    -   Maintenance information
    -   ~~Spigot Interfance~~ No longer relevant

1.3 Using this manual

-   User’s should read through the guide before first using the instrument.
-   Be aware of the text style conventions

1.4 Chapter Descriptions

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

1.5 Document Conventions

::: danger DANGER/WARNING
Hazards that, if not avoided, will result in death or serious injury.
:::

::: warning CAUTION
Hazards that, if not avoided, might result in minor to moderate injury and/or physical damage to the instrument platform.
:::

::: tip NOTICE
Indicates important information
:::

1.5.2 Instrument Description Conventions

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
4.  












