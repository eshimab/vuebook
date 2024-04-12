--- 
title: 1. Introduction
--- 

<!-- filename: manual-cytopeia-01-intro.md -->

Overview of this manual and its use in conjunction with the inFlux platform


### 1.1 Intended Use

#### 1.1.1 Investigation Device Caution

::: warning CAUTION - INVESTIGATIONAL DEVICE
LIMITED BY FEDERAL (OR UNITED STATES) LAW TO INVESTIGATIONAL USE
:::

::: note details Intended for laboratory research
-   Approval for use beyond laboratory research requires express permission.
-   inFlux should only be operated by trained personnel in accordance with the standard operating procedures of the facility
-   All devices (e.g., lasers) that are part of the inFlux instrument platform should be used in accordance with the specifications of the original manufacturer.
:::

#### 1.1.2 Spigot software

-   No longer relevant.

### 1.2 About the *inFlux&reg; Cell Sorter Operator Manual v2.1*

-   A resource for inFlux operators
-   Intended to be an introduction to the inFlux platform and the basic operations
-   A reference guide for experienced users
-   The manual contains:
    -   Basic description of inFlux
    -   Critical safety information
    -   Operating procedures
    -   Maintenance information
    -   ~~Spigot Interface~~ No longer relevant

### 1.3 Using this manual

-   Users should read through the guide before first using the instrument.
-   Be aware of the text style conventions

### 1.4 Chapter Descriptions

There are six chapters

1.  Introduction
    -   Intended use
    -   This manual’s
        -   Scope
        -   Organization (You are here)
        -   Conventions
2.  Instrument overview
    -   How the inFlux works TLDR
    -   Main functional subsystems
        -   Descriptions
        -   Images
        -   Terminology
3.  Safety
    -   Critical safety info
        -   potential hazards
        -   Safety features
        -   Warning labels
4.  Operating Procedure
    -   Step by step instructions.
5.  ~~Spigot Interface~~
    -   Likely to be skipped
6.  Maintenance
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

| **Text Style**     | **Meaning**                | **Example**      |
| :----------------- | :------------------------- | :--------------- |
| **ALL CAPS BOLD**  | Physical Instrument Button | **PLATES**       |
| *ITALICS CAPS*     | Instrument Display         | *Pinhole Camera* |
| *Italics*          | Instrument Component       | *Nozzle*         |
| `Monospace Font`   | Software menus and values  | `File`           |
| `Mono > Menu Item` | Software menu item         | `File > Open`    |
| *`Mono Italics`*   | Software ???               | *`Something...`* |

::: note STAGE ADJUSTMENT AXES
-   Stages are the adjustable platforms for focusing and aiming:
    -   Illumination laser light
    -   Light emitted as fluorescence or scatter 
    -   Detailed later in the guide
-   Each stage is adjustable in Three Cartesian Axes: X, Y, Z
    -   Defined with respect to *either*
        -   Illuminating light path
        -   Path of emitted fluorescence or scatter
    -   The axes directions
        -   X-Axis: Move stage parallel to the light path.
            -   Don’t move without much foresight.
        -   Y-Axis: Sweep the stage horizontally (and perpendicular to the light path)
        -   Z-Axis: Move stage vertically (and perpendicular to light path)
:::

::: note Nozzle Adjustment Axes
-   Nozzle Stage Cartesian
    -   The nozzle stage has all three Cartesian axes and all adjustments are used in typical operation
-   Nozzle Assembly Tilt
    -   Theta 
        -   Side-to-Side tilt parallel to the direction of laser illumination
    -   Phi 
        -   In/Out parallel to fluorescence/scattering emission optical path
:::

::: note Well Deposition Unit (WDU) Axes
-   With respect to movement of the WDU Collection Tray
    -   X-Axis: “Right-left”
    -   Y-Axis: “In-Out” (Front-back)
:::
