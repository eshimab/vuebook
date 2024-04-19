---
title: 1.2 Network Troubleshooting
icon: power-off
---

<!-- filename: /docs/influx-flight/ifm-01-startup/ifm-01p02-system-power.md -->

<!-- Reference Links -->
<!-- Usage -->
<!-- [img-label]: ./assets/filename.png -->
<!-- ![Caption Text][img-label] -->
<!-- Assets -->

<!-- URLs -->

<!-- End Ref Links -->

## Table of Contents

[[toc]]

---


 
::: tip Get a wired USB mouse for the Dell PC
Using the Dell PC is step three.
:::
 
## 1.2.0 Dell PC Error code
 
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

## 1.2.1 Sortware cannot Connect to Cytometer


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

## 1.2.2 User cannot connect to HP PC

1.  Ensure that the folder on the HP PC has sharing enabled
    1.  Right Click the folder and open `Network Settings`
    2.  Click the Sharing tab
    3.  To maximize the chance we can connect to the HP PC, just set read/write permissions to Everyone.
    4.  Sharing is recursive by default
        1.  ie all folders within the Shared folder are included
2.  Ensure that User computer is physically connected to the router with an ethernet
    1.  The ethernet port lights are on and blinking
3.  Power cycle the router, HP PC, and User Computer as detailed previously
4.  Ensure that HP network settings (detailed in the previous section) are correct.
5.  Ensure the User Computer can see the router and HP PC on the network
    1.  In MacOS Terminal (Applications) or Windows Command Prompt (`Start > Run` and type in `cmd`), `ping` the router and HP PC:
        1.  Ping the router
        ```
        ping 192.168.1.10
        ```
        2.  Ping the HP PC
        ```
        ping 192.168.1.2
        ```

