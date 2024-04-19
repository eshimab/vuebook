---
title: 1.5 Sortware 1 - Connect
icon: computer
---

<!-- filename: /docs/influx-flight/ifm-01-startup/ifm-01p04-sortware-part1-connect.md -->

<!-- Reference Links -->
<!-- Usage -->
<!-- [img-label]: ./assets/filename.png -->
<!-- ![Caption Text][img-label] -->
<!-- Assets -->

<!-- URLs -->

<!-- End Ref Links -->

## TOC

[[toc]]
---




## 1.5.0 Start Sortware

::: tip Start Sortware and Connect to Cytometer
It’s best to make sure that Sortware can connect to the instrument before doing any more setup. If Sortware cannot Connect to Cytometer, you may need to power cycle the Instrument, potentially impeding alignment.
:::

::: warning Check Sort Chamber before connecting to Cytometer
-   Be sure that the Sort Chamber is free of any loose objects (beakers, syringes, etc) before Connecting Sortware to the Cytometer. 
-   When the cytometer connects to Sortware, the Sort Tray will perform a homing movement to center the tray.
-   Any objects which block the free movement of the Sort Tray aparatus will cause a mis-alignment between the coordinates in the Sortware Tray Control and the physical location of the sort tray.
:::


To start Sortware and Connect to Cytometer:





4.  Ensure that the Dell PC isn't making any error noises. 
5.  On the HP PC, click the *Sortware* icon in the menu bar on the top of the screen. 
6.  Give the software a few seconds to load, and then press `Connect`. 

[img-swConnect]: ./assets/img-01p04-sortware-part1-connect/img-01p04-sortware-cytometer-connect.png
![Connect SortWare to inFlux][img-swConnect]



## 1.5.2 Unable to Connect
1.  Ensure that the Dell PC isn't making any error noises. 
2.  On the HP PC, click the *Sortware* icon in the menu bar on the top of the screen. 
3.  Go to the menu item `Cytometer > Connect to Cytometer`
4.  In should report a successful connection.
    1.  If the Cytometer Settings panel is open, the Status tab should not have a red symbol on it.
    2.  The symbol will appear if there are connection problems with the instrument.
    3.  The symbol may not be cleared automatically. You will need to click `Clear` in the `Status` tab of the `Cytometer Settings` panel. 
    4.  Shutdown the HP and Dell PCs gracefully using the Windows OS. Don't just press and hold the Power button.
    5.  Unplug the router and wait 30 seconds.
    6.  Plug in the router, wait a couple minutes for it to boot up.
    7.  Start the Dell and HP PCs in that order, as detailed earlier.
    8.  If the first power cycle fails, do another power cycle, this time also turning the Instrument off *after* shutting down the PCs.
        -   The Instrument should be turned off at both the Chassis and Workstation power switches
        -   Power on the Instrument and then PCs as in the Power section.
    9.  If you are still unable to connect, go to Network Troubleshooting.