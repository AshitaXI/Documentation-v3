---
permalink: /keybinds/
title: Keybinds
toc: true
---

Ashita allows you to bind keys (and key combinations) to execute commands with ease. This allows you to really customize your experience and have keys do what you truely want rather than be restricted to FFXI's limited macro system. 

When you bind a key, it will override any action the game would normally do and instead, execute what you bind it to. The game is blocked from seeing the original key press preventing the original purpose of the key from working.

## Modifiers

Along with binding a single key, you can combine modifiers to create key combinations. (Think of things like ALT+TAB.)

{% capture notice-keybinds %}
Here is a list of valid modifiers:
  * `!` - Represents the ALT key must be pressed with the keybind.
  * `^` - Represents the CTRL key must be pressed with the keybind.
  * `@` - Represents the Windows key must be pressed with the keybind.
  * `#` - Represents the Apps key must be pressed with the keybind.
  * `+` - Represents the Shift key must be pressed with the keybind.
{% endcapture %}
<div class="notice--info">{{ notice-keybinds | markdownify }}</div>

![moogle]({{ "/assets/images/favicon-32x32.png" | absolute_url }} "Kupo!~") **Please Note:** Not all keyboards are created equal!<br/><br/>
Not every keyboard can handle pressing multiple keys at once. This is known 'key rollover'. Higher end and newer keyboards will have 'N'-Key Rollover which means every key on the keyboard is handled separately allowing you to press as many keys as you want. But, this is not the case for all keyboards! Some only scan high-used keys separately such as the ALT/CTRL keys, the WASD keys for gaming, and some others.<br/><br/>
If you find a key combination not working, be sure that it is not due to your keyboards limits first before reporting a bug!
{: .notice--warning}

## Bindable Keys

Here is a list of all key names that are bindable within Ashita's keybind system.
```
  ESCAPE
  1
  2
  3
  4
  5
  6
  7
  8
  9
  0
  -
  =
  BACK
  TAB
  Q
  W
  E
  R
  T
  Y
  U
  I
  O
  P
  [
  ]
  RETURN
  LCONTROL
  A
  S
  D
  F
  G
  H
  J
  K
  L
  '
  '
  `
  LSHIFT
  \
  Z
  X
  C
  V
  B
  N
  M
  ,
  .
  /
  RSHIFT
  NUMPAD*
  LALT
  SPACE
  CAPITAL
  F1
  F2
  F3
  F4
  F5
  F6
  F7
  F8
  F9
  F10
  NUMLOCK
  SCROLL
  NUMPAD7
  NUMPAD8
  NUMPAD9
  NUMPAD-
  NUMPAD4
  NUMPAD5
  NUMPAD6
  NUMPAD+
  NUMPAD1
  NUMPAD2
  NUMPAD3
  NUMPAD0
  NUMPAD.
  OEM_102
  F11
  F12
  F13
  F14
  F15
  KANA
  ABNT_C1
  CONVERT
  NOCONVERT
  YEN
  ABNT_C2
  NUMPADEQUALS
  PREVTRACK
  AT
  COLON
  UNDERLINE
  KANJI
  STOP
  AX
  UNLABELED
  NEXTTRACK
  NUMPADENTER
  RCONTROL
  MUTE
  CALCULATOR
  PLAYPAUSE
  MEDIASTOP
  VOLUMEDOWN
  VOLUMEUP
  WEBHOME
  NUMPADCOMMA
  DIVIDE
  SYSRQ
  RALT
  PAUSE
  HOME
  UP
  PRIOR
  LEFT
  RIGHT
  END
  DOWN
  NEXT
  INSERT
  DELETE
  LWIN
  RWIN
  APPS
  POWER
  SLEEP
  WAKE
  WEBSEARCH
  WEBFAVORITES
  WEBREFRESH
  WEBSTOP
  WEBFORWARD
  WEBBACK
  MYCOMPUTER
  MAIL
  MEDIASELECT
  ```