---
permalink: /installation/
title: Installing Ashita v3
toc: true
---

{% icon fa fa-exclamation-triangle %} **Please Note!:** Before you try to install Ashita, be sure to check and make sure that you have the system requirements listed [here](/requirements/).
{: .notice--warning}

## 1. Download Ashita

To start, you need to download the latest version of the Ashita v3 launcher.

{% icon fa fa-download %} **Download:** [Click Here To Download](http://git.ashita.atom0s.com/Ashita/Ashitav3-Launcher/raw/master/Ashita.exe)

Upon running the Ashita launcher, it will download and install any missing package files that are needed for it to work. _(This does not include the system requirement files, you must manually install those yourself!)_ 

**Because the launcher downloads and creates files, it is highly recommended that you place the Ashita.exe in a separate folder by itself!**

![moogle]({{ "/assets/images/favicon-32x32.png" | absolute_url }} "Kupo!~") **Tip:** Moogle recommends installing your Ashita.exe inside of:
<br/>
C:\Ashita\Ashita.exe
{: .notice--info}

## 2. Install Ashita

As mentioned above, Ashita will download and create new files and folders when you initially run it. It is recommended to place the Ashita.exe inside of a new folder by itself. (See above for more info.)

Once you have placed Ashita.exe inside of a folder by itself, simply run it by double-clicking it.

![moogle]({{ "/assets/images/favicon-32x32.png" | absolute_url }} "Kupo!~") **Tip:** Moogle says, if you are running on Windows 8 or higher, it is recommended to run Ashita.exe as an administrator! To do that, simply right-click Ashita.exe and choose 'Run as Administrator'.
{: .notice--info}

![moogle]({{ "/assets/images/favicon-32x32.png" | absolute_url }} "Kupo!~") **Warning:** Moogle says, **DO NOT** install Ashita inside of your Final Fantasy XI folder. This is considered bad practice and can lead to future problems if SE adds files with the same names!
{: .notice--danger}

## 3. Running Ashita

Once you have finished installing all the requirements and have ran Ashita at least once to allow it to download all the needed files, you are ready to go!

You can either use one of the pre-installed configurations to get started quickly, or create a new one. For more help with how to use Ashita's launcher more thoroughly, see the next section.

You can edit an existing configuration to adjust the various settings by either clicking on the configuration once then clicking the pencil icon at the bottom to edit, or via right-clicking the configuration and choosing 'Edit Configuration'.

## 4. Using The Ashita Launcher

Here are some screenshots and details of each part of the Ashita launcher. _These features are subject to change without warning and these screenshots and information may not reflect the current version of the launcher._

### **Main Screen**

![main](http://i.imgur.com/BfnwLmP.png)

  - Top-bar navigation shortcuts. Clicking these will open up various helpful websites regarding the Ashita project.
      - Global: Opens the main Ashita homepage.
      - Messages: Opens the Ashita forums homepage.
      - Book: Opens this wiki documentation homepage.
      - Bug: Opens the Ashita bug reports homepage.
      - Minus: Minimizes Ashita.
      - X (Close): Closes Ashita.
  - The known configuration files that can be used to boot the game.
  - The configuration play / launch button to run the selected configuration.
  - The navigation system of the launcher to view the different parts of the launcher. (Configurations, Addons, Plugins, About, etc.)
  - The selected configuration navigation shortcuts. Clicking these will affect the selected configuration.
      - Plus: Creates a new configuration file.
      - Pencil: Edits the current selected configuration file.
      - Trashcan: Deletes the current selected configuration file.
      - Arrows: Refreshes the configuration list to find and update the UI of new files that may have been edited or added.
  - Creates a desktop shortcut to the selected configuration file on the users desktop.

### **Configuration Editor**

![config editor](http://i.imgur.com/xRmI61i.png)

  - The (optional) configuration name. Using this will override what shows in the main configuration list of Ashita.
  - The boot configurations. This is how Ashita launches the game.
      - File: The boot file to use when launching.
          * Retail: Leave file blank while playing on retail.
          * Private Servers: Set the file to the custom boot loader being used for what server you play on. Ashita comes with the default boot loader used on most private servers.
      - Command: The command arguments passed to the  game when launched.
          * Retail: To create the FFXI shortcut icon within PlayOnline, set this to: /game eAZcFcB
          * Private Servers: This will usually contain the command line arguments to connect to a private server. Can also include your username and password to quick-login.
      - Script: The default text script (located within the Ashita /scripts/ folder) to execute when Ashita launches.
      - Test Server: (Deprecated) Used to toggle Ashita to work with Final Fantasy XI's official test server.
      - Close Launcher On Boot: Toggles if Ashita should close itself after the game has been launched.
  - The configuration navigation for the various options that can be altered within Ashita.
  - The 'Save' icon to save the edits to the configuration file and return to the previous screen.

![config editor](http://i.imgur.com/YhhV0Sf.png)

  - General Window configurations that can be turned on and off.
      - Windowed Mode: Toggles if the game should be ran in windowed mode or fullscreen mode.
      - Show Border: Toggles if the window border should be shown while in windowed mode.
      - Unhook Mouse: Toggles if Ashita should unhook mouse 'snapping' features that XI has with menus and such. (Prevents the game from moving your mouse itself.)
  - Window Resolution configurations that alter how the window sizes are handled.
      - Window Size: The X and Y resolutions of the overall game window.
      - Startup Position: The X and Y screen offset of where FFXI should open initially. (Using -1 here will center the window on that axis.)
      - Background Size: The X and Y background resolution size of FFXI. (Using -1 here will use the value currently in the system registry.)
      - Menu Size: The X and Y menu resolution size of FFXI. (Using -1 here will use the value currently in the system registry.)

![config editor](http://i.imgur.com/G6GuVmX.png)

  - Language configurations to adjust how Ashita handles the games language.
      - PlayOnline: The PlayOnline language that you have installed. (This does not alter how languages appear in-game. This is just used to locate the proper install path from the registry for the game.)
      - Ashita Resources: The language that Ashita should default to when its resources are used within the addons and plugins.
  - The level of debug logging that Ashita will use to help developers while debugging addons and plugins. (Logs are saved to the /logs/ folder.)
  - Direct3D configurations for advanced users to tweak some specific device creation settings.
      - Direct3D Buffer Count: The amount of buffers the game should make use of. 
      - Direct3D Swap Effect: The swap effect that the game should make use of. (Useful for enforcing vsync if needed.)

![config editor](http://i.imgur.com/u2jjxho.png)

  - Registry game settings that FFXI makes use of. Ashita can alter these settings directly within the launcher per-configuration.

_The tooltips of these settings can help determine the best settings to use for maximum quality for those looking to make FFXI look better._

### **Addons and Plugins**

![addons](http://i.imgur.com/Eza0HjE.png)

  - The addon or plugin name and description explaining what the addon/plugin does.
  - The installed flag if the addon/plugin has been installed.
  - The download icon to download the addon/plugin.
  - The addon/plugin support links for the projects homepage repository and bug reports.

**Please note;** addons and plugins will not automatically load just by downloading them! You need to edit your Default.txt (or whichever text script your configuration uses) and add the commands to load these there! Or you can manually load them ingame with the appropriate command for each.
{: .notice--warning}