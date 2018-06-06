---
permalink: /plugins/servo
title: Servo
---

**Author:** bluekirby0 & atom0s<br/>
**Link:** [http://git.ashita.atom0s.com/Plugins/Servo](http://git.ashita.atom0s.com/Plugins/Servo)

Allows you to send commands to multiple other characters on the local computer from a single character.

Servo has been replaced by [MultiSend](/plugins/MultiSend)! You should only use Servo if you still need network connections for multiple characters. Otherwise, MultiSend should be used instead.
{: .notice--warning}

## Features

  * Multiple character control with ease.
  * Control characters across a network or internet.

## Commands

### servo
Syntax:
```
/servo on [addr]
/servo off
/servo sync [addr]
/servo command <cmd>
/servo send <cmd>
/servo sendto <cmd>
/servo followme [on|off]
/servo follow [on|off]
/servo addgroup <group>
/servo delgroup <group>
```
  * Starts Servo, optionally with an address to bind to.
  * Stops Servo.
  * Starts Servo in client mode, connecting it to the given address.
  * Sends a command to connected clients.
  * Sends a command to a specific client.
  * Tells connected clients to follow the Servo host. (Or toggles the follow mode on/off.)
  * Tells connected clients to follow the Servo host.
  * Adds a group.
  * Deletes a group.