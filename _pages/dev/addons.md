---
permalink: /dev/addons/
title: Creating Addons
sidebar:
  nav: devnav_addons
toc: true
---

## What Are Addons?

Addons, powered by Lua scripting, are scripts that allow you to extend the functionality of Ashita. Addons are given [nearly] full access to the Ashita Developer Kit (ADK) making them work similar to a plugin but in the form of a Lua script. Because scripts can be written in a simple text editor with no special tools required, they are easily the most used form of extending Ashita.

Because bugs happen, addons are separated from one another in sandboxed Lua states, meaning that each addon is given its own Lua state to execute within. This prevents a single addon from causing others to stop working in case of an error or other issue. However, this does cause addons to not be able to [easily] communicate with one another directly.

Ashita’s Addons plugin offers a wide variety of custom extensions and functionality while not changing the language syntax at all. Addons are given control of things such as: in-game memory, packets, the Direct3D device, and more!

## What Is Lua?

Lua is a powerful, fast, lightweight, embedded scripting language.

Lua combines simple procedural syntax with powerful data description constructs based on associative arrays and extensible semantics. Lua is dynamically typed, runs by interpreting bytecode for a register-based virtual machine, and has automatic memory management with incremental garbage collection, making it ideal for configuration, scripting, and rapid prototyping.

You can read and learn more about Lua at their homepage here: [http://www.lua.org/about.html](http://www.lua.org/about.html)

## New To Lua / Lua Beginners Guides

Here is a collection of links to help get you started with Lua.

### Lua Project Links
  * Lua Manual 5.1: http://www.lua.org/manual/5.1/
  * Programming In Lua (EBook): [http://www.lua.org/pil/contents.html](http://www.lua.org/pil/contents.html)
  * Lua Wiki: [http://lua-users.org/wiki/](http://lua-users.org/wiki/)
  * Lua Wiki Tutorial List: [http://lua-users.org/wiki/TutorialDirectory](http://lua-users.org/wiki/TutorialDirectory)
  * Lua Mailing List: [http://www.lua.org/lua-l.html](http://www.lua.org/lua-l.html)
  * Lua Forums: [http://forum.luahub.com/](http://forum.luahub.com/)

### Tips and Tricks / Performance Information
  * [http://www.lua.org/gems/sample.pdf](http://www.lua.org/gems/sample.pdf)
  * [http://lua-users.org/wiki/OptimisationTips](http://lua-users.org/wiki/OptimisationTips)
  * [http://stackoverflow.com/questions/89523/lua-patterns-tips-and-tricks](http://stackoverflow.com/questions/89523/lua-patterns-tips-and-tricks)

### Metatables
  * [http://www.lua.org/pil/13.html](http://www.lua.org/pil/13.html)
  * [http://phrogz.net/lua/LearningLua_MetatableEvents.html](http://phrogz.net/lua/LearningLua_MetatableEvents.html)
  * [http://phrogz.net/lua/LearningLua_ValuesAndMetatables.html](http://phrogz.net/lua/LearningLua_ValuesAndMetatables.html)
  * [http://www.dreamincode.net/forums/topic/175747-lua-metatables-tutorial/](http://www.dreamincode.net/forums/topic/175747-lua-metatables-tutorial/)

### Examples / Tutorials
  * [http://lua-users.org/wiki/SampleCode](http://lua-users.org/wiki/SampleCode)
  * [http://lua-users.org/wiki/TutorialDirectory](http://lua-users.org/wiki/TutorialDirectory)