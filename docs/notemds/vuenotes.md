

### Update Homebrew

1. Update Homebrew using an "unshallow" clone
```bash
git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core fetch --unshallow
```

Following the guide on: ![Digital Ocean VuePress Intro](https://www.digitalocean.com/community/tutorials/how-to-build-a-documentation-system-with-vue-and-vuepress)


### Use Homebrew to install `nodejs@18` and `npm` globally

1. Open terminal, use `brew` to find node, install version 18 `node@18`
```bash
brew install node@18
```
2. Use `brew` to install `npm`
```bash
brew install npm
```

## Initiate vuepress project

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

### Make project `~/scidev/vuebook` directory

Following the guide on: ![Digital Ocean VuePress Intro](https://www.digitalocean.com/community/tutorials/how-to-build-a-documentation-system-with-vue-and-vuepress)

Make vuepress site directory `scidev/vuebook/` (or just `vuebook`):
```shell
mkdir ~/scidev/vuebook
cd ~/scidev/vuebook
```

### Use `npm` to install `vue` and `vuepress` **locally** in `vuebook`

1. Initialize `vuebook`  as an `npm` project
    ```shell
    npm init --yes
    ```
2.  Use `npm` to install `vue` and `vuepress`
    ```bash
    npm install vue
    npm install vuepress --save-dev
    ```
    - At date of writing, `vue` is at version `3.3.4` and `vuepress` at `1.9.9`
3. Smooth out dependences with `npm upate`
    ```shell
    npm update
    ``` 
    

