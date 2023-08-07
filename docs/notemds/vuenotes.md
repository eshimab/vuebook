---
title: VueNotes
---




<!-- Reference Links -->
<!-- Usage -->
<!-- [img-label]: ./assets/filename.png -->
<!-- ![Caption Text][img-label] -->
<!-- Assets -->

<!-- URLs -->
[digital-ocean]: https://www.digitalocean.com/community/tutorials/how-to-build-a-documentation-system-with-vue-and-vuepress
<!-- End Ref Links -->


[[toc]]


### After the vuebook re-init

1.  Copied over the 
    -   `node_modules`
    -   `package.json` 
    -   `pnpm-lock.yaml` 
    -   `tsconfig.json`
2.  I had to reinstall `vuepress-theme-hope` with `pnpm` in the newly reformed `vuebook` directory
    ```sh
    pnpm install vuepress-theme-hope
    ```
3.  And that worked.
4.  You can check installed packages
    ```sh
    eshimbp22:vuebook eshim$ pnpm list
    Legend: production dependency, optional only, dev only

    vuebook@2.0.0 /Users/eshim/vuebook

    dependencies:
    markdown-it-implicit-figures 0.11.0
    search 1.0.0

    devDependencies:
    @vuepress/client 2.0.0-beta.66
    typescript 5.1.6
    vue 3.3.4
    vue-router 4.2.4
    vuepress 2.0.0-beta.66
    vuepress-plugin-md-enhance 2.0.0-beta.233
    vuepress-plugin-search-pro 2.0.0-beta.233
    vuepress-theme-hope 2.0.0-beta.233
    ```



Following the guide on: [Digital Ocean VuePress Intro][digital-ocean]


### Use Homebrew to install `nodejs@18` and `npm` globally

::: details if the brew install commands fail...
-   If Homebrew fails, you may need to update it to an `unshallow clone` (whatever that is)
-   Update Homebrew using an "unshallow" clone
```bash
git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core fetch --unshallow
```
:::

1.  Open terminal, use `brew` to find node, install version 18 `node@18`
```bash
brew install node@18
```
1.  Use `brew` to install `npm`
```bash
brew install npm
```

## Initiate vuepress project

Original guide from: [Digital Ocean VuePress Intro](https://www.digitalocean.com/community/tutorials/how-to-build-a-documentation-system-with-vue-and-vuepress)


### Initialize `~/vuebook` with `npm` 

1.  Initialize `vuebook`  as an `npm` project
    ```shell
    cd ~/vuebook
    npm init --yes
    ```
2.  Use `pnpm` to install `vue` and `vuepress`
    ```bash
    pnpm install vuepress-theme-hope
    ```
    -   At date of writing, `vue` is at version `3.3.4` and `vuepress` at `1.9.9`

