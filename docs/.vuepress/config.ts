import { defineUserConfig } from "vuepress";
import { hopeTheme } from "vuepress-theme-hope";
import { searchProPlugin } from "vuepress-plugin-search-pro";
// import { mdEnhancePlugin } from "vuepress-plugin-md-enhance";

// Add following line to override VS COde spurious error
// @ts-ignore
import theme from "./theme.ts";
//
export default defineUserConfig({
  base: "/",
  lang: "en-US",
  title: "VueBook",
  description: "A docs demo for vuepress-theme-hope",
  //
  // -------- BEGIN THEME -------
  theme,
  // theme: hopeTheme(
  //   // -------- BEGIN themeConfig ---------
    // {
    // },
    // -------- END themeConfig ---------
    //
    // -------- BEGIN theme behavior ---------
    // {
      // theme behavior options here (optional)
    // },
    // -------- END theme behavior ---------
    //
  // ), // end theme.hopeTheme
  // ---------- END THEME -------
  //
  // --------- BEGIN HEAD -------
  head: [
    //
    // ------- Import Atkinson Hyper-legible Front from Google
    // Import the corresponding links from Google
    ["link", { rel: "preconnect", href: "https://fonts.googleapis.com" }],
    [
      "link",
      { rel: "preconnect", href: "https://fonts.gstatic.com", crossorigin: "" },
    ],
    // beg link Atkinson font
    [
      "link",
      // beg href Atkinson
      {
        href: "https://fonts.googleapis.com/css2?family=Atkinson+Hyperlegible:ital,wght@0,400;0,700;1,400;1,700&display=swap",
        rel: "stylesheet",
      }, // end href Atkinson
    ], // end link Atkinson HL
    //
  ], // end head
  // --------- END HEAD -------
  //
  // ----------- BEGIN PLUGINS ---------
    plugins: [
      //
      // mdEnhancePlugin
      // mdEnhancePlugin({
      //   // 
      //   // figures.mdEnhancePlugin
      //   figure: true,
      //   // Enable image lazyload (default: true)
      //   imgLazyload: true, 
      //   // Enable image mark
      //   //imgMark: true,
      //   // Enable image size
      //   imgSize: true,
      //   // adds tabs support
      //   //tabs: true,
      // }), // end mdEnhancePlugin
      //
      // -------- Begin searchProPlugin
      searchProPlugin({
        // index all contents
        indexContent: true,
        // add supports for category and tags
        customFields: [
          //
          {
            getter: (page) => "page.frontmatter.category",
            formatter: "Category: $content",
          }, // end getter: page.frontmatter.category
          //
          {
            getter: (page) => "page.frontmatter.tag",
            formatter: "Tag: $content",
          }, // end getter: page.frontmatter.tag
        ], // end customFields.searchProPlugim 
      }), // end searchProPlugin
      //
    ], // end plugins
    // ----------- END PLUGINS ---------
  }); // export default defineUserConfig
