---
title: Frequency kHz
icon: wave-square
---




[[toc]]




## Find Break-Off-Point (BOP)

The break-off point (BOP) is where the waves on the surface of the stream (imparted by the nozzle assembly) cause the continuous stream jet to break off into individual droplets. 

Our primary means of influencing this are 
-   the stream (ie sheath) psi (which we will keep at 15.0)
-   the voltage (V) of the Piezo Crystal on the nozzle Assy 
-   the frequency (in kHz) of the nozzle vibration 

In general, this setup assumes that you will be using an 86um Nozzle at a constant sheath pressure of 15.0 PSI. 

## Sortware

1.  Open the Sort Settings panel.
    ::: note Use mousewheel to scroll through values
    -   Usually, if a numeric field allows you to change the value with a slide, you can alternatively use the mousewheel.
        -   When adjusting the Piezo or Wavelength, place the cursor over the number and use the mouse wheel to change the values. 
    -   Alternatively, you can type the number into the box and press ENTER to change the value directly.
    :::
2.  Set the Deflection to 0 (to prevent drops from hitting the plates before we set the BOP)
3.  Turn the Drop Drive On 
4.  

## Drop Drive Cruise Control

Some combination of following settings are likely to work:
1.  Sheath PSI 15.0
2.  Nozzle Tip 43-45 (BOP Cam)
2.  Drop frequency 36.50-36.90kHz
3.  Piezo Voltage: 3-5V

This will generally yield:
1.  BOP(s) in the range of 155-165.
2.  Drop Delays of 21-23 (droplet cycles)

## Wavelength kHz

1.  We are using an 86um nozzle and a sheath PSI of 15.0
    2.  The digital guages are not incredibly accurate
    >   You trust those?  - *Ger*
    1.  But to get it as close to accurate as we can, it helps to set the sheath PSI to 14.9 with the sample offset valve backed out 3/4 (as opposed to normal 1/2) and then use the sample offset to feather the sheath PSI up to 15.0.

###  The frequency will probably be 36-37khz. 

1.  Our most reliable frquencies have been in the 36.60-36.70kHz.
    2.  This is because there is an optimal frequency for a given nozzle diameter + sheath PSI.
    3.  The pressure vs frequency diagrams in Fig 2.7 (c/o Dr. Ger vanDerEghn) confirm that our 86um/15.0psi combination will be most stable in the 30-40kHz range.
    4.  If we increased the pressure, we would likewise need to increase the kHz.
    5.  The 86um nozzle is preferred for sorting because it balances performance and reliability. 
    6.  Here are the 3 sizes in this size range. They are compared only to each other:
        7.  70um
            1.  Pyurging and unclogging are tiresome
            2.  Higher top sort speed
            3.  Sort stream is most stable
        8.  86um
            1.  Purging and unclogging are straight forward 
            2.  Middle tier sort speed
            3.  Stream stability is achieveable and reliablt
        9.  100um  
            1.  Easy to unclog
            2.  Slowest sort speed
            3.  Difficult to keep the stream stable
    4.  
