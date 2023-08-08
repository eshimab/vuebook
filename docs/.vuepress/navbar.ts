import { navbar } from "vuepress-theme-hope";

export default navbar([
  "/",
  //
  // GitHub Notes
    // {
      // text: "GitHub Setup",
  //   prefix: "/dev-setup/",
  //   link: "/dev-setup/README",
  //   children: "structure",
    // },
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
    // ----- begin children.influx-flight
    children: [
      //
      // beg flight-begin pageFrontmatter.icon
      {
        text: "Lab and Instrument Startup",
        prefix: "flight-begin/",
        link: "flight-begin/README",
        icon: "play",
        // beg children.flight-begin
        children: [
          //
          "flight-begin-oracle",
          // {
            // text: "The Oracle",
            // link: "flight-begin-oracle",
          // }, // end flight-begin-oracle
          //
          //
          //
          "flight-begin-activate",
          // {
            // text: "Lab Prep",
            // link: "flight-begin-activate",
          // }, // end flight-begin-activate
          //
          "flight-begin-boot",
          // {
            // text: "System Power",
            // link: "flight-begin-boot",
          // }, // end flight-begin-boot
          //
          "flight-begin-meters",
          // {
          // text: "Software flowmeters",
          // link: "flight-begin-meters",
          // }, // end flight-begin-meters
          //
          "flight-begin-sortware",
            // {
              // text: "Setup sortwareConnect",
              // link: "flight-begin-sortware",
            // }, // end flight-begin-sortware
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
        icon: "faucet-drip",
        // beg children.flight-fluidics
        children: [
          //
          "flight-fluidics-activate",
          // {
            // text: "Fluidics Pre-Flight",
            // link: "flight-fluidics-activate",
          // }, // end flight-fluidics-activate
          //
          "flight-fluidics-assy",
          // {
            // text: "Sheath and Nozzle",
            // link: "flight-fluidics-assy",
          // }, // end flight-fluidics-assy
          //
          "flight-fluidics-drain",
            // {
              // text: "Stream Drain",
              // link: "flight-fluidics-drain",
            // }, // end flight-fluidics-drain
          //
          // ------- beg: flight-fluidics-pinholes
          "flight-fluidics-pinholes",
            // {
              // text: "Visual Alignment",
              // link: "flight-fluidics-pinholes",
            // }, // end flight-fluidics-pinholes
            //
          // flight-fluidics-samples
          "flight-fluidics-samples",
          // {
            // text: "Sample Basics",
            // link: "flight-fluidics-samples",
          // }, // end flight-fluidics-samples
        ], // end children.flight-fluidics
      }, // end flight-fluidics
        //
      // ---- Begin flight-optics
      {
        text: "Setup Optics",
        prefix: "flight-optics/",
        link: "flight-optics/README",
        icon: "burst",
        // beg children.flight-optics
          children: [
            //
            // ------- beg: flight-optics-activate
            "flight-optics-activate",
            //
            "flight-optics-bdsorts",
            // {
            // text: "Setup Sortware Basics",
            // link: "flight-optics-bdsorts",
            // }, // end flight-optics-bdsorts
            //
            "flight-optics-coarse",
            // {
              // text: "Coarse Alignment",
              // link: "flight-optics-coarse",
            // }, // end flight-optics-coarse
            //
            "flight-optics-final",
            // {
              // text: "Final Alignment",
              // link: "flight-optics-final",
            // }, // end flight-optics-final
          ], // end children.flight-optics
        }, // end flight-optics
      //
      // ----- Begin flight-sorties
      {
        text: "Setup Sorting",
        prefix: "flight-sorties/",
        link: "flight-sorties/README",
        icon: "droplet",
        // beg children.flight-sorties
        children: [
          //
          "flight-sortie-activate",
          // {
            // text: "Sorting Prep",
            // link: "flight-sortie-activate",
          // }, // end flight-sortie-activate
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
            // text: "Frequency",
            // link: "flight-sortie-frequency",
          // }, // end flight-sortie-frequency
          //
          "flight-sortie-piezo",
          // {
            // text: "Piezo",
            // link: "flight-sortie-piezo",
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
  // ------- BEGIN INFLUX MANUALS ----------
  {
    text: "Influx Mfg Manuals",
    prefix: "/influx-manuals/",
    link: "/influx-manuals/README",
    children: [
      "manual-og",
    ],
    // End children.influx-manuals.docs
  },
  // ------- END INFLUX MANUALS ----------
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
      {
        text: "Systems: Lasers",
        prefix: "systems-lasers/",
        link: "systems-lasers/README",
        children: [
          //
        ], // end children.system-lasers
      }, // end influx-systems/systems-lasers
      //
      // ------ Begin systems-pmts
      {
        text: "Systems PMTs",
        prefix: "systems-pmts/",
        link: "systems-pmts/README",
        children: [
          //
        ], // end children.system-pmts
      }, // end influx-systems/systems-pmts
      //
      // ------ Begin systems-sorts
      {
        text: "Systems: Sorting",
        prefix: "systems-sorts/",
        link: "systems-sorts/README",
        children: [
          //
          //
        ], // end children.system-sorts
      }, // end influx-systems/systems-sorts
      //
      // ------ Begin systems-data
      {
        text: "Systems: Data",
        prefix: "systems-data/",
        link: "systems-data/README",
        children: [
          //
          //
        ], // end children.system-sorts
      }, // end influx-systems/systems-sorts
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
  //     {
  //       text: "Setup Dev Local",
  //       link: "dev-local",
  //     }, // end setup-local
  //     //
  //     // beg dev-workflow/
  //     {
  //       text: "Dev Workflow",
  //       link: "dev-workflow",
  //     }, // end dev-workflow
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
  //
  // ----------- Beg song-hacks/song-mds
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
  // }, // ------- end song-hacks/song-mds
  //
  // begin /vp-examples/
  // {
  //   text: "VuePress Examples",
  //   icon: "lightbulb",
  //   prefix: "vp-examples/",
  //   // beg: children.vp-examples/
  //   children: [
  //     // beg_vp-examples/demo/
  //     {
  //       text: "Demo",
  //       icon: "lightbulb",
  //       prefix: "demo/",
  //       children: ["baz", { text: "...", icon: "ellipsis", link: "#" }],
  //     }, // end_vp-examples/demo/
  //     // dec: vp-examples/guide/bar/
  //     {
  //       text: "Bar",
  //       icon: "lightbulb",
  //       prefix: "guide/bar/",
  //       children: ["baz", { text: "...", icon: "ellipsis", link: "#" }],
  //     }, // end: vp-examples/guide/bar/
  //     // beg: vp-examples/guide/foo/
  //     {
  //       text: "Foo",
  //       icon: "lightbulb",
  //       prefix: "guide/foo/",
  //       children: ["ray", { text: "...", icon: "ellipsis", link: "#" }],
  //     }, 
  //     // end: vp-examples/guide/bar
  //   ],// end: children.vp-examples/
  // }, // end: vp-examples/
  // beg: Example-link
  // {
  //   text: "V2 Docs",
  //   icon: "book",
  //   link: "https://theme-hope.vuejs.press/",
  // }, // end: Example-link
//
// ------- END NAVBAR -----
]); // end: export default navbar
