---
permalink: /addons/onevent/
title: OnEvent
---

**Author:** atom0s<br/>
**Link:** [http://git.ashitaxi.com/Addons/onevent](http://git.ashitaxi.com/Addons/onevent)

An alias based chat monitor to automatically execute commands based on chat events.

## Features

  * Adds automated command execution based on chat events.

## Commands

### onevent, oe
Syntax:
```
/onevent add <trigger>|<command>
/onevent remove <trigger>
/onevent rem <trigger>
/onevent delete <trigger>
/onevent del <trigger>
/onevent removeall
/onevent deleteall
/onevent list
```
  * Adds an event trigger.
  * Removes an event by its trigger.
  * Removes an event by its trigger.
  * Removes an event by its trigger.
  * Removes an event by its trigger.
  * Removes all triggers.
  * Removes all triggers.
  * Lists all triggers.

When adding a trigger/command combo, the add command separates the trigger and command by the first `|` character it finds. So your triggers would look like this:<br/><br/>
`/onevent add derp|/say derp!`
{: .notice--info}