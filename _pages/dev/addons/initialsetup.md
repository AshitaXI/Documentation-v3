---
permalink: /dev/addons/initialsetup/
title: Initial Addon Setup
toc: true
---

![moogle]({{ "/assets/images/favicon-32x32.png" | absolute_url }} "Kupo!~") **Warning:** It's important that you read the information on this page carefully!<br/><br/>Failure to follow the directions here will lead to your addon not loading. Ashita requires addons to be setup in a specific manner and also expects addons to have certain information in them in order to load.
{: .notice--danger}

## Creating Your Addon

Addons can be found inside of the `<Path To Ashita>\addons\` folder. Inside here, you will see various folders for each addon as well as a `libs` folder for the various libraries addons can make use of while running.

Please be sure to follow these instructions as they are required!
  * Addons **MUST** have their own folder.
  * Addons **MUST** have a main `.lua` file that is named the same as its folder.

For example, if you want to make an addon called HelloWorld, you would have to make the following:
  * `<Path To Ashita>\addons\HelloWorld` (folder)
  * `<Path To Ashita>\addons\helloworld.lua` (file)

Failure to do so will cause your addon to not load. _(The folder name does not have to be capital or lowercase.)_

The name of the folder and file is the name that you (and others) will use when using the `/addon` commands.

## Coding Your Addon

Once you have created your addons folder and main Lua file, open the file in your favorite editor.

At the top of the file, you should include your license agreement. This helps protect your work as well as signify who made it. This is not required but just recommended.

Commonly used licenses are GPL v2, GPL v3, or MIT. You can use any open source license you want.

Next, you should add the main addon table entries. These are what the plugin use to determine the various information about your plugin. This table is named `_addon` and is internally created for your addon. You just need to fill out the following. **(THESE ARE REQUIRED!)**
```lua
_addon.author = 'Your name here';
_addon.name = 'Your addon name here.';
_addon.version = '1.0';
```

Failure to fill these out will cause your addon to not load!

At this point, your addon meets the requirements to be loaded.