---
permalink: /dev/addons/functions/
title: Functions
toc: true
---

Below you will find documentation about the global namespace functions that the Addons plugin exposes for addons to make use of when needed. These functions are part of the global namespace, thus they can be called directly without any prefix or namespace required. Other functions can be found within various namespaces. To see information on the available namespaces and their functions, please visit the namespaces documentation page.

---

### AddIncomingPacket

Sends a packet to the client as if the server had sent it.
```lua
function AddIncomingPacket(id, packet);
```
**Parameters**
  * **id** - _(number)_ The id of the packet being sent.
  * **packet** - _(table)_ The packet data.

**Returns**
  * None

---

### AddIncomingPacket

Sends a packet to the server as if the client had sent it.
```lua
function AddOutgoingPacket(id, packet);
```
**Parameters**
  * **id** - _(number)_ The id of the packet being sent.
  * **packet** - _(table)_ The packet data.

**Returns**
  * None

---

### ParseAutoTranslate

Parses a string for auto-translate tags and converts them.
```lua
function ParseAutoTranslate(msg, useBrackets);
```
**Parameters**
  * **msg** - _(string)_ The chat message to parse the auto-translate tags within.
  * **useBrackets** - _(bool)_ True if the resulting string should include the brackets, false otherwise.

**Returns**
  * **string** - The parsed string.

---

### GetEntity

Obtains an entity object from the given index.
```lua
function GetEntity(index);
```
**Parameters**
  * **index** - _(number)_ The index of the entity to obtain.

**Returns**
  * **object** - The entity object if valid, nil otherwise.

---

### GetPlayerEntity

Obtains the player entity object.
```lua
function GetPlayerEntity();
```
**Parameters**
  * None

**Returns**
  * **object** - The entity object if valid, nil otherwise.