---
permalink: /dev/addons/namespaces/bits/
title: "Namespace: bits"
toc: true
---

The `bits` namespace contains functions that are used for bits/bytes packing and unpacking. 

You can access this namespace via:
```lua
ashita.bits.
```

Below are the functions available in this namespace.

---

### ashita.bits.unpack_be

Unpacks bit data. (Big Endian)
```lua
function ashita.bits.unpack_be(data, offset, len);
```
**Parameters**
  * **data** - _(string)_ The string to unpack the data from. (Mainly used with packet events.)
  * **offset** - _(number)_ The offset of the data to unpack.
  * **len** - _(number)_ The length of the data to unpack.

**Returns**
  * **number** - The unpacked value.

---

```lua
function ashita.bits.unpack_be(data, byteOffset, bitOffset, len);
```
**Parameters**
  * **data** - _(string)_ The string to unpack the data from.
  * **byteOffset** - _(number)_ The offset of the data to unpack.
  * **bitOffset** - _(number)_ The bit offset of data to unpack.
  * **len** - _(number)_ The length of the data to unpack.

**Returns**
  * **number** - The unpacked value.

---

### ashita.bits.unpack_le

Unpacks bit data. (Little Endian)
```lua
function ashita.bits.unpack_le(data, offset, len);
```
**Parameters**
  * **data** - _(string)_ The string to unpack the data from. (Mainly used with packet events.)
  * **offset** - _(number)_ The offset of the data to unpack.
  * **len** - _(number)_ The length of the data to unpack.

**Returns**
  * **number** - The unpacked value.

---

```lua
function ashita.bits.unpack_le(data, byteOffset, bitOffset, len);
```
**Parameters**
  * **data** - _(string)_ The string to unpack the data from.
  * **byteOffset** - _(number)_ The offset of the data to unpack.
  * **bitOffset** - _(number)_ The bit offset of data to unpack.
  * **len** - _(number)_ The length of the data to unpack.

**Returns**
  * **number** - The unpacked value.

---
