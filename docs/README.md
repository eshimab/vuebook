---
home: true
icon: home
title: Vuebook
heroImage: /logo.svg
bgImage: https://theme-hope-assets.vuejs.press/bg/6-light.svg
bgImageDark: https://theme-hope-assets.vuejs.press/bg/6-dark.svg
bgImageStyle:
  background-attachment: fixed
heroText: Scidev VueBook
tagline: Digressions, documented.
actions:
  #
  - text: InFlux Flight Manual
    link: ./influx-flight/
    type: primary
  #
  - text: Edit Files on GitHub
    link: ./dev-setup/
    type: primary
  #
  - text: InFlux Systems
    link: ./influx-systems/
  #
  - text: Official Manuals
    link: ./influx-manuals/

   # 
  # - text: Setup
  #   link: ./setup/ 
  #
  - text: Notes
    link: ./notemds/
#
# ------------ BEGIN HIGHLIGHTS -------------
highlights:

  # ------ BEG HEADER Collab with GitHub -------
  - header: Collaborate with GitHub
    description: Easily update (or sabotage) this site with GitHub
    image: /assets/image/github-light.svg
    bgImage: https://theme-hope-assets.vuejs.press/bg/3-light.svg
    bgImageDark: https://theme-hope-assets.vuejs.press/bg/3-dark.svg
    bgImageStyle:
      background-repeat: repeat
      # background-size: initial
    # ----- beg features.header Collab With GitHub
    features:
      # How To  
      - title: How to
        icon: pencil
        details: How to use GitHub to Edit files
        link: ./dev-setup/
      # Useful Links  
      - title: Useful Links
        icon: pencil
        details: Basically bookmarks
        link: ./dev-setup/dev-links
      # Edit On GitHub
      - title: Edit on GitHub
        icon: pencil
        details: The GitHub repository is https://github.com/eshimab/vuebook
        link: https://github.com/eshimab/vuebook
      # GitHub Branch bbnotes
      - title: Jump to branch `bbnotes`
        icon: pencil
        details: A direct link to the GitHub branch `bbnotes` for contributions
        link: https://github.com/eshimab/vuebook/tree/bbnotes
        #
    # ----- end features.header for GitHub Edits
  # ------ END HEADER Collab with GitHub -------
  #
  # ------ BEGIN HEADER Influx Flight Manual ------
  - header: InFlux Flight Manual
    description: Documentation written in Markdown and compiled by VuePress.
    image: /assets/image/markdown.svg
    bgImage: https://theme-hope-assets.vuejs.press/bg/2-light.svg
    bgImageDark: https://theme-hope-assets.vuejs.press/bg/2-dark.svg
    bgImageStyle:
      background-repeat: repeat
      background-size: initial
    # ------ beg features.highlights InFlux Flight Manual 
    features:
      # -------- influx-manuals
      # Lab Prep d
      - title: Sortware Manual
        icon: clipboard-check
        details: From the horses mouth
        link: "/influx-manuals"
      # -------- flight-begin
      # Lab Prep
      - title: Lab Prep
        icon: clipboard-check
        details: Gather Supplies
        link: "/influx-flight/flight-begin/setup-lab"
      # Instrument Power
      - title: Instrument Power
        icon: clipboard-check
        details: Turn on Instrument
        link: "/influx-flight/flight-begin/setup-power"
      # Software Startup
      - title: Software Startup
        details: Flowmeters and Sortware Basics
        link: "/influx-flight/flight-begin/setup-software"
        icon: clipboard-check
      # -------- flight-fluidics
      # Fluidics
      - title: Fluidcs - Sheath and Nozzle
        icon: clipboard-check
        details: Sortware etc.
        link: "/influx-flight/flight-fluidics/flight-fluidics-nozzle"
      # Basic Operations
      - title: Sample Basics
        details: Sample running basics
        link: "/influx-flight/flight-fluidics/flight-fluidics-samples"
        icon: clipboard-check
      # ---------- flight-optics
      # Laser Alignment Prep
      - title: Laser Alignment Prep
        details: Fire the lasers.
        link: "/influx-flight/flight-optics/flight-align-pre"
        icon: clipboard-check
      # Coarse "Beer" Laser Alignment
      - title: Coarse "Beer" Laser Alignment
        details: Fire the lasers.
        link: "/influx-flight/flight-optics/flight-align-coarse"
        icon: clipboard-check
      # Final "Bead" Laser Alignment
      - title: Final "Bead" Laser Alignment
        details: Fire the lasers.
        link: "/influx-flight/flight-optics/flight-align-final"
        icon: clipboard-check
      # ----------- flight-sorties
      # Sorting Prep
      - title: Pre-Flight Checklist
        details: This way lies madness.
        link: "/influx-flight/flight-sorties/flight-sorties-checklist"
        icon: clipboard-check
      # Deflection
      - title: Drop Charge and Deflection
        details: 
        link: "/influx-flight/flight-sorties/flight-sortie-deflection"
        icon: clipboard-check
      # Set Drop Delay
      - title: Drop Delay in 
        details: Enter the calibration slides.
        link: "/influx-flight/flight-sorties/flight-sortie-dropdelay"
        icon: clipboard-check
      # Find Frequency
      - title: Frequency
        details: kHz
        link: "/influx-flight/flight-sorties/flight-sortie-frequency"
        icon: clipboard-check
      # Find Piezo
      - title: Piezo
        details: Voltage
        link: "/influx-flight/flight-sorties/flight-sortie-piezo"
        icon: clipboard-check
      # Slides
      - title: Calibration Slides
        details: Almost there...
        link: "/influx-flight/flight-sorties/flight-sortie-slides"
        icon: clipboard-check
    # ------ end features.highlights InFlux Flight Manual 
  # ------ END HEADER Influx Flight Manual ------
      # - title: Tabs
      #   icon: table-columns
      #   details: Group similar content with tabs and switch them together
      #   link: https://theme-hope.vuejs.press/guide/markdown/tabs.html
      #
      # - title: Custom Align
      #   icon: align-center
      #   details: Let you decide to align paragraphs in the way you like
      #   link: https://theme-hope.vuejs.press/guide/markdown/align.html
      #
      # - title: Superscript and subscript support
      #   icon: superscript
      #   details: Your Markdown now support superscript and subscript
      #   link: https://theme-hope.vuejs.press/guide/markdown/sup-sub.html
      #
      # - title: Footnote support
      #   icon: quote-left
      #   details: Your Markdown now support footnotes
      #   link: https://theme-hope.vuejs.press/guide/markdown/footnote.html

      # - title: image syntax
      #   icon: image
      #   details: improve syntax to specify size and color scheme
      #   link: https://theme-hope.vuejs.press/guide/markdown/image.html

      # - title: Flowchart Support
      #   icon: route
      #   details: Create your flowchart in Markdown
      #   link: https://theme-hope.vuejs.press/guide/markdown/flowchart.html

      # - title: Tex Support
      #   icon: square-root-variable
      #   details: Markdown now have Tex Support so you can write your formula
      #   link: https://theme-hope.vuejs.press/guide/markdown/tex.html

      # - title: Include snippet Support
      #   icon: fab fa-markdown
      #   details: split your docs with different parts and import them in Markdown
      #   link: https://theme-hope.vuejs.press/guide/markdown/include.html

      # - title: Links Check
      #   icon: clipboard-check
      #   details: Check markdown links
      #   link: https://theme-hope.vuejs.press/guide/markdown/others.html#link-check

copyright: false
footer: Theme by <a href="https://theme-hope.vuejs.press/" target="_blank">VuePress Theme Hope</a> | MIT Licensed, Copyright © 2019-present Mr.Hope
---



For related descriptions of configuration items, please see [Project HomePage Layout Config](https://theme-hope.vuejs.press/guide/layout/home/).
