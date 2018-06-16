---
permalink: /dev/addons/namespaces/memory/
title: "Namespace: memory"
toc: true
---

The `memory` namespace contains functions that are used for interacting with the game clients memory.

You can access this namespace via:
```lua
ashita.memory.
```

Below are the functions available in this namespace.

**Note:** This allows for direct access to the entire process memory of PlayOnline / Final Fantasy XI. It is important to use these functions with caution, as writing to certain addresses can lead to getting banned. (ie. speed hacking, teleport hacking, etc.)
{: .notice--warning}

**Note:** Most of these functions will attempt to handle exceptions properly in the event of trying to read/write to invalid memory. Your addon should be mindful of what its doing and have error handling / checks in place to prevent such things from happening still to prevent crashes! For example, if you read a pointer from memory, check if its 0 before trying to read/write to it etc. rather than having the plugin exception handling catch invalid attempts.
{: .notice--warning}

---

### ashita.memory.get_baseaddr
### ashita.memory.get_base

Returns the base address of a given module.
```lua
function ashita.memory.get_baseaddr(name);
function ashita.memory.get_base(name);
```
**Parameters**
  * **name** - _(string)_ The name of the module to get the base address of.

**Returns**
  * **number** - The base address if found, 0 otherwise.

---

### ashita.memory.get_modulesize
### ashita.memory.get_size

Returns the memory size of a given module.
```lua
function ashita.memory.get_modulesize(name);
function ashita.memory.get_size(name);
```
**Parameters**
  * **name** - _(string)_ The name of the module to get the size of.

**Returns**
  * **number** - The size if found, 0 otherwise.

---

### ashita.memory.unprotect_memory
### ashita.memory.unprotect

Unprotects a region of memory making it readable, writable and executable. (PAGE_EXECUTE_READWRITE)
```lua
function ashita.memory.unprotect_memory(addr, size);
function ashita.memory.unprotect(addr, size);
```
**Parameters**
  * **addr** - _(number)_ The address to unprotect the memory of.
  * **size** - _(number)_ The size of the memory to unprotect.

**Returns**
  * **bool** - True on success, false otherwise.

---

### ashita.memory.allocate_memory
### ashita.memory.allocate
### ashita.memory.alloc

Allocates a block of memory of the given size.
```lua
function ashita.memory.allocate_memory(size);
function ashita.memory.allocate(size);
function ashita.memory.alloc(size);
```
**Parameters**
  * **size** - _(number)_ The size of the memory to allocate.

**Returns**
  * **number\|nil** - The address on success, nil otherwise.

---

### ashita.memory.deallocate_memory
### ashita.memory.deallocate
### ashita.memory.dealloc

Deallocates a block of memory.
```lua
function ashita.memory.deallocate_memory(addr, size);
function ashita.memory.deallocate(addr, size);
function ashita.memory.dealloc(addr, size);
```
**Parameters**
  * **addr** - _(number)_ The address of the memory to deallocate.
  * **size** - _(number)_ The size of the memory to deallocate.

**Returns**
  * **bool** - True on success, false otherwise.

---

### ashita.memory.findpattern
### ashita.memory.find

Scans the given memory region for a pattern of bytes. _(With wildcards, as ?? per byte.)_
```lua
function ashita.memory.findpattern(base, size, pattern, offset, usage);
function ashita.memory.find(base, size, pattern, offset, usage);
```
**Parameters**
  * **base** - _(number\|string)_ The address to begin the pattern scan at. _(Number for base address usage, string for module name usage.)_
  * **size** - _(number)_ The size of memory to scan within. _(If base is a module name, the size is taken from the module information.)_
  * **pattern** - _(string)_ The pattern of data to scan for. _(Format of: AABBCC??DD??FF)_
  * **offset** - _(number)_ The offset to add to the found address.
  * **usage** - _(number)_ The usage count of the pattern to use, if found more than once.

**Returns**
  * **number** - The address where the pattern was found on success, 0 otherwise.

**Note:** If the `base` param is given a string, it will ignore the `size` param. You must still pass a value for this param regardless if you are using a raw address or module name for `base` though! It is considered proper practice to use 0 when using a module name.
{: .notice--info}

**Note:** The `pattern` param should be a string that consists of single byte entries in a string with no spaces. Wildcards can be used via the usage of `??` in place of any byte. If a byte is a single character, such as a value of 0-9 or A-F, you must add a leading 0 to the byte. For example: `A BB CC ?? 8 FF` should be passed as: `0ABBCC??08FF`
{: .notice--info}

---

### ashita.memory.read_uint8

Reads a value from the process memory. (uint8_t)
```lua
function ashita.memory.read_uint8(addr);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.

**Returns**
  * **number** - The value on success, 0 otherwise.

---

### ashita.memory.read_uint16

Reads a value from the process memory. (uint16_t)
```lua
function ashita.memory.read_uint16(addr);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.

