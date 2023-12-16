# Structs
* [bot](#bot)
* [local](#local)
* [world](#world)
* [npc](#npc)
* [net_avatar](#net_avatar)
* [world_tile_map](#world_tile_map)
* [world_object_map](#world_object_map)
* [clothes](#clothes)
* [inventory_item](#inventory_item)
* [player_items](#player_items)
* [item](#item)
* [item_info](#item_info)
* [vec2](#vec2)
* [vec3](#vec3)
* [tile](#tile)
* [object](#object)
* [boolypes](#boolypes)
* [GamePacket](#gamepacket)
* [variant_list](#variant_list)
* [tile_extra](#tile_extra)
* [packet_types](#packet_types)


## bot
| Type | Name | Description|
|:-----|:----:|:-----------|
| [local](#local) | `getLocal()` | Gets local struct |
| [world](#world) | `getWorld()` | Gets world struct |
| [player_items](#player_items) | `getInventory()` | Gets inventory struct |
| [boolypes](#boolypes) | `set_bool(boolypes, boolean true/false)` | Sets boolypes true/false |

## local
| Type | Name | Description|
|:-----|:----:|:-----------|
| String | `name` | Player's name |
| String | `country` | Player's flag id |
| String | `platform` | Player's platform (IOS/WINDOWS/ANDROID) |
| String | `chats` | Player's chatting data |
| Integer | `netid` | Player's netID |
| Integer | `userid` | Player's userID |
| Bool | `facing_left` | Is player facing left |
| Bool | `admin` | Is player world admin |
| Bool | `owner` | Is player world owner |
| [vec2](#vec2) | `target_pos`  | Player's punch position |
| [vec2](#vec2) | `pos`  | Player's position |
| [vec2](#vec2) | `tile` | Player's tile position |
| [clothes](#clothes) | `getClothes()` | Gets clothes struct |
| [player_items](#player_items) | `getInventory()` | Gets inventory struct |

## world
| Type | Name | Description|
|:-----|:----:|:-----------|
| String | `name` | World's name |
| Integer | `owner_id` | World owner's userid |
| String | `owner_name` | World owner's name |
| Bool | `connected` | Is connected to world |
| Bool | `access` | Is player world access |
| Integer | `getPlayersCount()` | World player's count |
| [npc](#npc) | `getNpcs()` | Gets world ghosts |
| [net_avatar](#net_avatar) | `getPlayers()` | Gets world players |
| [worldile_map](#worldile_map) | `getTileMap()` | Gets world tile_map struct |
| [world_object_map](#world_object_map) | `getObjectMap()` | Gets world object_map struct |

## npc
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `id` | npc id |
| Integer | `type` | npc type |
| [vec2](#vec2) | `pos`  | npc's position |
| [vec2](#vec2) | `targetpos`  | npc's target position |

## net_avatar
| Type | Name | Description|
|:-----|:----:|:-----------|
| String | `name` | Player's name |
| String | `country` | Player's flag id |
| String | `platform` | Player's platform (IOS/WINDOWS/ANDROID) |
| String | `chats` | Player's chatting data |
| Integer | `netid` | Player's netID |
| Integer | `userid` | Player's userID |
| Bool | `facing_left` | Is player facing left |
| Bool | `admin` | Is player world admin |
| Bool | `owner` | Is player world owner |
| Bool | `invis` | Is player invis |
| Bool | `mod` | Is player mod |
| [vec2](#vec2) | `target_pos`  | Player's punch position |
| [vec2](#vec2) | `pos`  | Player's position |
| [vec2](#vec2) | `tile` | Player's tile position |
| [clothes](#clothes) | `getClothes()` | Gets clothes struct |

## world_tile_map
| Type | Name | Description|
|:-----|:----:|:-----------|
| [vec2](#vec2) | `size` | World size |
| Integer | `count` | World tile count |
| [tile](#tile) | `getTiles()` | Gets tiles |
| [tile](#tile) | `getTile(Integer id)` | Gets tile |

## world_object_map
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `count` | Object count |
| Integer | `drop_id` | Object map latest drop_id |
| [object](#object) | `getObjects()` | Gets objects |
| [object](#object) | `getObject(vec2 tile)` | Gets object |
| [object](#object) | `getObject(Integer x, Integer y)` | Gets object |
| [object](#object) | `getObject(Integer oid)` | Gets object |
| [object](#object) | `getObject(Integer id)` | Gets object |

## clothes
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `hat` | Player's hat |
| Integer | `shirt` | Player's shirt |
| Integer | `pant` | Player's pant |
| Integer | `feet` | Player's feet |
| Integer | `face` | Player's face |
| Integer | `hand` | Player's hand |
| Integer | `wing` | Player's wing |
| Integer | `hair` | Player's hair |
| Integer | `chest` | Player's chest |
| Integer | `skin` | Player's skin |
| Integer | `artifact` | Player's artifact |
| String | `transmutate` | Player's transmutate |
| [vec3](#vec3) | `role_skin`  | Player's role_skin |

## inventory_item
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `id` | Item id |
| Integer | `count or amount` | Item count |
| Bool | `wearing` | true/false |
| Bool | `wearable` | true/false |

## player_items
| Type | Name | Description|
|:-----|:----:|:-----------|
| Bool | `itemExist(Integer id)` | Is item exist |
| Integer | `getItemCount(Integer id or String name) or findItem(Integer id or String name)`| Returns the InventoryItem count with the specified item ID. It returns 0 if not found. |
| [inventory_item](#inventory_item) | `can_collect(Integer id) -> boolean` | Returns true if the player can collect the item with the specified item ID, false otherwise. |
| [inventory_item](#inventory_item) | `getItems()` | Returns a table containing all the inventory_item objects in the inventory. |
| [inventory_item](#inventory_item) | `getItem(Integer id)` | Returns the inventory_item with the specified item ID. It returns nil if not found. |

## vec2
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `x` | Position x |
| Integer | `y` | Position y |

## vec3
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `x` | Position x |
| Integer | `y` | Position y |
| Integer | `z` | Position z |

## tile
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `foreground` | Tile foreground |
| Integer | `background` | Tile background |
| Integer | `parentile` | Tile parentile |
| Integer | `flag` | Tile flag |
| Integer | `lock_parentile` | Tile lock_parentile |
| [vec2](#vec2) | `pos` | Tile's position |
| [tile_extra](#tile_extra) | `getTileExtra()` | Gets tile extra |

## object
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `id` | Object's id |
| Integer | `count or amount` | Object's count |
| Integer | `flags` | Object's flags |
| Integer | `oid` | Object's oid |
| [vec2](#vec2) | `pos` | Object's position |
| [vec2](#vec2) | `tile_pos` | Object's tile position |

## boolypes
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `AA` | AA |
| Integer | `BB` | BB |

## GamePacket
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `type` | Packet type |
| Integer | `objtype` | Packet object type |
| Integer | `count1 ` | Packet count1 |
| Integer | `count2 ` | Packet count2 |
| Integer | `netid ` | Packet netid |
| Integer | `item ` | Packet item |
| Integer | `flags ` | Packet flags |
| Integer | `float1` | Packet float1 |
| Integer | `int_data` | Packet int_data |
| [vec2f](#vec2f) | `pos` | Packet pos |
| [vec2f](#vec2f) | `pos2` | Packet pos2 |
| Integer | `float2` | Packet float2 |
| [vec2i](#vec2i) | `tile` | Packet tile |

## variant_list
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `netid` | NetID |
| Integer | `delay` | Delay |
| String | `[0]` | Variant function name |
| Any | `[1]` | Param 1 |
| Any | `[2]` | Param 2 |
| Any | `[3]` | Param 3 |
| Any | `[4]` | Param 4 |
| Any | `[5]` | Param 5 |

## item
| Type | Name | Description|
|:-----|:----:|:-----------|
| String | `name` | Item name |
| Integer | `id` | Item ID |
| Integer | `rarity` | Item rarity |
| Integer | `growtime` | Item growtime |
| Integer | `breakhits` | Item breakhits |
| Integer | `clothingtype` | Item clothingtype |
| Integer | `collisiontype` | Item collisionType |

## item_info
| Type | Name | Description|
|:-----|:----:|:-----------|
| [item](#item) | `getItemInfo(Integer id or String name) or getInfo(Integer id or String name)` | Gets item by id and name |
true/false |

## tile_extra
| Type | Name | Description|
|:-----|:----:|:-----------|
| Table | `Door` | Returns table tile extra door |
| Table | `Sign` | Returns table tile extra sign |
| Table | `Lock` | Returns table tile extra lock |
| Table | `Seed` | Returns table tile extra seed |
| Table | `Dice` | Returns table tile extra dice |
| Table | `Display_Block` | Returns table tile extra display block |
| Table | `Vending` | Returns table tile extra vending |

## packet_types
| Type    | Name                  | Description                    |
|:-------:|:---------------------:|:-------------------------------|
| Integer | `State`               | `PacketType.State` - `0`             |
| Integer | `CallFunction`        | `PacketType.CallFunction`      |
| Integer | `UpdateStatus`        | `PacketType.UpdateStatus`      |
| Integer | `TileChangeRequest`   | `PacketType.TileChangeRequest` |
| Integer | `SendMapData`         | `PacketType.SendMapData`       |
| Integer | `SendTileUpdateData`  | `PacketType.SendTileUpdateData`|
| Integer | `SendTileUpdateDataMultiple` | `PacketType.SendTileUpdateDataMultiple` |
| Integer | `TileActivateRequest` | `PacketType.TileActivateRequest`|
| Integer | `TileApplyDamage`     | `PacketType.TileApplyDamage`   |
| Integer | `SendInventoryState`  | `PacketType.SendInventoryState`|
| Integer | `ItemActivateRequest` | `PacketType.ItemActivateRequest`|
| Integer | `ItemActivateObjectRequest` | `PacketType.ItemActivateObjectRequest` |
| Integer | `SendTileTreeState`   | `PacketType.SendTileTreeState` |
| Integer | `ModifyItemInventory` | `PacketType.ModifyItemInventory` |
| Integer | `ItemChangeObject`    | `PacketType.ItemChangeObject`  |
| Integer | `SendLock`            | `PacketType.SendLock`           |
| Integer | `SendItemDatabaseData`| `PacketType.SendItemDatabaseData`|
| Integer | `SendParticleEffect`  | `PacketType.SendParticleEffect` |
| Integer | `SetIconState`        | `PacketType.SetIconState`       |
| Integer | `ItemEffect`          | `PacketType.ItemEffect`         |
| Integer | `SetCharacterState`   | `PacketType.SetCharacterState`  |
| Integer | `PingReply`           | `PacketType.PingReply`          |
| Integer | `PingRequest`         | `PacketType.PingRequest`        |
| Integer | `GotPunched`          | `PacketType.GotPunched`         |
| Integer | `AppCheckResponse`    | `PacketType.AppCheckResponse`   |
| Integer | `AppIntegrityFail`    | `PacketType.AppIntegrityFail`   |
| Integer | `Disconnect`          | `PacketType.Disconnect`         |
| Integer | `BattleJoin`          | `PacketType.BattleJoin`         |
| Integer | `BattleEvent`         | `PacketType.BattleEvent`        |
| Integer | `UseDoor`             | `PacketType.UseDoor`            |
| Integer | `SendParental`        | `PacketType.SendParental`       |
| Integer | `GoneFishin`          | `PacketType.GoneFishin`         |
| Integer | `Steam`               | `PacketType.Steam`              |
| Integer | `PetBattle`           | `PacketType.PetBattle`          |
| Integer | `NPC`                 | `PacketType.NPC`                |
| Integer | `Special`             | `PacketType.Special`            |
| Integer | `SendParticleEffectV2`| `PacketType.SendParticleEffectV2` |
| Integer | `ActiveArrowToItem`   | `PacketType.ActiveArrowToItem`  |
| Integer | `SelectTileIndex`     | `PacketType.SelectTileIndex`    |
| Integer | `SendPlayerTributeData`| `PacketType.SendPlayerTributeData` |
| Integer | `SetQuickSlotItem`    | `PacketType.SetQuickSlotItem`   |
| Integer | `PvENPC`              | `PacketType.PvENPC`             |
| Integer | `PvPCardBattleEvent`  | `PacketType.PvPCardBattleEvent` |
| Integer | `PvEPlayerDamage`     | `PacketType.PvEPlayerDamage`    |
| Integer | `PvENPCState`         | `PacketType.PvENPCState`        |
| Integer | `SetExtraMods`        | `PacketType.SetExtraMods`       |
| Integer | `OnStepOnTileMod`     | `PacketType.OnStepOnTileMod`    |
