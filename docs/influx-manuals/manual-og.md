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

The Monitoring Subsystem








## 3 

3.2.4 Mechanical

Mechanical pinch or crush hazard due to:
-   Do not remove guard or covers with labels alerting mechanical hazards. 
-   Use caution with sort chamber door hinge

Well Deposition Unit
-   Moving parts alert
-   Don’t reach into “workspace” while unit is operating

3.2.5 Pneumatic

Pressurized air and vacuum hazards
-   Safely connected
-   Know how to shut off
-   Use caution near vacuum 


