---
permalink: /about/
title: About Ashita
toc: false
classes: wide
---

## What is Ashita?

Ashita is a third-party application [and hook] that extends the Final Fantasy XI client in a number of ways.

Ashita has two main parts to it, the launcher application and the injected hook. Below is more information on each of these parts.

### Ashita Launcher (Ashita.exe)

The Ashita launcher is an application that handles a few specific tasks for the Ashita project:

  * Downloads the core files needed for the Ashita project to operate.
  * Keeps those core files, and any installed addons/plugins, up to date with the latest versions.
  * Manages the players configurations used to launch the game with varying settings.
  * Launches the game and injects the Ashita hook (Ashita.dll) into the game client.

### Ashita Hook (Ashita.dll)

The Ashita hook is the heart of Ashita, handling all the features and integrations into the game client. The hook is responsible for loading the requested configurations, hooking the various game client functions allowing Ashita to handle various game data (ie. chat, packets, etc.), and more.

The original and main purpose of Ashita is to allow the game to run windowed. By default, FFXI originally did not support windowed mode gaming, requiring the client to stay fullscreen while playing. Any attempt to alt+tab or minimize the game window would cause it to "soft-crash" and close itself as a means of anti-cheat protection. Ashita, and Windower, both hook the games graphics device, window creation and varying API used to prevent this from happening.

Along with this windowing feature, Ashita also extends the client in a number of ways.

  * Proper windowed mode features for the game as if it was meant to be windowed!
    * Includes settings such as borderless windowed mode, true-fullscreen mode, etc.
  * A feature-rich and open source, plugin interface.
  * A fully packed developer kit known as the Ashita Development Kit (ADK).
  * Lua scripting via the Addons plugin. Allowing for plugin-like scripts to extend the game.
  * A custom keybind system allowing users to bind keys to various commands.
    * Allows for overriding the default keybinds of the game.
  * Fully custom text objects that can be used to create UI-like elements displaying various information.
    * Font objects are able to be dragged around on the fly by holding shift and click/dragging them around.
    * Font objects are highly customizable to be able to turn into various UI-like elements. (ie. buttons, progress bars, etc.)
  * Custom text scripts allowing for more detailed macros with unlimited space vs. the games basic and limited macro system.
  * A full in-game UI system allowing plugins and addons to make rich and friendly user interfaces.
    * Thanks to the ImGui project for their great UI system.
    * Custom Direct3D8 renderer written for FFXI by atom0s. (Thanks to Sakuri for minor code assistance.)
  * Extended controller support and fixes.
  * Internal resource parsing of the games DAT files allowing plugins and addons to access various game information. (ie. items, armor, weapons, strings, etc.)
  * And more!

## What are Addons?

For more information on what addons are, check here: [Addons](/addons/)

## What are Plugins?

For more information on what plugins are, check here: [Plugins](/plugins/)

## What are Scripts?

Scripts allow non-programmers the ability to easily use pre-defined commands to perform various actions. Scripts can be bound to various keys to extend its functionality. Scripts can be used to perform simple tasks such as changing various equipment slots at once then performing actions such as weapon skills or magic abilities.

----

# Ashita History

Ashita was originally created, by RZN, on Aug 19, 2011 and was originally named 'FFACE 5'. The idea was to replace the FFACE project with a full windowing ability and feature set that would replace the traditional FFACE.dll.

Later, due to major design changes, adjustments and alterations the project was instead separated from the FFACE project and was given its name 'Ashita' on Feb. 20, 2012.

Around version 1.0.0.10 of Ashita, atom0s had joined the project as a plugin developer with the means of becoming a core developer to help the project grow. After creating several key plugins that users were accustomed to from another project, atom0s began working with RZN on the core. Soon after atom0s became a core/lead developer with RZN on the whole project.

Ashita underwent lots of changes and improvements and partial rewrites of various parts of the core. Soon after, the project had grown in popularity and it saw many new third-party plugins from various players alike.

Due to limitations in how Ashita was currently coded, it was decided that a rewrite would be in the best interest of Ashita. atom0s began development on Ashita v2 shortly after the discussions. 

Soon after, Ashita v2 was beginning beta testing and had its full release in early 2014. Ashita v2 brought many new things to the Ashita project such as:
  * Much cleaner and more optimized code base.
  * Much more flexible plugin system that would prevent plugins from breaking due to core updates.
  * Lots of bug fixes from Ashita v1 that were hard to track down in the old code base.
  * New font object system rewrite to make font objects even more customizable.
  * And much much more!

Ashita v3 was developed to better extend some of the functionality of callbacks to plugins from the core. At the time, v2 had some limitations on what could be done with certain events and it limited the abilities of some major plugins. v3 was discussed between some of the core developers on how to better extend these events and further improve the plugin system. Once some solid ideas were made, work on v3 began. Ashita v3 was started around October 2016 with the hopes to build out an even more enjoyable platform for players.

During the rewrite, atom0s took the time to further improve the core code of the project making it much easier to update various parts of the core for any additional major changes that may come to the project. Another key adjustment made here was the removal of the old AnTweakbar UI system in favor of the newly added ImGui system. This resulted in the project being rewritten rather than being adjusted. With some guidelines in place, atom0s began working on Ashita v3 in his spare time while still focusing on keeping v2 up to date and working properly. Some key points on what were focused on with Ashita v3 were:

  * Full rewrite to optimize and modernize the Ashita core. (C++11/14 features, cint types, etc.)
  * Core code cleanup and commenting, now making use of JSDoc style comments across the whole project.
  * Enhanced plugin system with better callbacks for things such as the packet handlers and similar.
  * Added and improved callbacks for things such as command handling and incoming/outgoing text.
  * Exposure of more Direct3D calls that are commonly used in hacks/cheats to assist with various things.
  * Removal of old unused things such as AnTweakBar UI system, which has been succeeded by the newer ImGui UI system.
  * Massive overhaul and cleanup of the plugin SDK (known as the ADK).
  * And much more!

A full list of changes during this time were kept over on the forums here:<br/>
[https://forums.ashitaxi.com/viewtopic.php?f=15&t=66](https://forums.ashitaxi.com/viewtopic.php?f=15&t=66)

----

# Credits / Thanks / Shoutouts

**Lead Developers**
  * atom0s
  * RZN

**Core Contributions**
  * Lolwutt

**Plugin Developers** _(Current and past.)_
  * Apogee
  * bluekirby0
  * h1pp0
  * Hypnotoad
  * Julian
  * Lolwutt
  * MalRD
  * Nospheratu
  * Praenuntiae
  * Venrell
  * Vicrelant
  * Xenonsmurf

**Third-Party Usages / Thanks**
  * Microsoft Detours 3.1
  * TinyXML2, Nlohmann JSON
  * Lua, Luabind
  * ImGui, and previously AnTweakbar
  * Patrick Wyatt (thread-safe List implementation)
  * Galasoft.MvvmLight Toolkit, Xceed WPF Toolkit, MahApps.Metro Toolkit
  * Newtonsoft.Json

Huge thanks to those that supplied me with retail account access when needed to test things for Ashita.
Huge thanks to all the beta testers who have helped shape Ashita into what it is today. (Especially my friend Jessica (aka Immortality/Thrice).)

And a huge thanks to all of our users! Without you, there would be no purpose to continue the development of Ashita!