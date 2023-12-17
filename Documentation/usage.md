# Usage
* [Bot](#Bot)
* [GamePacket](#GamePacket)

## Bot

### Getting [bot](structs.md#bot) types:
```lua
bot = getBot() -- or can be used getSelectedBot()
bots = getSelectedBots() -- gets selected bots
bots2 = getBots() -- gets all bots

-- you can write like "GetBot ... etc" too  
```

### [bot](structs.md#bot) functions:
SendPacket:
`sendPacket(int type, std::string packet)`
```lua
-- sends respawn packet
bot = getBot()
bot:SendPacket(2, "action|respawn")
-- can use sendPacket
```

SendPacketRaw using [GamePacket](structs.md#GamePacket):
`sendPacketRaw(GamePacket packet)`
```lua
-- Sends wear clothing packet
bot = getBot()
packet = GamePacket()
packet.type = PacketType.ItemActivateRequest -- or you can write 10
packet.int_data = 48 -- Item ID (Jeans)
bot:sendPacketRaw(packet)
-- can use SendPacketRaw
```

Wear:
`Wear(int itemid)`
```lua
-- if have item in inventory wears
bot = getBot()
bot:Wear(48)
-- can use wear
```

Punch/Hit:
`Punch(int x, int y)`
```lua
-- punchs to tile position
bot = getBot()
bot:Punch(bot.tile.x + 1, bot.tile.y) -- punchs to right tile
-- can use punch, Hit, hit
```

Place:
`Place(int x, int y, int itemid)`
```lua
-- places to tile position
bot = getBot()
bot:Place(2, bot.tile.x + 1, bot.tile.y) -- places dirt to right tile
-- can use place
```

Wrench:
`Wrench(int x, int y)`
```lua
-- punchs to tile position
bot = getBot()
bot:Wrench(32, bot.tile.x + 1, bot.tile.y) -- wrenchs to right tile
-- can use wrench
```

FindPath:
`FindPath(int x, int y)`
```lua
-- teleports to tile position
bot = getBot()
bot:FindPath(bot.tile.x + 1, bot.tile.y) -- teleports to right tile
-- can use findPath
```

## GamePacket

Sends [GamePacket](structs.md#GamePacket) to server.

used structs [vec2i](structs.md#vec2i), [vec2f](structs.md#vec2f), [packet_types](structs.md#packet_types), [packet_flags](structs.md#packet_flags)

### GamePacket Example:
```lua
-- it isn't doing anything just a example
packet = GamePacket()
packet.type = PacketType.State -- or you can write 0
packet.objtype = 1
packet.count1 = 42
packet.count2 = 64
packet.netid = 123
packet.item = 456
packet.flags = PacketFlag.none -- or you can write 0
packet.float1 = 3.14
packet.int_data = 987
packet.pos = vec2f(10.3, 30.2)
packet.pos2 = vec2f(1.5, 2.5)
packet.float2 = 2.71
packet.tile = vec2i(30, 40)
getBot():SendPacketRaw(packet)

-- can be used GetBot , sendPacketRaw
```
