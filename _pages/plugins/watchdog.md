---
permalink: /plugins/watchdog
title: WatchDog
---

**Author:** atom0s<br/>
**Link:** [http://git.ashitaxi.com/Plugins/WatchDog](http://git.ashitaxi.com/Plugins/WatchDog)

WatchDog allows users to wide-scan track anything in a zone easily via slash commands.

## Features

  * Adds widescan tracking for any entity in a zone.
  * Allows any job to widescan even if they are not usually able to.

## Commands

### watchdog
Syntax:
```
/watchdog refresh
/watchdog find <name>
/watchdog track <id>
```
  * Refreshes WatchDogs internal list of the current zones entities from its DAT file.
  * Finds all entities within the current zone with the given name. (Matches partials.)
  * Tracks a mob by its id. (To get ids, use the /watchdog find command first.)