# Structs
* [bot](#bot)
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
* [packet_flags](#packet_flags)


## bot
| Type | Name | Description|
|:-----|:----:|:-----------|
| String | `name` | Bot's name |
| String | `country` | Bot's flag id |
| String | `chats` | Bot's chatting data |
| Integer | `netid` | Bot's netID |
| Integer | `userid` | Bot's userID |
| Bool | `facing_left` | Is player facing left |
| Bool | `admin` | Is bot world admin |
| Bool | `owner` | Is bot world owner |
| [vec2](#vec2) | `target_pos`  | Bot's punch position |
| [vec2](#vec2) | `pos`  | Bot's position |
| [vec2](#vec2) | `tile` | Bot's tile position |
| [clothes](#clothes) | `getClothes()` | Gets bot's clothes struct |
| [player_items](#player_items) | `getInventory()` | Gets bot's inventory struct |
| [world](#world) | `getWorld()` | Gets bot's world struct |

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
| Integer | `State`               | `PacketType.State` - `0`       |
| Integer | `CallFunction`        | `PacketType.CallFunction` - `1`|
| Integer | `UpdateStatus`        | `PacketType.UpdateStatus` - `2`|
| Integer | `TileChangeRequest`   | `PacketType.TileChangeRequest` - `3`|
| Integer | `SendMapData`         | `PacketType.SendMapData` - `4` |
| Integer | `SendTileUpdateData`  | `PacketType.SendTileUpdateData` - `5`|
| Integer | `SendTileUpdateDataMultiple` | `PacketType.SendTileUpdateDataMultiple` - `6` |
| Integer | `TileActivateRequest` | `PacketType.TileActivateRequest` - `7`|
| Integer | `TileApplyDamage`     | `PacketType.TileApplyDamage` - `8`|
| Integer | `SendInventoryState`  | `PacketType.SendInventoryState` - `9`|
| Integer | `ItemActivateRequest` | `PacketType.ItemActivateRequest` - `10`|
| Integer | `ItemActivateObjectRequest` | `PacketType.ItemActivateObjectRequest` - `11` |
| Integer | `SendTileTreeState`   | `PacketType.SendTileTreeState` - `12`|
| Integer | `ModifyItemInventory` | `PacketType.ModifyItemInventory` - `13`|
| Integer | `ItemChangeObject`    | `PacketType.ItemChangeObject` - `14` |
| Integer | `SendLock`            | `PacketType.SendLock` - `15`    |
| Integer | `SendItemDatabaseData`| `PacketType.SendItemDatabaseData` - `16`|
| Integer | `SendParticleEffect`  | `PacketType.SendParticleEffect` - `17`|
| Integer | `SetIconState`        | `PacketType.SetIconState` - `18`|
| Integer | `ItemEffect`          | `PacketType.ItemEffect` - `19` |
| Integer | `SetCharacterState`   | `PacketType.SetCharacterState` - `20`|
| Integer | `PingReply`           | `PacketType.PingReply` - `21`  |
| Integer | `PingRequest`         | `PacketType.PingRequest` - `22`|
| Integer | `GotPunched`          | `PacketType.GotPunched` - `23`|
| Integer | `AppCheckResponse`    | `PacketType.AppCheckResponse` - `24`|
| Integer | `AppIntegrityFail`    | `PacketType.AppIntegrityFail` - `25`|
| Integer | `Disconnect`          | `PacketType.Disconnect` - `26`|
| Integer | `BattleJoin`          | `PacketType.BattleJoin` - `27`|
| Integer | `BattleEvent`         | `PacketType.BattleEvent` - `28`|
| Integer | `UseDoor`             | `PacketType.UseDoor` - `29`    |
| Integer | `SendParental`        | `PacketType.SendParental` - `30`|
| Integer | `GoneFishin`          | `PacketType.GoneFishin` - `31`|
| Integer | `Steam`               | `PacketType.Steam` - `32`      |
| Integer | `PetBattle`           | `PacketType.PetBattle` - `33`  |
| Integer | `NPC`                 | `PacketType.NPC` - `34`        |
| Integer | `Special`             | `PacketType.Special` - `35`    |
| Integer | `SendParticleEffectV2`| `PacketType.SendParticleEffectV2` - `36` |
| Integer | `ActiveArrowToItem`   | `PacketType.ActiveArrowToItem` - `37`|
| Integer | `SelectTileIndex`     | `PacketType.SelectTileIndex` - `38`|
| Integer | `SendPlayerTributeData`| `PacketType.SendPlayerTributeData` - `39` |
| Integer | `SetQuickSlotItem`    | `PacketType.SetQuickSlotItem` - `40`|
| Integer | `PvENPC`              | `PacketType.PvENPC` - `41`    |
| Integer | `PvPCardBattleEvent`  | `PacketType.PvPCardBattleEvent` - `42`|
| Integer | `PvEPlayerDamage`     | `PacketType.PvEPlayerDamage` - `43`|
| Integer | `PvENPCState`         | `PacketType.PvENPCState` - `44`|
| Integer | `SetExtraMods`        | `PacketType.SetExtraMods` - `45`|
| Integer | `OnStepOnTileMod`     | `PacketType.OnStepOnTileMod` - `46`|

## packet_flags
| Value    | Name                  | Description                    |
|:--------:|:---------------------:|:-------------------------------|
| Integer  | `none`                | `PacketFlag.none` - `0`        |
| Integer  | `unk_0x1`             | `PacketFlag.unk_0x1` - `1`     |
| Integer  | `unk_0x2`             | `PacketFlag.unk_0x2` - `2`     |
| Integer  | `spawn`               | `PacketFlag.spawn` - `4`      |
| Integer  | `extended`            | `PacketFlag.extended` - `8`   |
| Integer  | `flipped`             | `PacketFlag.flipped` - `16`   |
| Integer  | `standing`            | `PacketFlag.standing` - `32`  |
| Integer  | `solid`               | `PacketFlag.solid` - `32`     |
| Integer  | `unk22`               | `PacketFlag.unk22` - `34`     |
| Integer  | `fire_damage`         | `PacketFlag.fire_damage` - `64`|
| Integer  | `jump`                | `PacketFlag.jump` - `128`     |
| Integer  | `got_killed`          | `PacketFlag.got_killed` - `256`|
| Integer  | `punch`               | `PacketFlag.punch` - `512`    |
| Integer  | `ghost_jump`          | `PacketFlag.ghost_jump` - `767`|
| Integer  | `place`               | `PacketFlag.place` - `1024`   |
| Integer  | `tile_change`         | `PacketFlag.tile_change` - `2048`|
| Integer  | `punching`            | `PacketFlag.punching` - `2592`|
| Integer  | `idk2560`             | `PacketFlag.idk2560` - `2560`  |
| Integer  | `idk2576`             | `PacketFlag.idk2576` - `2576`  |
| Integer  | `idk2592`             | `PacketFlag.idk2592` - `2592`  |
| Integer  | `idk2608`             | `PacketFlag.idk2608` - `2608`  |
| Integer  | `idk2688`             | `PacketFlag.idk2688` - `2688`  |
| Integer  | `idk2704`             | `PacketFlag.idk2704` - `2704`  |
| Integer  | `idk3072`             | `PacketFlag.idk3072` - `3072`  |
| Integer  | `got_punched`         | `PacketFlag.got_punched` - `4096`|
| Integer  | `respawn`             | `PacketFlag.respawn` - `8192`  |
| Integer  | `object_collect`      | `PacketFlag.object_collect` - `16384`|
| Integer  | `trampoline`          | `PacketFlag.trampoline` - `32768`|
| Integer  | `damage`              | `PacketFlag.damage` - `65536` |
| Integer  | `slide`               | `PacketFlag.slide` - `131072` |
| Integer  | `parasol`             | `PacketFlag.parasol` - `262144`|
| Integer  | `unk_0x80000`         | `PacketFlag.unk_0x80000` - `524288`|
| Integer  | `swim`                | `PacketFlag.swim` - `1048576` |
| Integer  | `wall_hang`           | `PacketFlag.wall_hang` - `2097152`|
| Integer  | `power_up_punch_start`| `PacketFlag.power_up_punch_start` - `4194304`|
| Integer  | `power_up_punch_end`  | `PacketFlag.power_up_punch_end` - `8388608`|
| Integer  | `unk_0x1000000`       | `PacketFlag.unk_0x1000000` - `16777216`|
| Integer  | `unk_0x2000000`       | `PacketFlag.unk_0x2000000` - `33554432`|
| Integer  | `on_acid_damage`      | `PacketFlag.on_acid_damage` - `67108864`|
| Integer  | `unk_0x8000000`       | `PacketFlag.unk_0x8000000` - `134217728`|
| Integer  | `acid_damage`         | `PacketFlag.acid_damage` - `268435456`|
