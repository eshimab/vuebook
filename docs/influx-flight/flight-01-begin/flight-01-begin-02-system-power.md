---
title: System Power
icon: power-off
---

<!-- filename: flight-begin-02-system-power.md -->

<!-- Reference Links -->
<!-- Usage -->
<!-- [img-label]: ./assets/filename.png -->
<!-- ![Caption Text][img-label] -->
<!-- Assets -->

<!-- URLs -->

<!-- End Ref Links -->


[[toc]]

## System Power TLDR:

1. Turn On InFlux Instrument
2. Check Cameras with Marshal Monitor
3. Turn on Lasers
4. Turn On Computers and start Sortware

## Turn On InFlux

::: note asset “Workstation Power Switches”
Power switches are on the Workstation cart and instrument chassis. Note:
-   the *Eliminator E 107* power strip.
-   The Sort Chamber Control Buttons 
:::

1. Turn On Primary Power “Power Strip 1” Computer Table
2. Turn On Instrument Power using Rocker Switch on Instrument Chassis
3. The Vacuum Pump and Lasers are plugged into the Front Panel Power Switches on the unit labeled *Eliminator E-107*
3. Turn On Power for the Vacuum Pump.
    ::: note asset “Vacuum pump in a box”
    The vacuum pump is behind the instrument chassis in a sound isolation bin. Note:
    -   Exhaust Location
    -   Power Toggle
    :::
    1.  Vacuum pump power is on switch 1 (labeled Vac) by default.
    5.  The Vacuum pump is in a plastic bin behind the instrument. 
    5.  The bin is for sound isolation.
    6.  The pump exhaust fan should be facing out of the corner with the *exquisitly* carved port. To keep the pump from overheating.
    7.  The Vacuum pump toggle switch should be on. We normally leave this toggled and power the vacuum pump 
4. Lasers are powered with the Rocker Switches on the *E 107* Unit. We will turn them on later. For reference:
    1. The  Switches are numbered:
        1. **2** 488 - 488nm *Coherent* Laser
        1. **3** 457 - 457nm *Melles Griot* Laser
        1. **4** 671 - 671nm *Opto Engine* Laser
4. Turn On Tektronix TDS 2014C Oscilliscope using the Power Switch on the Top Left Corner.

## Check the Cameras using the Marshall Monitor

1. Monitor is located on Computer Table.
3. Left Monitor “PIN HOLE”
    1. VIDEO 1 - Pinhole Camera of the Stream and the Laser Pinholes
    2. VIDEO 2 - None
4. Center Monitor  “DROP”
    1. VIDEO 1 - FSC Pinhole Camera 
        1. Camera is located on the FSC optical path
    2. VIDEO 2 - Drop Camera: For finding Break-off Point for Flow Sorting
        1. The Drop Camera is moved with the Drop Camera Z Knob located near the Sheath Valve on the top of the Instrument
        2. If the Drop Camera seems dark, be sure that the Drop Camera Mirror is installed outside the Laser Chamber with the Flat Side facing towards the corner between the FSC and Side/Fluorescence lenses. There is an opening in the wall of the Laser Chamber, allowing light from the Drop Camera Mirror to illuminate the stream viewed by the Drop Camera.
5. Right Monitor “STREAM”
    1. VIDEO 1 - Stream Camera (Shows Sort Chamber for Sorting and Coarse Alignment)
        1. If this Camera is dark, make sure to activate the yellow ILLUM Button located on the Front Right side of the Instrument Chassis


## Turn On Computers & Start Software

The Workstation is comprised of two computers connected via a router. 

### Shutdown Procedure

::: warning When shutting down the PCs
**Always** shutdown the computers gracefully using the Windows operating system. Failure to do so may cause latent performance issues that are difficult to explain.
:::

### Check Router

1. The router should be plugged in and on.
2. The first and second ports on the rear of the router should be connected to:
    1. Dell PC
    2. HP PC
    3. User's laptop (Optional)

### Start Dell PC (CytoServer)

::: note asset “Workstatiom cart front”
Front of the workstation cart where the PCs, Marshal Monitors, Oscilliscope, Main system power, and router are stored.
:::

1.  Ensure that the InFlux Instrument is powered On.
2.  Ensure the device and it's peripherals are plugged in:
    1.  Dell PC to Always-On powerstrip
    2.  Dell PC Monitor ("Dell Monitor") to Always-On powerstrip
    3.  Dell PC to Dell Monitor via DVI-to-VGA Adapter and VGA Cable.
    4.  Dell PC to Router (typically, second port) via Ethernet
    5.  Dell PC Keyboard (in front of the Monitor) to Dell PC
    6.  *Note:* This PC does not have a mouse plugged in by default. If you want to use one, it must be a *wired* USB mouse.
