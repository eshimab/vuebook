import { sidebar } from "vuepress-theme-hope";

export default sidebar({
  "/": [ 
    "",
    //
    // GitHub Notes
    // {
    //   text: "GitHub Setup",
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
    // ------- BEGIN INFLUX FLGHT MANUAL docs/influx-flight-manual-manual/
    {
      text: "InFlux Flight Manual",
      prefix: "/influx-flight-manual/",
      link: "/influx-flight-manual/README",
      icon: "book",
      //
      // ----- begin children.influx-flight-manual-manual
      children: [
        //
        // beg flight-man-01
        {
          text: "1.0 Lab and Instrument Startup",
          prefix: "ifm-01-startup/",
          link: "ifm-01-startup/README",
          icon: "play",
          children: [
            "ifm-01p01a-the-oracle",
            "ifm-01p01b-lab-preflight",
            // "ifm-01p02-system-power",
            "ifm-01p02a-turn-on-influx",
            "ifm-01p02b-computers",
            "ifm-01p02c-networking",
            "ifm-01p02d-turn-on-lasers",
            // "ifm-01p20-system-power",
            "ifm-01p03-flowmeters",
            "ifm-01p04-sortware-part1-connect",
          ], // end children.flight-man-01
        }, // end flight-man-01
        // ---- Begin ifn-02-fluidics
        {
          text: "2.0 Setup Fluidics",
          prefix: "ifm-02-fluidics/",
          link: "ifm-02-fluidics/README",
          icon: "faucet-drip",
          children: [
            "ifm-02p01-preflight",
            "ifm-02p02-sheath-tanks",
            "ifm-02p03-install-and-purge-nozzle",
            "ifm-02p04-stream-drain",
            "ifm-02p05-pinhole-alignment",
            "ifm-02p06-running-samples",
          ], // end children.ifm-02-fluidics
        }, // end ifm-02-fluidics
        {
          text: "3.0 Setup Optics",
          prefix: "ifm-03-optics/",
          link: "ifm-03-optics/README",
          icon: "burst",
          children: [
            // "ifm-03p00-activate",
            "ifm-03p01-bdsorts",
            "ifm-03p02-coarse",
            "ifm-03p03-final",
          ], // end children.ifm-03-optics
        }, // end flight-optics
        //
        {
          text: "4.0 Sort Settings",
          prefix: "ifm-04-sorties/",
          link: "ifm-04-sorties/README",
          icon: "droplet",
          // beg children.ifm-04ps
          children: [
            //
            "ifm-04p01-activate",
            "ifm-04p02-configsw",
            "ifm-04p03-deflection",
            "ifm-04p04-dropdelay",
            "ifm-04p05-frequency",
            "ifm-04p06-piezo",
            "ifm-04p07-slides",
          ], // end children.ifm-04ps
        }, // end ifm-04ps
      ], // end children.influx-flight-manual-manual
    }, // end /influx-flight-manual-manual/
    // --------------- END INFLUX FLIGHT MANUAL --------------
    //
    // ------- BEGIN INFLUX MANUALS ----------
    {
      text: "Cytopeia Manual",
      prefix: "/manual-cytopeia/",
      link: "/manual-cytopeia/README",
      children: [
        "manual-cytopeia-01-intro",
        // 
        "manual-cytopeia-02-instrument",
        //
        "manual-cytopeia-03-safety",
        //
        "manual-cytopeia-04a-ops",
        "manual-cytopeia-04b-ops",
        "manual-cytopeia-04c-ops",
        "manual-cytopeia-04-ops",
        //
        "manual-cytopeia-05-spigot",
        //
        "manual-cytopeia-06-maint",
        
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
        //
        "systems-sorts",
        //
        "systems-data",
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
