---
permalink: /dev/addons/namespaces/
title: Namespaces
toc: true
---

## What Are Namespaces?

Addons can access more functions that are defined within namespaces exposed to the Lua state. Namespaces are, in Lua, just tables that hold additional functionality such as functions, other namespaces, constant data, etc. Namespaces are used to help keep the Lua state organized and to not pollute the global namespace of the state. In Lua, it is good practice to keep the state organized and use as minimal globals as possible. (Things like function definitions and tables should be local'd whenever possible to keep the state clean.)

_While addons do run in their own sandboxed states, meaning other addons cannot affect the state of another, it is still good to practice clean state management._

Here is an example of how namespaces look within C++ and then how they look in Lua. This can help those who are new to namespaces get a better understanding of how they work between the two languages.
```cpp
// Definition:
namespace ashita
{
    namespace memory
    {
        static uint32_t read_uint32(...);
    }; // namespace memory.
}; // namespace ashita

// Usage:
const auto value = ashita::memory::read_uint32(...);
```

In Lua, this would be defined in a similar manner, using tables as the namespaces:
```lua
-- Definition:
local ashita = { };
ashita.memory = { };
ashita.memory.read_uint32 = function(...)
    -- func contents here..
end

-- Usage:
local value = ashita.memory.read_uint32(...);
```

## Available Namespaces

Here is a list of namespaces that are available to you while writing addons. Each namespace has its own collection of functions and other features, be sure to visit each namespaces page to learn more about what they offer.

| Namespace | Description |
|-----------|-------------|
| [bits](/dev/addons/namespaces/bits/)          | Holds functions related to bit and byte packing/unpacking. |
| [d3dx](/dev/addons/namespaces/d3dx/)          | Holds functions related to Direct3D8X. |
| [d3d8](/dev/addons/namespaces/d3d8/)          | Holds functions related to the IDirect3D8 interface. |
| [d3d8dev](/dev/addons/namespaces/d3d8dev/)    | Holds functions related to the IDirect3DDevice8 interface. |
| [file](/dev/addons/namespaces/file/)          | Holds functions related to file I/O. |
| [gui](/dev/addons/namespaces/gui/)            | Holds functions related to the in-game Ashita GUI. (Powered by ImGui.) |
| [memory](/dev/addons/namespaces/memory/)      | Holds functions related to reading/writing the game client memory. |
| [misc](/dev/addons/namespaces/misc/)          | Holds miscellaneous functions that don't fit into other namespaces.  |
| [regex](/dev/addons/namespaces/regex/)        | Holds functions related to regular expressions. |

## Additional Notes

The `misc` namespace holds 'orphan' functions that do not fit into other namespaces, but also do not have enough similar functions to warrant their own namespace. Because of this, a single namespace was created to hold them. 