3.  Power On the PC and Monitors using front panel button.
4.  During the initial boot, you will get a Warning about the System Battery being Low
    ```sh
    Alert! System Battery voltage is low.
     Strike the F1 key to continue, F2 to run the setup utility.
      Press F5 to run onboard diagnostics
    ```
    1.  Press the F1 key on the Dell PC Keyboard to continue booting.
    2.  The Dell PC should emit two short beeps once it boots to the login screen. This means that the InFlux Instrument is powered on and connected to the Dell PC via the router.

    ::: note Dell PC Error Beeps
    If the Dell PC begins to beep an error code of 3 long beeps in quick succession, then it is not connected to the InFlux Instrument.
    1.  Is the InFlux Powered on?
    2.  Is the router powered on?
    3.  Is the Dell PC connected to the router?
    4.  Is it still beeping?
        1.  Go to network troubleshooting, you lucky dog.
    :::

5. Use the login info recorded locally.
    1. To get to the password entry without a mouse 
            1. Press TAB twice to open the password field
        1. Type in the locally recorded password 
        2. Press ENTER
    2. *Note* You can use TAB to move around the login window to turn off the computer.
6. Wait for this PC to boot up and login to Desktop before proceeding


### Start HP PC 

1. Ensure the InFlux Instrument, Router, and Dell PC are all On.
2. Ensure the HP PC and its peripherals are plugged in:
    1. HP PC to Always-On powerstrip
    2. HP PC Monitor ("LG Monitor") to Always-On powerstrip
    3. HP PC to LG Monitor via DisplayPort cable
    4. HP PC to Router (typically, second port) via Ethernet
    5. HP PC Keyboard (Wireless, "Logitech G613" , USB Dongle "G613" in Front Panel USB-2.0 Port)
    5. HP PC Mouse (Wireless, "Logitech" , USB Dongle "MTA8" in Front Panel USB-2.0 Port)
3. Power On the HP PC using Front Panel Switch. 
4. Power On LG Monitor using button on bottom/center of monitor.
5. Use the login info recorded locally

### Start Sortware

::: tip Start Sortware and Connect to Cytometer
It’s best to make sure that Sortware can connect to the instrument before doing any more setup. If Sortware cannot Connect to Cytometer, you may need to power cycle the Instrument, potentially impeding alignment.
:::

::: warning Check Sort Chamber before connecting to Cytometer
-   Be sure that the Sort Chamber is free of any loose objects (beakers, syringes, etc) before Connecting Sortware to the Cytometer. 
-   When the cytometer connects to Sortware, the Sort Tray will perform a homing movement to center the tray.
-   Any objects which block the free movement of the Sort Tray aparatus will cause a mis-alignment between the coordinates in the Sortware Tray Control and the physical location of the sort tray.
:::


To start Sortware and Connect to Cytometer:

1.  Ensure that the Dell PC isn't making any error noises. 
2.  On the HP PC, click the *Sortware* icon in the menu bar on the top of the screen. 
2.  Go to the menu item `Cytometer > Connect to Cytometer`
3.  In should report a successful connection.
    4.  If the Cytometer Settings panel is open, the Status tab should not have a red symbol on it.
    5.  The symbol will appear if there are connection problems with the instrument.
    6.  The symbol may not be cleared automatically. You will need to click `Clear` in the `Status` tab of the `Cytometer Settings` panel. 
    :::: note Unable to Connect?
    If the `Connect` button is greyed out or the software "Fails to connect to the cytometer:"
    ::: note details Attempt simple power cycling
    1.  Shutdown the HP and Dell PCs gracefully using the Windows OS. Don't just press and hold the Power button.
    2.  Unplug the router and wait 30 seconds.
    3.  Plug in the router, wait a couple minutes for it to boot up.
    4.  Start the Dell and HP PCs in that order, as detailed earlier.
    5.  If the first power cycle fails, do another power cycle, this time also turning the Instrument off *after* shutting down the PCs.
        -   The Instrument should be turned off at both the Chassis and Workstation power switches
        -   Power on the Instrument and then PCs as in the Power section.
    6.  If you are still unable to connect, go to Network Troubleshooting.
    :::
    ::::

### (Optional) User computer to HP PC

