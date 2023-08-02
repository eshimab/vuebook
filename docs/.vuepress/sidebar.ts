import { sidebar } from "vuepress-theme-hope";

export default sidebar({
  "/": [ 
    "",
    //
    // GitHub Notes
    "/dev-setup/README",
    // {
    //   text: "Edit Files with GitHub",
    //   link: "/dev-setup/",
    //   children: "structure",
    // },
    //
    // Dev Links Page
    "/dev-setup/dev-links",
    //
    // ------- BEGIN INFLUX FLGHT MANUAL docs/influx-flight/
    {
      text: "InFlux Flight Manual",
      prefix: "/influx-flight/",
      link: "/influx-flight/README",
      icon: "book",
      //
      // ----- begin children.influx-flight
      children: [
        //
        // beg flight-begin
        {
          text: "Lab and Instrument Startup",
          prefix: "flight-begin/",
          link: "flight-begin/README",
          icon: "book",
          // beg children.flight-begin
          children: [
            //
            "setup-oracle",
            // {
              // text: "The Oracle",
              // link: "setup-oracle",
            // }, // end setup-oracle
            //
            //
            "setup-lab",
            // {
              // text: "Lab Prep",
              // link: "setup-lab",
            // }, // end setup-lab
            //
            "setup-power",
            // {
              // text: "System Power",
              // link: "setup-power",
            // }, // end setup-power
            //
            "setup-flowmeters",
            // {
              // text: "Software flowmeters",
              // link: "setup-flowmeters",
            // }, // end setup-flowmeters
            //
            "setup-sortwareConnect",
            // {
              // text: "Setup sortwareConnect",
              // link: "setup-sortwareConnect",
            // }, // end setup-sortwareConnect
            //
          ], // end children.flight-begin
          //
        }, // end flight-begin
        //
        // ---- Begin flight-fluidics
        {
          text: "Setup Fluidics",
          prefix: "flight-fluidics/",
          link: "flight-fluidics/README",
          icon: "book",
          // beg children.flight-fluidics
          children: [
            "flight-fluidics-nozzle",
            // {
              // text: "Sheath and Nozzle",
              // link: "flight-fluidics-nozzle",
            // }, // end flight-fluidics-nozzle
            //
            "flight-fluidics-streamdrain",
            // {
              // text: "Sheath and Nozzle",
              // link: "flight-fluidics-nozzle",
            // }, // end flight-fluidics-nozzle
            //
            // ------- beg: flight-fluidics-streamfocus
            "flight-fluidics-streamfocus",
            // {
              // text: "Visual Alignment",
              // link: "flight-fluidics-streamfocus",
            // }, // end flight-fluidics-streamfocus
            //
            // flight-fluidics-samples
            "flight-fluidics-samples",
            // {
              // text: "Sample Basics",
              // link: "flight-fluidics-samples",
            // }, // end flight-fluidics-samples
            //
            //
            "flight-fluidics-sortware",
            // {
              // text: "Setup Sortware Basics",
              // link: "flight-fluidics-sortware",
            // }, // end flight-fluidics-sortware
            //
          ], // end children.flight-fluidics
        }, // end flight-fluidics
        //
        // ---- Begin flight-optics
        {
          text: "Setup Optics",
          prefix: "flight-optics/",
          link: "flight-optics/README",
          icon: "book",
          // beg children.flight-optics
          children: [
            //
            // ------- beg: flight-align-method
            "flight-align-method",
            //
            "flight-align-coarse",
            // {
              // text: "Coarse Alignment",
              // link: "flight-align-coarse",
            // }, // end flight-align-coarse
            //
            "flight-align-final",
            // {
              // text: "Final Alignment",
              // link: "flight-align-final",
            // }, // end flight-align-final
          ], // end children.flight-optics
        }, // end flight-optics
        //
        // ----- Begin flight-sorties
        {
          text: "Sort Settings",
          prefix: "flight-sorties/",
          link: "flight-sorties/README",
          icon: "book",
          // beg children.flight-sorties
          children: [
            //
            "flight-sortie-checklist",
              // {
              // text: "Sorting Prep",
              // link: "flight-sortie-checklist",
              // }, // end flight-sortie-checklist
            //
            "flight-sortie-configsw",
              // {
              // text: "Sortware Panels",
              // link: "flight-sortie-configsw",
              // }, // end flight-sortie-configsw
            //
            "flight-sortie-deflection",
              // {
              // text: "Align Side Streams",
              // link: "flight-sortie-deflection",
              // }, // end flight-sortie-deflection
            //
            "flight-sortie-dropdelay",
              // {
              // text: "Find Drop Delay",
              // link: "flight-sortie-dropdelay",
              // }, // end flight-sortie-dropdelay
            //
            "flight-sortie-frequency",
              // {
              // text: "Find Breakoff Point",
              // link: "flight-sortie-frequency",
              // }, // end flight-sortie-frequency
            //
            "flight-sortie-piezo",
              // {
              // text: "Piezo",
              // link: "flightx-sortie-piezo",
              // }, // end flight-sortie-piezo
            //
            "flight-sortie-slides",
            // {
              // text: "Calibration Slides",
              // link: "flight-sortie-slides",
            // }, // end flight-sortie-slides
          //
          ], // end children.flight-sorties
          //
        }, // end flight-sorties
        //
      ], // end children.influx-flight
    }, // end /influx-flight/
    // --------------- END INFLUX FLIGHT MANUAL --------------
    //
    // ------- BEGIN INFLUX SYSTEMS docs/influx-systems/
    {
      text: "Influx Systems",
      prefix: "/influx-systems/",
      link: "/influx-systems/README",
      // icon: "book",
      // ------ Begin children.influx-systems
      children: [
        //
        // ------ Begin systems-lasers
        "systems-lasers",
        // {
          // text: "Systems: Lasers",
          // prefix: "systems-lasers/",
          // link: "systems-lasers/README",
          // children: [
            
          // ], // end children.system-lasers
        // }, // end influx-systems/systems-lasers
        //
        // ------ Begin systems-pmts
        "systems-pmts",
        // {
          // text: "Systems PMTs",
          // prefix: "systems-pmts/",
          // link: "systems-pmts/README",
          // children: [
            
          // ], // end children.system-pmts
        // }, // end influx-systems/systems-pmts
        //
        // ------ Begin systems-sorts
        "systems-sorts",
        // {
          // text: "Systems: Sorting",
          // prefix: "systems-sorts/",
          // link: "systems-sorts/README",
          // children: [
            
          // ], // end children.system-sorts
        // }, // end influx-systems/systems-sorts
        //
        // ------ Begin systems-data
        "systems-data",
        // {
          // text: "Systems: Data",
          // prefix: "systems-data/",
          // link: "systems-data/README",
          // children: [
            
            
          // ], // end children.system-sorts
        // }, // end influx-systems/systems-sorts
        //
      ], // end children.influx-systems
    }, // end influx-systems 
    // ------- END INFLUX SYSTEMS -----------
    //
    // -----------  BEGIN DEV SETUP docs/dev-setup/ 
    // {
    //   text: "Dev Setup",
    //   prefix: "/dev-setup/",
    //   link: "/dev-setup/README",
    //   children: [
    //     //
    //     // beg dev-local/
    //     // "dev-local",
    //     // {
    //       // text: "Setup Dev Local",
    //       // link: "dev-local",
    //     // }, // end setup-local
        
    //     // beg dev-workflow/
    //     "dev-workflow",
    //     // {
    //       // text: "Dev Workflow",
    //       // link: "dev-workflow",
    //     // }, // end dev-workflow
    //     //
    //   ], // end children.dev-setup
    // }, // end dev-setup
    // -----------  END DEV SETUP -----------
    //
    // -----------  BEGIN NOTES docs/notemds/
    {
      text: "Misc Notes",
      prefix: "/notemds/",
      link: "/notemds/README",
      children: [
        //
        // beg brewnotes/
        {
          text: "Homebrew",
          link: "brewnotes",
        }, // end brewnotes
        //
        // beg gitnotes
        {
          text: "Git(Hub)",
          link: "gitnotes",
        }, // end gitnotes
        //
        // beg vsnotes
        {
          text: "VS Code",
          link: "vsnotes",
        }, // end vsnotes
        //
        // beg vuenotes
        {
          text: "VuePress Notes",
          link: "vuenotes",
        }, // end vuenotes
        //
        // beg shellnotes
        {
          text: "Shell",
          link: "shellnotes",
        }, // end shellnotes
        //
      ], // end children.notemds
    }, // end notemds
    // -----------  END NOTES -----------
    // {
      // text: "Chiko's Song List",
      // prefix: "/song-hacks/song-mds/",
      // link: "/song-hacks/song-mds/README",
      // icon: "book",
      // children: [
        // {
          // text: "Songs By Artist",
          // link: "mdtab-artist",
        // },
        // {
          // text: "Songs By Title",
          // link: "mdtab-titles",
        // },
        // {
          // text: "Songs By Num",
          // link: "mdtab-nums",
        // },
      // ], // END children.song-hacks/song-mds
    // }, // END song-hacks/song-mds
    //
  ], // end export "/": Bracket
}); // end export.default.sidebar
