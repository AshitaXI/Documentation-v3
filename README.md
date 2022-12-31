# Ashita Documentation

Source code and information to the Ashita v3 documentation website. [https://docsv3.ashitaxi.com](https://docs.ashitaxi.com/)

Support and discussions regarding this repository and Ashita should be handled on our Discord here: [Click Here](https://discordapp.com/invite/CfZu6Ya)

## GitHub Pages

This site is hosted by [GitHub Pages](https://pages.github.com/) which renders the content of this source via [Jekyll](https://jekyllrb.com/).  
The markdown engine used with this repository is [Kramdown](https://kramdown.gettalong.org/).

_(GitHub Pages runs Jekyll in safe mode. Because of this, only whitelisted plugins are permitted to be used. If you wish to add a plugin to the source of this repo, please be sure to check that it is permitted here: [Plugins](https://pages.github.com/versions/))_

## Contributing

Want to contribute to our documentation? We ask that you follow some simple guidelines to help ensure consistency across the docs. Before you begin making any changes, please make sure you are following these guidelines.

  * All changes must be GitHub Pages compatible. _(Our documentation is rendered directly from this repository, so it must be compliant to GitHub's requirements.)_
  * No tabs. Use 4 spaces instead. _(yml files use 2 spaces rather than 4.)_
  * Keep pull requests simple. _(Similar changes in one is fine, big changes should be separated into their own pull requests.)_
  * Follow our folder structure. _(You should not be placing files in random locations.)_
  * Follow our file layouts. _(Files should be similar across all of the documentation.)_
  * Avoid incomplete page commits. _(Pages that are half done, have TODO's or similar should not be committed.)_

### Folder Structure

The folder structure for our documentation is as follows:
```
/ ............................ Root
  /_data ..................... Holds data files for customizing the theme.
  /_includes ................. Holds template partials that override the theme originals.
    /head .................... (theme partials)
  /_pages .................... Holds the page contents of the documentation.
    /addons .................. Holds addon pages. (Per-addon pages.)
    /dev ..................... Holds developer information pages.
    /main .................... Holds main pages. (Main and general information pages.)
    /plugins ................. Holds plugin pages. (Per-plugin pages.)
  /_sass ..................... Holds sass partials that override the theme originals.
    /minimal-mistakes ........ (sass partials)
      /skins ................. Holds the custom Ashita skin partial.
  /assets .................... Holds the site assets. (css, images, js, etc.)
    /css ..................... (css assets)
    /images .................. (images assets)
```

If you are adding a page for an addon or plugins specific information, it should go in the `_pages/addons/` or `_pages/plugins/` folder respectively. Developer documentation should be added into the proper folder and sub-folder accordingly. (Developer folders will be added over time.)

### Page Contents

Pages should always contain the `YAML Front Matter` section at the top. This section should contain at least the permalink to the page and the title of the page. Other parts such as `layout`, `classes`, `toc`, etc. are optional. The front matter blocks should be encased by 3 dashes like the following:

```yaml
---
permalink: /addons/nomad/
title: Nomad
---
```

### Navigation

Minimal-Mistakes handles the navigation in parts. There is the top-header navigation which is called the `masthead` section. Inside of the `_data/navigation.yml` file, this is defined as the section `main`. The main navigation should be kept to a minimum. If you feel something should be added to this, make a pull request with your reasons why.

The sidebar is broken into `view-based` navigation chunks based on the current sub-folder that is being viewed. For example, if you are looking at the per-addon information pages, the `addonsnav` sidebar navigation will be used. The sidebar is set based on the parent folder file owners front matter. (In this example, the addonsnav is set via the file: `_pages/addons.md`)

Any new files should be added to the appropriate navigation chunk.

## Running Locally

Interested in helping out and need to run locally? You can follow [this](http://jekyll-windows.juthilo.com/) guide to setup Ruby and Jekyll on Windows easily. Once you have that installed, you can follow these short steps to get this source up and running:

  1. Follow the guide above to install for Windows.
  2. Clone this repository onto your machine somewhere.
  3. Open an admin level console and change to the source repo folder you cloned.
  4. Run the command: `gem install bundler` to install the Bundler gem.
  5. Run the command: `bundle install` to allow the bundler gem to install any missing gems.
  6. Run the command: `bundle update` to ensure all gems are up to date.
  7. Run the command: `bundle exec jekyll serve --b=""` to run Jekyll and serve the site. _(We use `--b=""` to reset the base url so that the navigation links are not double-slashed while hosting locally.)_

At this point, your console should output something about the server running, such as: `Server address: http://127.0.0.1:4000/` which you can open in your browser to see the running Jekyll output.

## Theme Changes

Our documentation is using a modified version of the [Minimal-Mistakes](https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/) theme which we have forked [here](https://github.com/AshitaXI/minimal-mistakes). The configuration of the docs here is set to use this fork as its remote theme location. Anytime you wish to override any theme related files, you should pull the original file from our fork instead of the official repository. 

_Jekyll and Minimal-Mistakes are both active repositories so we cannot guarantee things will work for our site as they make changes, thus we have forked the theme to keep it in a state we can manage._

The skin/coloring of the theme has been modified to match Ashita's homepage and launcher colors. Some other adjustments have been made to look similar to Twitters Bootstrap library. (Such as the notice boxes.)

Minimal-Mistakes uses the layout type `single` for most pages. So you can either specifically set the layout to `single` or just remove the layout tag altogether from the pages `YAML Front Matter`. If your page does not require the ToC you can set it to false and use the `classes` value of `wide` to stretch the page some more to the right as well.