#### Using MacOS

-   If this is the first time you are connecting your Mac to the network and HP PC, you will need to create a Network Service.
-   Once (or if) you have created the Network Service, you can skip to Connect to Server.

##### Create a Network Service


1.  Ensure that the user’s computer is plugged in to the router with an ethernet cable, and that the lights on the port on the router on are and blinking.
2.  Turn off the WiFi using the drop-down in the menu bar.
2.  Open the `System Settings` app and click `Network` in menu on the left side of the menu. 
    -   It should be the third option beneath your Apple ID at the top of the list.
1.  On the bottom of the Network tab, click the `...` dropdown and select `Add Service`
    5.  Interface should be set to a Thunderbolt Bridge.
        6.  Assuming your Mac has thunderbolt ports, otherwise it probably says Ethernet Port? 
        6.  It definitely cannot be set to WiFi
    7.  `Service Name` is user’s choice, but it’s best to name it something memorable, because this `Network Service` will be activated every time you connect to the workstation router.
    8.  Click Create
    9.  Back on the Network tab, find the newly created Network Service which may be listed at the top of the window, but more likely will be under Other Services
    1.  Click on the new Network Service to enter it’s configuration tab. 
    2.  Click Details
    3.  Select the TCP/IP tab.
    4.  Set each field of the TCP/IP tab
        1.  Configure IPv4: Manually
        2.  IP address: 192.168.111.1X
            -   where X is any number above 3.
        3.  Subnet Mask: 255.255.255.0
        4.  Router: 192.168.111.10
        5.  Configure IPv6: Off
    6.  Under the DNS tab:
        7.  The DNS Servers and Search Domains should be empty.
    8.  Under WINS:
        1.  NetBIOS name should be an all caps version of your computer name:
            1.   Under `System Settings > General > About` in the `Name` field.
        2. The Workgroup is `WORKGROUP`
    3.  802.1X
        4.  Mine is set to Enable, but it shouldn’t matter. 
    4.  Proxies
        5.  All toggle buttons are turned off.
        6.  The bypass proxie setties is:
            ```
            *.local,169.254/16
            ```
    5.  Hardware
        6.  MAC address: Mac address
            7.  This should be greyed out
        8.  Configure: Automatically
        9.  Speed and Duplex should be greyed out
    1.  Be sure click OK to save changes for this Network Service.

##### Set Service Order

2.  Go back to the `...` dropdown in the Network tab of System Settings
    3.  Select Set Service Order
        4.  Take a screenshot with `cmd`+`shift`+`3` just in case.
        5.  If you have been having trouble connecting to the HP PC, set your newly created Network Service to top priority by dragging and dropping 
            5.  You cannot drag and drop a service to the top of the list.
            6.  Drag-and-Drop your Network Service to the second-from-the-top position.
            7.  Drag-and-drop the top (first) Network Service (usually WiFi) into the second position, making the new Network Service first.
            8.  Once connection to the HP PC is established, and the drive mounted, you will want the WiFi Network Service to be above the Flow Lab Network Service so that you can connect to the HP PC and the WiFi network simultaneously.

##### Connect to Server

1.  Open Finder and use the keyboard shortcut `CMD`+`K` (Or the dropdown menu `Go > Connect to server`)
2.  In the connection field at the top, enter the following:
    ```
    smb://192.168.111.2
    ```
    -   Terms explained:
        -   We are using `smb` protocol
            -   macOS may complain about the `smb` protocol because it is outdated and insecure.
        -   We are connecting `://` to the IPv4 Address `192.168.111.2` (the HP PC)
3.  It may require you to enter login credentials.
    4.  Use the locally recorded login information.
5.  If connection is successful, a window will open allowing you to select which folder you would like to connect to (“mount”)
6.  If the mount is successful, the drive will be accessible:
    7.  In Finder under Network
        1.  Finder window Sidebar: `Network`
        2.  Keybind: `cmd + shift + K`
        2.  Menubar drop-down: `Window > Network`
        3.  Menubar drop-down: `Go > Network`  
    4.  In Terminal under 
        5.  `/Volumes/FolderYouChose`
        6.  Maybe `/Volumes/192.168.111.2/FolderYouChose`
    
#### Using a PC

1. Buy a mac.
2. See previous section.


## Network Nonsense
 
::: tip Get a wired USB mouse for the Dell PC
Using the Dell PC is step three.
:::
 
### Dell PC Error code
 
