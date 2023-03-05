# Auth

## login


```lua
function Auth.login(credential: table, remove: boolean, delay: number, force: boolean)
```


Login a bot using credential and with fail-safe and safe-delays
to avoid error connection.


---

@*param* `credential` — The credential for the bot

@*param* `remove` — Whether remove or not before connecting the bot

@*param* `delay` — Delay after bot is succesfully logged in and online into the server

@*param* `force` — Force the waiting process to `online` status

## reconnect


```lua
function Auth.reconnect(limit: number, time: number, spam: boolean)
```


Reconnect bot authentication to server, with advance reconnect function
and good delaying using modulo.


---

@*param* `limit` — Limiter for connecting purpose

@*param* `time` — Time in minutes to time

@*param* `spam` — Whether to spam connect to bypass overload or not


---

# BoolType

```lua
{
    SELECT_ALL: string = Select All,
    GUEST_ACCOUNT: string = Guest Account,
    EXTERNAL: string = External,
    AUTO_ACCESS: string = Auto Access,
    AUTO_RECONNECT: string = Auto Reconnect,
    AUTO_LEAVE: string = Auto Leave,
    IGNORE_GEMS: string = Ignore Gems,
}
```


---

# BoolType.AUTO_ACCESS


---

# BoolType.AUTO_LEAVE


---

# BoolType.AUTO_RECONNECT


---

# BoolType.EXTERNAL


---

# BoolType.GUEST_ACCOUNT


---

# BoolType.IGNORE_GEMS


---

# BoolType.SELECT_ALL


---

# DateUtils

## nowIso


```lua
function DateUtils.nowIso()
  -> string
```


Get formatted date now in ISO8601 timestamp format, useful
for discord embed(s) timestamp.

@*return* —  Formatted date in ISO8601 timestamp format


---

# Error

```lua
{
    VALUE_MISMATCH: string = [%s] got: %s,
    TYPE_MISMATCH: string = [%s] got: %s, expected: %s,
}
```


---

# Error.TYPE_MISMATCH


---

# Error.VALUE_MISMATCH


---

# InventoryHandler

## drop


```lua
function InventoryHandler.drop(item_id: number, item_count: number)
```


Advanced version of dropping an item and is different from asakin's method, this function
could determine how much the bot will drop the item, also forcing them without hooks. 
Also included left side dropping, which is good for dropping item centerly to a tile.


---

@*param* `item_id` — The item id to trash

@*param* `item_count` — The item count to trash


---

# NumberUtils

## format


```lua
function NumberUtils.format(number: number)
  -> string
```


Format an number so it's easier to read.

Example: `21620` will be formatted to `21.62k`

@*param* `number` — to format

@*return* —  Formatted number

## nformat


```lua
function NumberUtils.nformat(number: number)
  -> string
```


Neat format, place dots across a serial of numbers.

@*param* `number` — The number to format

@*return* —  Formatted number


---

# Packet

```lua
{
    JOIN_WORLD: string = action|join_request
name|%s
invitedWorld|0,
    DROP_DIALOG: string = action|drop
|itemID|%d,
    DROP_OK: string = action|dialog_return
dialog_name|drop_item
itemID|%d|
count|%d,
}
```


---

# Packet.DROP_DIALOG


---

# Packet.DROP_OK


---

# Packet.JOIN_WORLD


---

# PacketHandler

## collect


```lua
function PacketHandler.collect(oid: number, x: number, y: number)
  -> boolean
```


Take the specific item dropped on the ground using `sendPacketRaw`,
thus the item collection won't interfere with any dropped items nearby.

@*param* `oid` — The item oid, get them by using `getObjects()->oid`

@*param* `x` — The item x position, relative not tile position.

@*param* `y` — The item y position, relative not tile position.

@*return* —  Whether the item collected or not collected.


---

# StatusHandler

## getStatus


```lua
function StatusHandler.getStatus(name: string|nil)
  -> string
```


Get the current bot status, sanitize it and will return `offline`
if it fails to retreive the status.


---

@*param* `name` —  The bot name to check the status for

@*return* —  The bot status

## isOnline


```lua
function StatusHandler.isOnline(name: string|nil, status: string)
  -> boolean
```


Check whether the bot is online or not based on the status given
if it equals `online`.


---

@*param* `name` — The bot name to check for the status

@*param* `status` — Status if there is any to check

@*return* —  Whether the bot status is matches or not


---

# TableUtils

## contains


```lua
function TableUtils.contains(table_value: table, object: any)
  -> boolean
```


Check whether a table contains an element or not.

@*param* `table_value` — Designated table to check

@*param* `object` — Designated object to search for

@*return* —  Whether the table contains object or not


---

# TileHandler

## get


```lua
function TileHandler.get()
  -> number|nil
  2. number|nil
```


Get tile x and y of current bot x, y position

@*return* —  Tile x, y position or nil

## getx


```lua
function TileHandler.getx()
  -> number|nil
```


Get tile x of current bot x position.

@*return* —  Tile x position or nil

## gety


```lua
function TileHandler.gety()
  -> number|nil
```


Get tile y of current bot x position.

@*return* —  Tile y position or nil

## isWhiteDoor


```lua
function TileHandler.isWhiteDoor()
  -> boolean
```


Check whether the current tile the bot standing is an white
door or not.

@*return* —  Whether the bot is on front of white door or not


---

# WorldHandler

## getWorld


```lua
function WorldHandler.getWorld()
  -> string
```


Get the current bot world name, sanitize it and it will return `unknown`
if it fails to retreive the world name.

@*return* —  The current bot world name

## isInside


```lua
function WorldHandler.isInside(world: string)
  -> boolean
```


Check whether the current bot world name equals the world parameter
given within the function.

@*param* `world` — The designated world to compare to the current bot world name

@*return* —  Whether the current bot world equal the world parameter given

## warp


```lua
function WorldHandler.warp(world: string, id: string, limit_tries: number, after_tries: number, delay_after: number)
  -> boolean
```


Makes bot join the designated world and door id if param id is filled,
with advanced delays and dynamic checks.


---

@*param* `world` — The designated world to join into

@*param* `id` — The designated door id to go into inside the world after succesfully warped

@*param* `limit_tries` — Limiter for warp tries

@*param* `after_tries` — Try to warp after x tries

@*param* `delay_after` — Delay after succesfully warped

@*return* —  Whether the bot succesfully warped into the door and inside the world.


---

# saraCore


### saraCore

***

Made by junssekut#4964, also some other contributors, see below.

Copyright saraCore (c) Machseeman 2023, this script source is not for public and won't be accessable
for any other person than me (junssekut#4964) and the people that contributed to this script.


## AssertUtils


```lua
table
```

## Auth


```lua
Auth
```

## Date


```lua
unknown
```

## DateUtils


```lua
DateUtils
```

## InventoryHandler


```lua
InventoryHandler
```

## ItemDatabase


```lua
unknown
```

## Json


```lua
unknown
```

## NumberUtils


```lua
NumberUtils
```

## PacketHandler


```lua
PacketHandler
```

## StatusHandler


```lua
StatusHandler
```

## TableUtils


```lua
TableUtils
```

## TileHandler


```lua
TileHandler
```

## WorldHandler


```lua
WorldHandler
```