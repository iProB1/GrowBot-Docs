* discord = https://discord.gg/tEZ49jPkfx

"probably project finish this week"

# POFWARE Documentation
* [Structs](#structs)
* [Functions](#functions)
* [Hooks](#hooks)

## changelogs

- nothing for now

## Structs
* [Vector2](#vector2)
* [Vector3](#vector3)
* [NetAvatar](#netavatar)
* [WorldObject](#worldobject)
* [InventoryItem](#inventoryitem)
* [Tile](#tile)
* [GamePacket](#gamepacket)
* [VariantList](#variantlist)
* [ItemInfo](#iteminfo)

## Vector2
| Type | Name | Description|
|:-----|:----:|:-----------|
| Number | `x` | Position x |
| Number | `y` | Position y |

## Vector3
| Type | Name | Description|
|:-----|:----:|:-----------|
| Number | `x` | Position x |
| Number | `y` | Position y |
| Number | `z` | Position z |

## NetAvatar
| Type | Name | Description|
|:-----|:----:|:-----------|
| String | `name` | Player's name |
| String | `country` | Player's flag id |
| [Vector2](#vector2) | `pos`  | Player's position |
| [Vector2](#vector2) | `tile` | Player's tile position |
| [Vector2](#vector2) | `size` | Player's size |
| Number | `netid` | Player's netID |
| Number | `userid` | Player's userID |
| Bool | `facing_left` | Is player facing left |

## WorldObject
| Type | Name | Description|
|:-----|:----:|:-----------|
| Number | `id` | Object's item ID |
| Number | `oid` | Object's index |
| [Vector2](#vector2) | `pos` | Object's position |
| Number | `count` | Object's item count |
| Number | `flags` | Object's flags |
 
## InventoryItem
| Type | Name | Description|
|:-----|:----:|:-----------|
| Number | `id` | Item's ID |
| Number | `count` | Item count |

## Tile
| Type | Name | Description|
|:-----|:----:|:-----------|
| Number | `fg` | Foreground block's ID |
| Number | `bg` | Background block's ID |
| [Vector2](#vector2) | `pos` |Tile's position |
| Number | `flags` | Tile's flags |

## GamePacket
| Type | Name | Description|
|:-----|:----:|:-----------|
| Number | `type` | Packet type |
| Number | ` objtype` |  |
| Number | `count1 ` |  |
| Number | `count2 ` |  |
| Number | `netid ` | Packet netID |
| Number | `item ` |  |
| Number | `flags ` | Packet flags |
| Number | `float1` |  |
| Number | `int_data` |  |
| Number | `posx` |  |
| Number | `posy` |  |
| Number | `pos2x` |  |
| Number | `pos2y` |  |
| Number | `float2` |  |
| Number | `intx` |  |
| Number | `inty` |  |

## VariantList
| Type | Name | Description|
|:-----|:----:|:-----------|
| Number | `netid` | NetID |
| Number | `delay` | Delay |
| String | `[0]` | Variant function name |
| Any | `[1]` | Param 1 |
| Any | `[2]` | Param 2 |
| Any | `[3]` | Param 3 |
| Any | `[4]` | Param 4 |
| Any | `[5]` | Param 5 |

## ItemInfo
| Type | Name | Description|
|:-----|:----:|:-----------|
| String | `name` | Item name |
| Number | `id` | Item ID |
| Number | `rarity` | Item rarity |
| Number | `growtime` | Item growtime |
| Number | `breakhits` | Item breakhits |

## Functions
* [SendPacket](#sendpacket)
* [SendPacketRaw](#sendpacketraw)
* [SendVarlist](#sendvarlist)
* [LogToConsole](#logtoconsole)
* [FindPath](#findpath)
* [GetLocal](#getlocal)
* [GetInventory](#getinventory)
* [GetPlayers](#getplayers)
* [GetObjects](#getobjects)
* [GetTile](#gettile)
* [GetTiles](#gettiles)


## SendPacket
`SendPacket(int type, string packet)`

Sends text packet with selected type to client or server, if client is set to true then it sends to client and if its false it sends to server.

Example:
```lua
-- Sends respawn packet to server
SendPacket(2, "action|respawn")
```

## SendPacketRaw
`SendPacketRaw(bool client, GamePacket packet)`

Sends [GamePacket](#gamepacket) to server or client, if client is set to true then it sends to client and if its false it sends to server.

Example:
```lua
-- Sends wear clothing packet to server
packet = {}
packet.type = 10 
packet.int_data = 48 -- Clothing ID (Jeans)
SendPacketRaw(false, packet)
```
## SendVarlist
`SendVarlist(Variantlist varlist)`

Sends [Variantlist](#variantlist) to client

Example:
```lua
-- Sends OnConsoleMessage to client
varlist = {}
varlist[0] = "OnConsoleMessage" -- Function name
varlist[1] = "Hello!" -- Param 1
SendVarlist(varlist)
```

## LogToConsole
`Log(string message)`

Logs message to Growtopias console (only client side)

Example:
```lua
-- Logs "Hello!" to Growtopias console
LogToConsole("Hello!")
```

## FindPath
`FindPath(int x, int y)`

Finds path to selected x,y

Example:
```lua
-- Finds path to top left corner of the world
FindPath(0, 0)
```

## GetLocal
`GetLocal()`

Returns local [NetAvatar](#netavatar) struct

Example:
```lua
-- Logs local players name
me = GetLocal()
log(me.name)
```

## GetInventory
`GetInventory()`

Returns table of [InventoryItems](#inventoryitem)

Example:
```lua
-- Logs all item ids in your inventory
for _,itm in pairs(GetInventory()) do
log(itm.id)
end
```

## GetPlayers
`GetPlayers()`

Returns table of [NetAvatars](#netavatar)

Example:
```lua
-- Logs current worlds players names
for _,player in pairs(GetPlayers()) do
log(player.name)
end
```

## GetObjects
`GetObjects()`

Returns table of [WorldObjects](#worldobject)

Example:
```lua
-- Logs current worlds objects item id's
for _,obj in pairs(GetObjects()) do
log(obj.id)
end
```

## GetTile
`GetTile(int x, int y)`

Returns world [Tile](#tile) in selected position

Example:
```lua
-- Logs top left corners foreground block id
tile = GetTile(0, 0)
log(tile.fg)
```

## GetTiles
`GetTiles()`

Returns table of [Tiles](#tile)

Example:
```lua
-- Logs current worlds all foreground block id's
for _,tile in pairs(GetTiles()) do
log(tile.fg)
end
```

## Hooks
* [Usage](#usage)
* [Types](#types)
* [Examples](#examples)

If you return true in hook it wont execute the packet

## Usage
### AddHook
`AddHook(string type, string name, function)`

Hooks selected function to selected [hook type](#types)

### RemoveHook
`RemoveHook(string)`

Removes hook with selected name

### RemoveHooks
`RemoveHooks()`

Removes all hooks

## Types

`OnVarlist`
Arguments: (VariantList varlist)

## Examples

### OnVarlist
```lua
-- Blocks all dialogs
function hook(varlist)
if varlist[0]:find("OnDialogRequest") then
return true
end
end

AddHook("OnVarlist", "example_hook", hook)
```

