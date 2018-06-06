---
permalink: /plugins/addons
title: Addons
---

**Author:** atom0s<br/>
**Link:** [http://git.ashita.atom0s.com/Ashita/Ashitav3-Release](http://git.ashita.atom0s.com/Ashita/Ashitav3-Release)

Adds Lua scripting support to Ashita in the form of state-separated environments per script known as `addons`. Addons have [nearly] full access to the Ashita Development Kit (ADK) interfaces as well as other custom exposed tables implementing other helpful functionalities.

_For more information on how to create addons, visit the Developers section of this documentation._

The Addons plugin makes use of Lua 5.1. Ashita does not alter the Lua language at all, it is stock Lua 5.1 with a few extensions to add some features, but there are no non-standard Lua language changes done to the core. Included extensions are: bitop, lpack, lstruct, luasocket
{: .notice--info}

## Features

  * Event based scripting so addons can react to events, such as when the graphics device is rendering or a keyboard key is pressed.
  * Access to the games memory. (Read/Write/etc.)
  * Access to the games graphics devices. (IDirect3D8/IDirect3DDevice8/etc.)
  * Access to Ashita's in-game UI system.
  * Access to files/folders on the system.
  * And more!

## Commands

### addon
Syntax:
```
/addon load <name>
/addon unload <name>
/addon reload <name>
/addon unloadall
/addon list
/addon exec <name> <cmd>
```
  * Loads an addon by its name.
  * Unloads an addon by its name.
  * Reloads an addon by its name.
  * Unloads all loaded addons.
  * Lists all loaded addons. (Includes memory usage info and addon status.)
  * Executes a Lua string within an addons state.