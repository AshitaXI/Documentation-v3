---
permalink: /dev/addons/usinglibs/
title: Using Libs (Libraries)
toc: true
---

## What Are Libs (Libraries)?

Libs (or Libarries) are scripts (or C DLLs) that contain helpful functions and definitions that all addons can make use of. These generally come prepackaged with Ashita and can be found within the /addons/libs/ folder. 

_Addon developers can make their own libraries and have you place them within the libs folder as well. Anyone is free to create libraries for Ashita. If you have a library you feel is useful to others and wish to have it added to the Ashita package, feel free to contact atom0s on Discord._

Libraries can be used by addons easily. Just simply 'require' them into your code. For example, most addons will make use of the 'common' library. This lib brings a collection of other libraries into your code automatically reducing the number of requires you may use for other commonly used libraries. This can be used like this:

```lua
require 'common';
```

You can also include libraries that are within sub-folders inside of the libs folder. Lua treats folder separators as `.` instead of slashes when using the require keyword. For example, you can include the recast library found within `/libs/ffxi/recast.lua` via:

```lua
require 'ffxi.recast';
```

Remember, when including a library, you do not use the file extension in the name! Just the name of the file and any sub-folder names needed to get to the library!

## Compiled Libraries (CLibs)

Compiled libraries, or CLibs, are DLLs that expose more functionality to the Lua state through a compiled C/C++ DLL file. Lua has a special setup for these kinds of libraries that in order to be loaded, must follow certain guidelines.

A compiled library must export a `luaopen_` function that contains the name of the file as the require name that will be used. For example, if I have a clib named `xie.dll` and wish to require it such as:

```lua
require 'xie';
```

The xie.dll **MUST** export a function named `luaopen_xie`.

Your clib can also export multiple `luaopen_` functions that are used for specific namespace tables of functions. For example you could export things such as:

```
luaopen_xie_rendering
luaopen_xie_packets
```

Then require them specifically like:

```lua
require 'xie.rendering';
require 'xie.packets';
```

CLibs should be placed in the root `/addons/libs/` folder!

**Note:** CLibs must be compiled with the same Lua libraries as Ashita's addon library is compiled against in order to properly work 100%!
{: .notice--info}

## Available Libraries

Here is a list of the available libraries included with Ashita and a brief description of what they are for. You can open these libraries within a text editor to find more information and functionality of them.

| Library File Name | Usage | Description |
|----|----|
| common.lua        | `require 'common'`        | Includes the various common libraries that are most frequently used. |
| d3d8.lua          | `require 'd3d8'`          | Contains definitions and helper functions for use with the Direct3D exposed API. |
| imguidef.lua      | `require 'imguidef'`      | Contains definitions and helper functions for use with the Ashita UI system. (ImGui) |
| logging.lua       | `require 'logging'`       | Contains helper functions for writing to Ashita's log files. |
| ltn12.lua         | `require 'ltn12'`         | LuaSocket helper file that implements filters, sources, and sinks. |
| mathex.lua        | `require 'mathex'`        | Contains additional functions to extend the Lua `math` namespace. |
| mime.lua          | `require 'mime'`          | LuaSocket helper file that implements file mime types. |
| settings.lua      | `require 'settings'`      | Contains definitions and helper functions for managing addon settings files via json. |
| socket.lua        | `require 'socket'`        | LuaSocket main library file to make use of web sockets within Lua. |
| stringex.lua      | `require 'stringex'`      | Contains additional functions to extend the Lua `string` namespace. |
| tableex.lua       | `require 'tableex'`       | Contains additional functions to extend the Lua `table` namespace. |
| timer.lua         | `require 'timer'`         | Contains helper functions for creating timers within an addon. |
| ffxi/enums.lua    | `require 'ffxi.enums'`    | Contains FFXI related enumerations and constants. |
| ffxi/recast.lua   | `require 'ffxi.recast'`   | Contains helper functions for reading the players recast timers. |
| ffxi/targets.lua  | `require 'ffxi.targets'`  | Contains helper functions for obtaining various targeting information. |
| ffxi/vanatime.lua | `require 'ffxi.vanatime'` | Contains helper functions for reading the current Vana'diel time. |
| ffxi/weather.lua  | `require 'ffxi.weather'`  | Contains helper functions for reading the current zone weather. |
| json/json.lua     | `require 'json.json'`     | Contains definitions and functions for interacting with JSON files within Lua. (Used for settings.lua) |
| socket/ftp.lua    | `require 'socket.ftp'`    | Contains definitions and functions for interacting with FTP servers. |
| socket/headers.lua| `require 'socket.headers'`| Contains definitions and functions for interacting with HTTP headers. |
| socket/http.lua   | `require 'socket.http'`   | Contains definitions and functions for interacting with HTTP requests. |
| socket/smtp.lua   | `require 'socket.smtp'`   | Contains definitions and functions for interacting with SMTP servers. |
| socket/tp.lua     | `require 'socket.tp'`     | Contains definitions and functions for interacting with SMTP/FTP servers. (Shared library.) |
| socket/url.lua    | `require 'socket.url'`    | Contains definitions and functions for interacting with urls. |