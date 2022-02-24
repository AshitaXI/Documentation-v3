---
permalink: /commands/
title: In-Game Commands
toc: true
---

Below are commands that you can use with Ashita. Commands are entered directly into the in-game chat to make things quick and easy to access.

## Command Syntax / Usage

Addons, plugins and Ashita itself allow you to use commands to interact with the various features they offer. These commands can take sub-commands with various arguments. These arguments can be eithe required for the command to work, or be optional to allow more control of what something does. 

Here is how to read the following command lists syntax regarding these arguments.

| Syntax | Description |
|:---|:---|
| `<arg>`| Arguments surrounded by angle brackets are considered required and must be part of the command. |
| `[arg]`| Arguments surrounded by square brackets are considered optional and can be left out of the command. |
| `arg` | Plain text arguments mean it must be entered as its shown. |

Descriptions of each command are shown under the syntax blocks.<br/>
Descriptions are in the order the syntax is shown for each command and sub-command that a command may accept.

## Ashita Specific Commands

### aversion, aver, ashitaversion
Syntax:
```
/aversion
/aver
/ashitaversion
```
  * Displays the current Ashita version information.

## Misc Commands

### paste, paste_old
Syntax:
```
/paste
/paste_old - (Old method, deprecated. Does not support unicode text.)
```
  * Pastes the current clipboard text into the chat input.

**/paste_old** is deprecated and simply kept around to allow users to revert back to the old method in case the new one does not work for them. It is not recommended to use this command as it may be removed in a future Ashita version!
{: .notice--warning}

## Window Manipulation Commands

### bringtofront
Syntax:
```
/bringtofront
```
  * Brings the window to the front.

### minimize
Syntax:
```
/minimize
```
  * Minimizes the game window.

### maximize
Syntax:
```
/maximize
```
  * Maximizes the game window.

### windowframe, window_toggleframe
Syntax:
```
/windowframe
/window_toggleframe
```
  * Toggles the window frame (border).

### exit, terminate
Syntax:
```
/exit
/terminate
```
  * Exit the game window.

### move
Syntax:
```
/move <x> <y>
/move size <w> <h>
```
  * Moves the game window to the given x/y screen position.
  * Resizes the game window to the given width and height.

## Time Related Commands

### pause, wait, sleep
Syntax:
```
/pause <time>
/wait <time>
/sleep <time>
```
  * Causes Ashita to wait for the given period of time. (Time is in seconds.)

Sleeping causes the current thread to wait. If this is used directly, it will freeze the entire game for the given amount of time which can lead to R0'ing. This should only be used in scripts!
{: .notice--warning}

## Plugin Commands

### plugin
<small>(_Sub-commands used to interact with Ashita's plugin manager._)</small><br/>
Syntax:
```
/plugin silent
```
  * Toggles silent plugin messages. (Stops Ashita from printing load/unload plugin messages.)

### load, plugin_load, loadplugin, pluginload
Syntax:
```
/load <name>
/plugin_load <name>
/loadplugin <name>
/pluginload <name>
```
  * Loads a plugin by its file name. _(Do not include the extension of the file!)_

### unload, plugin_unload, unloadplugin, pluginunload
Syntax:
```
/unload <name>
/plugin_unload <name>
/unloadplugin <name>
/pluginunload <name>
```
  * Unloads a plugin by its file name. _(Do not include the extension of the file!)_

### unloadall
Syntax:
```
/unloadall
```
  * Unloads all currently loaded plugins.

### list
Syntax:
```
/list
```
  * Lists all loaded plugins.

## Direct3D Commands

### fillmode, wireframe
Syntax:
```
/fillmode
/fillmode [num]
```
  * Toggles the fill mode setting.
  * Sets the fill mode setting to the given value. (1 = point, 2 = wireframe, 3 = solid)

### ambient
Syntax:
```
/ambient
/ambient [0/1]
/ambient [a] [r] [g] [b]
```
  * Toggles the ambient setting on and off.
  * Sets the ambient setting on and off.
  * Sets the ambient color.

## Script Commands

### exec, console_exec
Syntax:
```
/exec [name]
/console_exec [name]
```
  * Executes a script by its file name.

{% capture notice-scripts %}
Inside of the scripts folder, you can have sub-folders to help organize your scripts. (For example, if you wanted to have scripts per-job.)
<br/>
All you need to use for the name is the script name, or sub-folder path and name of the script if its in a sub-folder.
<br/><br/>
**Examples**
  * /exec blm - _Will execute blm.txt_
  * /exec blm.txt _Will execute blm.txt_
  * /exec blm/nuke - _Will execute blm/nuke.txt_
  * /exec blm/nuke.txt - _Will execute blm/nuke.txt_
{% endcapture %}
<div class="notice--info">{{ notice-scripts | markdownify }}</div>

## Input Commands

### input, keyboard_sendstring
Syntax:
```
/input [cmd]
/keyboard_sendstring [cmd]
```
  * Sends a command to the Ashita parser to be interpreted.

## Alias Commands

### alias
Syntax:
```
/alias <trigger> <cmd>
/alias add <trigger> <cmd>
/alias del <trigger>
/alias delete <trigger>
/alias list
/alias clearall
```
  * Adds an alias with the given trigger and command.
  * Deletes an alias with the given trigger.
  * Lists all current alias'.
  * Clears all current alias'.

## Bind Commands

{% capture notice-keybinds %}
Keybinds allow for modifier keys which can be used to create more extensive keybinds.<br/>
Here is a list of valid modifiers:
  * `!` - Represents the ALT key must be pressed with the keybind.
  * `^` - Represents the CTRL key must be pressed with the keybind.
  * `@` - Represents the Windows key must be pressed with the keybind.
  * `#` - Represents the Apps key must be pressed with the keybind.
  * `+` - Represents the Shift key must be pressed with the keybind.
{% endcapture %}
<div class="notice--info">{{ notice-keybinds | markdownify }}</div>

### bind, keyboard_bind
Syntax:
```
/bind [!^@#+]<key> [down|up] <cmd>
/bind list
/bind silent
```
  * Binds a key / key combination with the optional modifiers and key state to the given command.
  * Lists all current binds.
  * Toggles the silent bind feature. (Stops Ashita from printing keybind messages.)

### unbind, keyboard_unbind
Syntax:
```
/unbind [!^@#+]<key> [down|up]
```
  * Unbinds a key / key combination.

### unbindall
Syntax:
```
/unbindall
```
   * Unbinds all current keybinds.

### bindblock
Syntax:
```
/bindblock
```
   * Toggles the bind block feature to ignore keybinds while chat input is open in-game.

## Input Device Commands

### gamepad

**NOTE**: If you are using an XInput based gamepad, then you need to disable it in the pad config tool. If you're using a Dinput controller, then you can use the Ashita gamepad command to turn it off.

Syntax:
```
/gamepad allowbackground
/gamepad allowbg
/gamepad bg
/gamepad allowbackground [0/1|off/on]
/gamepad allowbg [0/1|off/on]
/gamepad bg [0/1|off/on]
```
  * Toggles the gamepad background feature.
  * Sets the gamepad background feature on or off.
