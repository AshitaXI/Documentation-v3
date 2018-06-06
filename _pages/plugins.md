---
permalink: /plugins/
sidebar:
  nav: pluginsnav
title: Plugins
toc: false
---

Plugins are a compiled form of extending Ashita, written in an actual programming language such as C++. Ashita exposes a feature-rich plugin interface that has a handful of useful interfaces and functions for developers to allow them to quickly create new things.

Plugins have countless possibilities and endless limits, from simple information displayed on screen, to fully automating various tasks. Plugins have full and direct access to FFXI's memory allowing for memory edits, patches, calling in-game functions, and more giving them the most control over the game client.

Best of all, the Ashita Development Kit (ADK) is fully open source and anyone can develop for it! The ADK was written and designed for C/C++, but, any language that can meet the following requirements can create loadable plugins:

  * Must have compiling to .dll file support.
  * Must have __stdcall calling convention support.
  * Must have the ability to export functions.
  * Must have the ability to export demangled function names.

Check out the [Developers](/dev/) section of the documentation for more information on writing plugins.

Use the menu on the left to check out information about a specific plugin.