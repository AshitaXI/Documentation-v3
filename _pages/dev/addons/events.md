---
permalink: /dev/addons/events/
title: Events
toc: true
---

One of the main ways that Ashita allows addons to obtain various important data from the hook is through the method of events. Events are callback functions that are fired within an addons Lua state whenever the hook core handles something that warrants an addon to be notified. This can happen for things such as incoming or outgoing packets, chat commands entered by the user, etc.

The following events are currently valid within Ashita's core hook that are exposed to addons:

  * [load](#event-load)
  * [unload](#event-unload)
  * [command](#event-command)
  * [incoming_packet](#event-incoming_packet)
  * [outgoing_packet](#event-outgoing_packet)
  * [incoming_text](#event-incoming_text)
  * [outgoing_text](#event-outgoing_text)
  * [prerender](#event-prerender)
  * [render](#event-render)
  * [timerpulse](#event-timerpulse)
  * [key](#event-key)
  * [mouse](#event-mouse)

## Registering To Events

Addon developers can register to an event using one of two methods. The short-hand method, or the long-hand method. In most cases, the short-hand method will be ideal and recommended.

**Short-hand Method**
```lua
ashita.register_event('load', function()
    print('Load event fired!');
end);
```

**Long-hand Method**
```lua
function loadfunction()
    print('Load event fired!');
end
ashita.register_event('load', loadfunction);
```

## Built-In Events

Below, you will find documentation for the built-in events that the Ashita addons library exposes to all addons. Please be aware of the returns and such of each event as incorrect returns can cause log spam of warnings/errors as well as potential client crashes! Be sure to test your addons thoroughly before having others use them!

---

### Event: load

Called when the current addon is being loaded. (Also called when the addon is reloaded.)
```lua
ashita.register_event('load', function()
    print('Load event fired!');
end);
```
**Parameters**
  * None

**Returns**
  * None

---

### Event: unload

Called when the current addon is being unloaded. (Also called when the addon is reloaded.)
```lua
ashita.register_event('unload', function()
    print('Unload event fired!');
end);
```
**Parameters**
  * None

**Returns**
  * None

---

### Event: command

Called when a command has been entered in the game.
```lua
ashita.register_event('command', function(cmd, nType)
    print('Command event fired!');
    return false;
end);
```
**Parameters**
  * **cmd** - _(string)_ The command that was entered.
  * **nType** - _(number)_ The type of command that was entered.

**Returns**
  * **bool** - True if the addon handled the command, false otherwise to allow further addons to process the command.

---

### Event: incoming_packet

Called when the game client is receiving an incoming packet.
```lua
ashita.register_event('incoming_packet', function(id, size, packet, packet_modified, blocked)
    print('Incoming packet event fired!');
    return false;
end);
```
**Parameters**
  * **id** - _(number)_ The packet id being processed.
  * **size** - _(number)_ The size of the packet being processed.
  * **packet** - _(string)_ The raw packet data.
  * **packet_modified** - _(string)_ The raw packet data that has been modified by other addons and plugins.
  * **blocked** - _(bool)_ True if the packet has been blocked by another addon or plugin, false otherwise.

**Returns**
  * **bool** - True if the packet should be dropped/blocked, false otherwise.
  * or
  * **table** - A table containing new packet data that should be used to modify the packet.

---

### Event: outgoing_packet

Called when the game client is sending an outgoing packet.
```lua
ashita.register_event('outgoing_packet', function(id, size, packet, packet_modified, blocked)
    print('Outgoing packet event fired!');
    return false;
end);
```
**Parameters**
  * **id** - _(number)_ The packet id being processed.
  * **size** - _(number)_ The size of the packet being processed.
  * **packet** - _(string)_ The raw packet data.
  * **packet_modified** - _(string)_ The raw packet data that has been modified by other addons and plugins.
  * **blocked** - _(bool)_ True if the packet has been blocked by another addon or plugin, false otherwise.

**Returns**
  * **bool** - True if the packet should be dropped/blocked, false otherwise.
  * or
  * **table** - A table containing new packet data that should be used to modify the packet.

---

### Event: incoming_text

Called when the game client is adding text to the chat log.
```lua
ashita.register_event('incoming_text', function(mode, message, modifiedmode, modifiedmessage, blocked)
    print('Incoming text event fired!');
    return false;
end);
```
**Parameters**
  * **mode** - _(number)_ The chat mode of the message. (Controls the color of the overall message.)
  * **message** - _(string)_ The message being added to the chat log.
  * **modifiedmode** - _(number)_ The modified mode, if another addon or plugin has modified it.
  * **modifiedmessage** - _(string)_ The modified message, if another addon or plugin has modified it.
  * **blocked** - _(bool)_ True if the message has been blocked by another addon or plugin, false otherwise.

**Returns**
  * **bool** - True if the message should be blocked, false otherwise.
  * or
  * **number** - The modified message mode to use instead of the current one.
  * or
  * **string** - The modified message to use instead of the current one.
  * or
  * **string, number** - The modified message and mode to use instead of the current ones.

---

### Event: outgoing_text

Called when the game client is sending text to the server.
_(This gets called when a command, chat, etc. is not handled by the client and is being sent to the server.)_
```lua
ashita.register_event('outgoing_text', function(mode, message, modifiedmode, modifiedmessage, blocked)
    print('Outgoing text event fired!');
    return false;
end);
```
**Parameters**
  * **mode** - _(number)_ The chat mode of the message. (Controls the color of the overall message.)
  * **message** - _(string)_ The message being added to the chat log.
  * **modifiedmode** - _(number)_ The modified mode, if another addon or plugin has modified it.
  * **modifiedmessage** - _(string)_ The modified message, if another addon or plugin has modified it.
  * **blocked** - _(bool)_ True if the message has been blocked by another addon or plugin, false otherwise.

**Returns**
  * **bool** - True if the message should be blocked, false otherwise.
  * or
  * **number** - The modified message mode to use instead of the current one.
  * or
  * **string** - The modified message to use instead of the current one.
  * or
  * **string, number** - The modified message and mode to use instead of the current ones.

---

### Event: prerender

Called when the client is about to start rendering. (Called just after D3D8 BeginScene.)
```lua
ashita.register_event('prerender', function()
    print('Prerender event fired!');
end);
```
**Parameters**
  * None

**Returns**
  * None

---

### Event: render

Called when the client has finished its rendering and other tools can now render. (Called during D3D8 EndScene.)
```lua
ashita.register_event('render', function()
    print('Render event fired!');
end);
```
**Parameters**
  * None

**Returns**
  * None

---

### Event: timerpulse

Called when the client is rendering the scene, used for Addons Lua timers library.
_(Addons should not register to this event themselves, it is used for the timers library.)_
```lua
ashita.register_event('timerpulse', function()
    print('Timer pulse event fired!');
end);
```
**Parameters**
  * None

**Returns**
  * None

---

### Event: key

Called when the client is handling a keyboard key.
```lua
ashita.register_event('key', function(key, down, blocked)
    return false;
end);
```
**Parameters**
  * **key** - _(number)_ The DirectInput key id of the key press.
  * **down** - _(bool)_ The down/up state of the key. (True if down, false if up.)
  * **blocked** - _(bool)_ Flag if the key has already been blocked.

**Returns**
  * **bool** - True if the key should be blocked, false otherwise.

---

### Event: mouse

Called when the client is handling a mouse event.
```lua
ashita.register_event('mouse', function(id, x, y, delta, blocked)
    return false;
end);
```
**Parameters**
  * **id** - _(number)_ The windows event id of the mouse event. (More info here: [Click Here](https://msdn.microsoft.com/en-us/library/windows/desktop/ms645533%28v=vs.85%29.aspx))
  * **x** - _(number)_ The x axis point of the mouse.
  * **y** - _(number)_ The y axis point of the mouse.
  * **delta** - _(number)_ The scroll wheel delta of the mouse when scrolling.
  * **blocked** - _(bool)_ Flag if the mouse event has already been blocked.

**Returns**
  * **bool** - True if the mouse event should be blocked, false otherwise.