1.  The Dell PC is beeping an error code of three long beeps.
    2.  The Dell PC cannot connect to the instrument
        1.  The order for turning on the system must be:
            1.  instrument 
            5.   Dell
            6.   HP
        4.  Whenever possible, Shut the PCs down gracefully using the operating system UI.
             5.  Hard shutdowns increase the likelihood of disk fragmentation.
         6.  Shut down the Dell and HP PCs.
         7.  Turn the instrument on using both power switches.
         8.  Ensure that the USB cable connecting the instrument to the Dell PC is secure. 
             9.  Use the USB ports on the rear of the machine
             10.  It shouldnt matter which one
         1.  Turn on the Dell PC
             2.  Two Beeps is connection established
             3.  Three beep error code?
                 4.  Repeat the process, this time power cycling the inFlux. Use both power switches, and give the instrument ~30 seconds of off-time.
         5.  Turn on the HP PC.

### Sortware cannot Connect to Cytometer


1.  Is the router on?
    3.  Power cycle router
1.  Are the Dell and HP PCs connected to the router with ethernet cables?
    1.  Check connections and reseat ethernet cables if appropriate
1.  Can the computers see each other?
    1.  Give the router about two minutes after the power cycle to boot up.
        1.  The power light should be solid, and some of the data ones blinking
        1.  The ethernet ports on the HP and Dell PCs should be lit up.
    1.  Use `ping` to check if computers are connected
            1.  Open the command (`cmd`) terminal on either PC by going to `Start > Run` and entering `cmd` in the box 
            1.  In the terminal window that pops up, enter the following commands depending on which PC you’re using.
                1.  The `ping` command sends data to the target IP address and waits for the target to return those data. 
                3.  If the computers are connected you should see something like:
                     ```
                     ping 192.168.1.1 returned 32bits
                     ping 192.168.1.1 returned 32bits
                     ping 192.168.1.1 returned 32bits
                     ```
                2.  HP PC
                    1.  Check connection to router
                         ```
                         ping 192.168.1.10
                         ``` 
                    1.  Check connection to Dell
                         ```
                         ping 192.168.1.1
                         ``` 
                1.  Dell PC
                    1.  Check connection to router
                         ```
                         ping 192.168.1.10
                         ``` 
                    1.  Check connection to HP
                         ```
                         ping 192.168.1.2
                         ``` 
             1. If the `ping`s don’t work, check the *`Network Settings`* to ensure that the *`IPV 4`* addresses of both computers are correct.
                1.  Apple Router: *`192.168.1.10`*
                    1.  Use a Mac with with *`Airport Utility`* to check the router’s `IPV 4` IP address.
                 2. Dell PC: *`192.168.1.1`* 
                 3. HP PC: *`192.168.1.2`*
                 4. To check the IP address for either PC:
                     5. Open the *`Control Panel`* and open *Network Settings*
                     6. At the bottom of the Network Settings window, click Configure
                     6. Select the  **????** tab to at the top of the Configure Window that opens.
                     7. If the IPV 4 Address is incorrect, enter the correct one into the IPV 4 Address field
                     8. Ensure that Use Static IP is enabled
                         9. We want a Static IP for each computer because Sortware is designed to target a specific IP address when you Connect to Cytomter
                     9. Ensure that Use DHCP is *disabled*
                         10. Dynamic Host Configuration Protocol (DHCP) frees the router to assign (potentially different) IP addresses every time a device connects to the network.

### User cannot connect to HP PC

Many of the operations in this section are the same as the previous section. Refer back to those steps for a more detailed explanation.

1.  Ensure that the folder on the HP PC has sharing enabled
    1.  Right Click the folder and open `Network Settings`
    3.  Click the Sharing tab
    4.  To maximize the chance we can connect to the HP PC, just set read/write permissions to Everyone.
    5.  Sharing is recursive by default
        6.  ie all folders within the Shared folder are included
2.  Ensure that User computer is physically connected to the router with an ethernet
    1.  The ethernet port lights are on and blinking
2.  Power cycle the router, HP PC, and User Computer as detailed previously
3.  Ensure that HP network settings (detailed in the previous section) are correct.
4.  Ensure the User Computer can see the router and HP PC on the network
    3.  In MacOS Terminal (Applications) or Windows Command Prompt (`Start > Run` and type in `cmd`), `ping` the router and HP PC:
        1.  Ping the router
        ```
        ping 192.168.1.10
        ```
        1.  Ping the HP PC
        ```
        ping 192.168.1.2
        ```
1.  