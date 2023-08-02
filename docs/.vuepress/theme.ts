import { hopeTheme } from "vuepress-theme-hope";
// import { implicitFigures } from "markdown-it-implicit-figures";
import navbar from "./navbar.js";
import sidebar from "./sidebar.js";

export default hopeTheme({
  hostname: "https://vuepress-theme-hope-docs-demo.netlify.app",

  author: {
    name: "eshimab",
    url: "https://mister-hope.com",
  }, // end author.hopeTheme
  //
  //
  //
  iconAssets: "fontawesome-with-brands", // end iconAssets
  // iconAssets: "iconfont", // end iconAssets
  // iconAssets: [
  //   "fontawesome-with-brands",
  //   "iconfont", 
  //   // "iconify", 
  //   "fontawesome", 
  // ], // end iconAssets.hopeTheme
  
  logo: "/logo.svg", // end logo

  // repo: "vuepress-theme-hope/vuepress-theme-hope", // end repo
  repo: "eshimab/vuebook", // end repo

  docsDir: "docs", // end docsDor

  // navbar
  navbar,

  // sidebar
  sidebar,

  footer: "Default footer",

  displayFooter: true,

  encrypt: {
    config: {
      "/demo/encrypt.html": ["1234"],
    }, // end config.encypt
  }, // end encrypt

  metaLocales: {
    editLink: "Edit this page on GitHub",
  }, // end metaLocales 
  //
  // --------- BEGIN PLUGINS -------
  plugins: {
    // You should generate and use your own comment service
    comment: false,
    // comment: {
      // comment: true,
      // provider: "Giscus",
      // repo: "vuepress-theme-hope/giscus-discussions",
      // repoId: "R_kgDOG_Pt2A",
      // category: "Announcements",
      // categoryId: "DIC_kwDOG_Pt2M4COD69",
    // }, // end comment.plugins
    //
    // implicitFigures: {
    //   tabindex: true,
    // },
    // -------- BEGIN mdEnhance (Markdown Enhance) ----------
    // All features are enabled for demo, only preserve features you need here
    mdEnhance: {
      align: true,
      attrs: true,
      chart: true,
      codetabs: true,
      demo: true,
      echarts: true,
      figure: true,
      flowchart: true,
      gfm: true,
      imgLazyload: true,
      imgSize: true,
      include: true,
      katex: true,
      mark: true,
      mermaid: true,
      playground: {
        presets: ["ts", "vue"],
      }, // end playgeound
      presentation: ["highlight", "math", "search", "notes", "zoom"],
      // begin stylize
      stylize: [
        {
          matcher: "Recommended",
          replacer: ({ tag }) => {
            if (tag === "em")
              return {
                tag: "Badge",
                attrs: { type: "tip" },
                content: "Recommended",
              };
          },
        },
      ], // end stylize
      sub: true,
      sup: true,
      tabs: true,
      vPre: true,
      vuePlayground: true,
    }, // end mdEnhance
    // -------- END mdEnhance (Markdown Enhance) ----------
  }, // end plugins
  // --------- END PLUGINS -------
}); // end export hopeTheme
