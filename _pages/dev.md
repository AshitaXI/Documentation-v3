---
permalink: /dev/
title: Developers
sidebar:
  nav: sidenav
toc: true
---

## Welcome Developers!

Welcome to Ashita's developer documentation. This portion of the Ashita documentation website serves as a technical reference to our Ashita Development Kit (ADK) for use with both addons and plugins. You will find various pages of information regarding how to work with our personal API exposed to addons and plugins through the main IAshitaCore interface. As well as any other custom functionality we offer to either interface.

The developer documentation is broken into two sections depending on what you plan to develop. Addons or Plugins.

On the left you will find menus for each section which will help guide you through the ropes of getting your first addon or plugin up and running as quick as possible.

## Discord

While the documentation will be a great resource of whats available, talking with others about your plans/ideas and asking for help with various questions can be handled on our Discord. <i class="fab fa-discord"></i> [Click to join the Ashita Discord server.](https://discordapp.com/invite/CfZu6Ya)

## A Friendly Note

While you are completely free to choose to make an addon or plugin, we highly recommend you make addons instead of plugins when possible.

Addons have a lot of advantages over plugins such as:
  * No need for a special development environment.
  * No recompiles needed. (If Ashita updates, there is a chance your plugin must be recompiled to work with the newer version.)
  * Rapid development.
  * Nearly full access to the Ashita Development Kit (ADK).
  * Nearly full access to the game client memory.
  * Nearly full access to the game client Direct3D devices. (IDirect3D8, IDirect3DDevice8, etc.)
  * Open source and easy to maintain.
  * Community maintainable. (In the event that you have to step away, others can keep your addon up to date with ease.)

Plugins allow for lower-level access to the game client when needed for things such as hooking, calling game functions directly, threading, and so on. If your project does not need any of these features, it is recommended to make an addon instead. _(If you have been around for a while, you will notice that most of the plugins that were around for Ashita v1 and v2 have been converted to addons in Ashita v3.)_
