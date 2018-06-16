---
permalink: /dev/addons/namespaces/file/
title: "Namespace: file"
toc: true
---

The `file` namespace contains functions that are used for working with files and directories.

You can access this namespace via:
```lua
ashita.file.
```

Below are the functions available in this namespace.

---

### ashita.file.create_directory
### ashita.file.create_dir

Creates a directory on the clients system. (Any sub-directories within the path that are missing are also created.)
```lua
function ashita.file.create_directory(path);
function ashita.file.create_dir(path);
```
**Parameters**
  * **path** - _(string)_ The full path to create.

**Returns**
  * **bool** - True on success, false otherwise.

---

### ashita.file.directory_exists
### ashita.file.dir_exists

Determines if the given path exists.
```lua
function ashita.file.directory_exists(path);
function ashita.file.dir_exists(path);
```
**Parameters**
  * **path** - _(string)_ The full path to check.

**Returns**
  * **bool** - True if the path exists, false otherwise.

---

### ashita.file.file_exists

Determines if the given file exists.
```lua
function ashita.file.file_exists(path);
```
**Parameters**
  * **path** - _(string)_ The full path to the file to check.

**Returns**
  * **bool** - True if the file exists, false otherwise.

---

### ashita.file.get_directory
### ashita.file.get_dir

Obtains and returns a directories contents.
```lua
function ashita.file.get_directory(root, mask, subs);
function ashita.file.get_dir(root, mask, subs);
```
**Parameters**
  * **root** - _(string)_ The path to the directory to obtain the contents of.
  * **mask** - _(string)_ The mask to use while obtaining the contents. (Optional, default is `*`.)
  * **subs** - _(bool)_ True if the sub-directories are included in the results, false otherwise. (Optional, default is `false`.)

**Returns**
  * **table** - The results on success, nil otherwise.

**Note:** If only the root path is given to this function, it will return a table containing a list of folders found within the given directory. If a mask is given, the function will instead return any file/folder that matches the mask.
{: .notice--warning}

---

### ashita.file.get_install_dir

Obtains the install path to a given Square Enix entity.
```lua
function ashita.file.get_install_dir(langId, entityId);
```
**Parameters**
  * **langId** - _(number)_ The language id used for the proper PlayOnline registry key to lookup within.
  * **entityId** - _(number)_ The entity id of the Square Enix product to lookup the install path to.

**Returns**
  * **string** - The path to the entity if found, nil otherwise.

{% capture notice-get_install_dir %}
Language Ids:
  * 0 - Default (Uses the default language of the current loaded client.)
  * 1 - Japanese (Looks up registry information within the `PlayOnline` registry key.)
  * 2 - English (Looks up registry information within the `PlayOnlineUS` registry key.)
  * 3 - European (Looks up registry information within the `PlayOnlineEU` registry key.)

Square Enix Entity Ids:
  * 0 - PlayOnline 
  * 1 - Final Fantasy XI
  * 2 - Final Fantasy XI (Test Server)
  * 3 - Tetra Master
{% endcapture %}
<div class="notice--info">{{ notice-get_install_dir | markdownify }}</div>

---
