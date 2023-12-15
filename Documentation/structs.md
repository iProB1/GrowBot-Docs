# Structs
* [bot_t](#bot_t)
* [local_t](#local_t)
* [world_t](#world_t)
* [npc_t](#npc_t)
* [net_avatar_t](#net_avatar_t)
* [world_tile_map_t](#world_tile_map_t)
* [world_object_map_t](#world_object_map_t)
* [clothes_t](#clothes_t)
* [inventory_item_t](#inventory_item_t)
* [player_items_t](#player_items_t)
* [item_t](#item_t)
* [item_info_t](#item_info_t)
* [vec2](#vec2)
* [vec3](#vec3)
* [tile_t](#tile_t)
* [object_t](#object_t)
* [bool_types](#bool_types)
* [GamePacket](#gamepacket)
* [variant_list](#variant_list)
* [tile_extra_t](#tile_extra_t)


## bot_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| [local_t](#local_t) | `getLocal()` | Gets local struct |
| [world_t](#world_t) | `getWorld()` | Gets world struct |
| [player_items_t](#player_items_t) | `getInventory()` | Gets inventory struct |
| [bool_types](#bool_types) | `set_bool(bool_types, boolean true/false)` | Sets bool_types true/false |

## local_t
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
| [vec2](#vec2) | `punchpos`  | Player's punch position |
| [vec2](#vec2) | `pos`  | Player's position |
| [vec2](#vec2) | `tile` | Player's tile position |
| [clothes_t](#clothes_t) | `getClothes()` | Gets clothes struct |
| [player_items_t](#player_items_t) | `getInventory()` | Gets inventory struct |

## world_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| String | `name` | World's name |
| Integer | `country` | World owner's userid |
| String | `owner_name` | World owner's name |
| Bool | `connected` | Is connected to world |
| Integer | `players_count` | World player's count |
| Integer | `userid` | Player's userID |
| Bool | `access` | Is player world access |
| [npc_t](#npc_t) | `getNpcs()` | Gets world ghosts |
| [net_avatar_t](#net_avatar_t) | `getPlayers()` | Gets world players |
| [world_tile_map_t](#world_tile_map_t) | `getTileMap()` | Gets world tile_map struct |
| [world_object_map_t](#world_object_map_t) | `getObjectMap()` | Gets world object_map struct |

## npc_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `id` | npc id |
| Integer | `type` | npc type |
| [vec2](#vec2) | `pos`  | npc's position |
| [vec2](#vec2) | `targetpos`  | npc's target position |

## net_avatar_t
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
| [vec2](#vec2) | `punchpos`  | Player's punch position |
| [vec2](#vec2) | `pos`  | Player's position |
| [vec2](#vec2) | `tile` | Player's tile position |
| [clothes_t](#clothes_t) | `getClothes()` | Gets clothes struct |

## world_tile_map_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| [vec2](#vec2) | `size` | World size |
| Integer | `count` | World tile count |
| [tile_t](#tile_t) | `getTiles()` | Gets tiles |
| [tile_t](#tile_t) | `getTile(Integer id)` | Gets tile |

## world_object_map_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `count` | Object count |
| Integer | `drop_id` | Object map latest drop_id |
| [object_t](#object_t) | `getObjects()` | Gets objects |
| [object_t](#object_t) | `getObject(vec2 tile)` | Gets object |
| [object_t](#object_t) | `getObject(Integer x, Integer y)` | Gets object |
| [object_t](#object_t) | `getObject(Integer oid)` | Gets object |
| [object_t](#object_t) | `getObject(Integer id)` | Gets object |

## clothes_t
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

## inventory_item_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `id` | Item id |
| Integer | `count or amount` | Item count |
| Bool | `wearing` | true/false |
| Bool | `wearable` | true/false |

## player_items_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| Bool | `itemExist(Integer id)` | Is item exist |
| Integer | `getItemCount(Integer id or String name) or findItem(Integer id or String name)`| Returns the InventoryItem count with the specified item ID. It returns 0 if not found. |
| [inventory_item_t](#inventory_item_t) | `can_collect(Integer id) -> boolean` | Returns true if the player can collect the item with the specified item ID, false otherwise. |
| [inventory_item_t](#inventory_item_t) | `getItems()` | Returns a table containing all the inventory_item_t objects in the inventory. |
| [inventory_item_t](#inventory_item_t) | `getItem(Integer id)` | Returns the inventory_item_t with the specified item ID. It returns nil if not found. |

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

## tile_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `foreground` | Tile foreground |
| Integer | `background` | Tile background |
| Integer | `parent_tile` | Tile parent_tile |
| Integer | `flag` | Tile flag |
| Integer | `lock_parent_tile` | Tile lock_parent_tile |
| [vec2](#vec2) | `pos` | Tile's position |
| [tile_extra_t](#tile_extra_t) | `getTileExtra()` | Gets tile extra |

## object_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `id` | Object's id |
| Integer | `count or amount` | Object's count |
| Integer | `flags` | Object's flags |
| Integer | `oid` | Object's oid |
| [vec2](#vec2) | `pos` | Object's position |
| [vec2](#vec2) | `tile_pos` | Object's tile position |

## bool_types
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `AA` | AA |
| Integer | `BB` | BB |

## GamePacket
| Type | Name | Description|
|:-----|:----:|:-----------|
| Integer | `type` | Packet type |
| Integer | ` objtype` | Packet object type |
| Integer | `count1 ` | Packet count1 |
| Integer | `count2 ` | Packet count2 |
| Integer | `netid ` | Packet netid |
| Integer | `item ` | Packet item |
| Integer | `flags ` | Packet flags |
| Integer | `float1` | Packet float1 |
| Integer | `int_data` | Packet int_data |
| Integer | `pos_x` | Packet pos x |
| Integer | `pos_y` | Packet pos y |
| Integer | `pos2_x` | Packet pos2 x |
| Integer | `pos2_y` | Packet pos2 y |
| Integer | `float2` | Packet float2 |
| Integer | `tile_x` | Packet tile x |
| Integer | `tile_y` | Packet tile y |
| Integer | `int_x` | Packet int x |
| Integer | `int_y` | Packet int y |

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

## item_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| String | `name` | Item name |
| Integer | `id` | Item ID |
| Integer | `rarity` | Item rarity |
| Integer | `growtime` | Item growtime |
| Integer | `breakhits` | Item breakhits |
| Integer | `clothingtype` | Item clothingtype |
| Integer | `collisiontype` | Item collisionType |

## item_info_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| [item_t](#item_t) | `getItemInfo(Integer id or String name) or getInfo(Integer id or String name)` | Gets item by id and name |
true/false |

## tile_extra_t
| Type | Name | Description|
|:-----|:----:|:-----------|
| Table | `Door` | Returns table tile extra door |
| Table | `Sign` | Returns table tile extra sign |
| Table | `Lock` | Returns table tile extra lock |
| Table | `Seed` | Returns table tile extra seed |
| Table | `Dice` | Returns table tile extra dice |
| Table | `Display_Block` | Returns table tile extra display block |
| Table | `Vending` | Returns table tile extra vending |
