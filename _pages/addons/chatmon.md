---
permalink: /addons/chatmon/
title: ChatMon
---

**Author:** atom0s<br/>
**Link:** [https://git.ashitaxi.com/Addons/chatmon](https://git.ashitaxi.com/Addons/chatmon)

Monitors chat and plays sounds when certain events and conditions are met.

## Features

  * Monitors chat and will play a sound if one of the following happens:
    * Player gets a tell.
    * Player gets a tell from a GM.
    * Player gets a linkshell message that contains their name.
    * Player gets a party message that contains their name.
    * Player gets a say message that contains their name.
    * Player gets a party invite.
    * Player gets an emote from another player targeting them.
    * Player is examined.
    * Player receives a skillup.
    * Player's inventory is full.
    
## Commands

### chatmon
Syntax:
```
/chatmon mute <category>
/chatmon enable <category>
```
  * Disables / mutes a category from playing a sound.
  * Enables / unmutes a category allowing it to play sounds again.

### Valid Categories

  * tell
  * gmtell
  * linkshell
  * party
  * say
  * invite
  * emote
  * examined
  * skillup
  * inventory
