---
permalink: /addons/
sidebar:
  nav: addonsnav
title: Addons
toc: false
---

Addons, powered by Lua scripting, are scripts that allow you to extend the functionality of Ashita. Addons are given [nearly] full access to the Ashita Developer Kit (ADK) making them work similar to a plugin but in the form of a Lua script. Because scripts can be written in a simple text editor with no special tools required, they are easily the most used form of extending Ashita.

Because bugs happen, addons are separated from one another in sandboxed Lua states, meaning that each addon is given its own Lua state to execute within. This prevents a single addon from causing others to stop working in case of an error or other issue. However, this does cause addons to not be able to [easily] communicate with one another directly.

Ashita's Addons plugin offers a wide variety of custom extensions and functionality while not changing the language syntax at all. Addons are given control of things such as: in-game memory, packets, the Direct3D device, and more!

Check out the [Developers](/dev/) section of the documentation for more information on writing addons.

Use the menu on the left to check out information about a specific addon.