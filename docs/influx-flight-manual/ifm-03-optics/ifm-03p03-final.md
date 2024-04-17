---
title: Final "Bead" Alignment
icon: bullseye
---


<!-- filename: /docs/influx-flight/ifm-03-optics/ifm-03p04-final.md -->


<!-- Reference Links -->
<!-- Usage -->
<!-- [img-label]: ./assets/filename.png -->
<!-- ![Caption Text][img-label] -->
<!-- Assets -->

<!-- URLs -->
[img-457-delay-low]: ./assets/img-457/ifm-startup-main-003-scope-457-delay-too-low.png
[img-457-delay-set]: ./assets/img-457/ifm-startup-main-004-scope-457-delay-set.png
<!-- End Ref Links -->


[[toc]]

## Full Alignment

### Procedure

::: note details degrees of instrument (as opposed to the user’s) freedom
The beer alignment should have set you up for a relatively painless bead alignment. The nature of the inFlux’s flexibility means that there are multiple combinations of [laser stages] + [stream position] + [FSC lens] that result in a well-defined beer alignment but which do not translate to a tight bead alignment. 
:::



### Align 488 Laser

The 488nm Laser is the Primary laser for this Instrument. It is the only laser that passes through the filters on the FSC Detector Path.

1.  We will align the 488nm Laser to the Fluorescence Channels first because the SSC/Fluoresence Detector Lens is fixed, whereas the FSC Detector Lens can be moved with it’s own stage.
    1.  Set the Trigger Channel to RED and the Trigger Level to 2.
    2.  Use the plot with 488-RED vs 488-ORG to align the 488 laser to the SSC/Fluoresence Detectors.
    3.  The goal is to get the BEAD population on the plot “high and tight.”
2.  


## Align 457 Laser


### 457nm Set Delay

::: note 457nm Laser Delay Too short (Third pinhole)

![Oscilliscope View for 457nm Delay Value too low][img-457-delay-low]

:::

::: note 457nm Laser Delay Set (Third pinhole)

![Oscilliscope View for 457nm Delay Set][img-457-delay-set]

:::



## *Optional* Align 671 Laser
 
### Best practice note: 
 1.  Use this opportunity to get a rough estimate of the volume of the sample line.
 4.  In Flowmeter, activate the Totalizer and Reset it to 0. 
 5.  Wait until the 