**Returns**
  * **number** - The value on success, 0 otherwise.

---

### ashita.memory.read_uint32

Reads a value from the process memory. (uint32_t)
```lua
function ashita.memory.read_uint32(addr);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.

**Returns**
  * **number** - The value on success, 0 otherwise.

---

### ashita.memory.read_uint64

Reads a value from the process memory. (uint64_t)
```lua
function ashita.memory.read_uint64(addr);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.

**Returns**
  * **number** - The value on success, 0 otherwise.

---

### ashita.memory.read_int8

Reads a value from the process memory. (int8_t)
```lua
function ashita.memory.read_int8(addr);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.

**Returns**
  * **number** - The value on success, 0 otherwise.

---

### ashita.memory.read_int16

Reads a value from the process memory. (int16_t)
```lua
function ashita.memory.read_int16(addr);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.

**Returns**
  * **number** - The value on success, 0 otherwise.

---

### ashita.memory.read_int32

Reads a value from the process memory. (int32_t)
```lua
function ashita.memory.read_int32(addr);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.

**Returns**
  * **number** - The value on success, 0 otherwise.

---

### ashita.memory.read_int64

Reads a value from the process memory. (int64_t)
```lua
function ashita.memory.read_int64(addr);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.

**Returns**
  * **number** - The value on success, 0 otherwise.

---

### ashita.memory.read_float

Reads a value from the process memory. (float)
```lua
function ashita.memory.read_float(addr);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.

**Returns**
  * **number** - The value on success, 0 otherwise.

---

### ashita.memory.read_double

Reads a value from the process memory. (double)
```lua
function ashita.memory.read_double(addr);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.

**Returns**
  * **number** - The value on success, 0 otherwise.

---

### ashita.memory.read_array

Reads an array of bytes from the process memory, returned as a Lua table.
```lua
function ashita.memory.read_array(addr, size);
```
**Parameters**
  * **addr** - _(number)_ The address to read the value from.
  * **size** - _(number)_ The size of data to read.

**Returns**
  * **table\|nil** - The read values on success, nil otherwise.

---

### ashita.memory.read_string

Reads a string from the process memory.
```lua
function ashita.memory.read_string(addr, size);
```
**Parameters**
  * **addr** - _(number)_ The address to read the string from.
  * **size** - _(number)_ The size of the string to read.

**Returns**
  * **string\|nil** - The string on success, nil otherwise.

---

### ashita.memory.write_uint8

Writes a value to the process memory. (uint8_t)
```lua
function ashita.memory.write_uint8(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(number)_ The value to write.

**Returns**
  * None

---

### ashita.memory.write_uint16

Writes a value to the process memory. (uint16_t)
```lua
function ashita.memory.write_uint16(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(number)_ The value to write.

**Returns**
  * None

---

### ashita.memory.write_uint32

Writes a value to the process memory. (uint32_t)
```lua
function ashita.memory.write_uint32(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(number)_ The value to write.

**Returns**
  * None

---

### ashita.memory.write_uint64

Writes a value to the process memory. (uint32_t)
```lua
function ashita.memory.write_uint32(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(number)_ The value to write.

**Returns**
  * None

---

### ashita.memory.write_int8

Writes a value to the process memory. (int8_t)
```lua
function ashita.memory.write_int8(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(number)_ The value to write.

**Returns**
  * None

---

### ashita.memory.write_int16

Writes a value to the process memory. (int16_t)
```lua
function ashita.memory.write_int16(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(number)_ The value to write.

**Returns**
  * None

---

### ashita.memory.write_int32

Writes a value to the process memory. (int32_t)
```lua
function ashita.memory.write_int32(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(number)_ The value to write.

**Returns**
  * None

---

### ashita.memory.write_int64

Writes a value to the process memory. (int64_t)
```lua
function ashita.memory.write_int64(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(number)_ The value to write.

**Returns**
  * None

---

### ashita.memory.write_float

Writes a value to the process memory. (float)
```lua
function ashita.memory.write_float(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(number)_ The value to write.

**Returns**
  * None

---

### ashita.memory.write_double

Writes a value to the process memory. (double)
```lua
function ashita.memory.write_double(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(number)_ The value to write.

**Returns**
  * None

---

### ashita.memory.write_array

Writes an array of values to the process memory. (Via a Lua table.)
```lua
function ashita.memory.write_array(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(table)_ The table of bytes to write.

**Returns**
  * None

---

### ashita.memory.write_string

Writes a string value to the process memory.
```lua
function ashita.memory.write_string(addr, value);
```
**Parameters**
  * **addr** - _(number)_ The address to write the value to.
  * **value** _(string)_ The string value to write.

**Returns**
  * None

---
