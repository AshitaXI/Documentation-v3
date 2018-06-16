---
permalink: /dev/addons/namespaces/misc/
title: "Namespace: misc"
toc: true
---

The `misc` namespace contains functions that do not fit into another category, but are not enough to have their own namespaces.

You can access this namespace via:
```lua
ashita.misc.
```

Below are the functions available in this namespace.

---

### ashita.misc.open_url

Opens a url (or application) via the `ShellExecute` Windows API.<br />
_(**Note:** You should use the `execute` command for applications instead of open\_url!)_
```lua
function ashita.misc.open_url(url);
```
**Parameters**
  * **url** - _(string)_ The website url (or file path) to open.

**Returns**
  * None

---

### ashita.misc.play_sound

Plays a sound file (async).
```lua
function ashita.misc.play_sound(file);
```
**Parameters**
  * **file** - _(string)_ The path to the file to play.

**Returns**
  * None

---

### ashita.misc.get_clipboard

Returns the current clipboard text.
```lua
function ashita.misc.get_clipboard();
```
**Parameters**
  * None

**Returns**
  * **string\|nil** - The clipboard text on success, nil otherwise.

---

### ashita.misc.set_clipboard

Sets the clipboard text.
```lua
function ashita.misc.set_clipboard(text);
```
**Parameters**
  * **text** - _(string)_ The text to set the clipboard to.

**Returns**
  * **bool** - True on success, false otherwise.

---

### ashita.misc.execute

Opens an application via the `ShellExecute` Windows API.
```lua
function ashita.misc.execute(path, args, mode);
```
**Parameters**
  * **path** - _(string)_ The path of the application to execute.
  * **args** - _(string)_ The arguments to pass to the application.
  * **mode** - _(number)_ The startup mode of the application. (Default: SW_SHOWMINNOACTIVE)

**Returns**
  * None

---

### ashita.misc.hide_console

Hides any allocated console for the process.
```lua
function ashita.misc.hide_console();
```
**Parameters**
  * None

**Returns**
  * None

---

### ashita.misc.show_console

Shows (or creates) the console for the process.
```lua
function ashita.misc.show_console();
```
**Parameters**
  * None

**Returns**
  * None

**Note:** If no console is currently allocated for the process, it will create a new one and bind the various streams to it. (CONIN$ for stdin, CONOUT$ for stdout, CONOUT$ for stderr)
{: .notice--info}

---
