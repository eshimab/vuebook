--- 
title: 2. Instrument Overview
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



