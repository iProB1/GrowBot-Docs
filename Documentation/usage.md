# Usage
* [Bot](#Bot)
* [GamePacket](#GamePacket)

## Bot

Getting [bot](structs.md#bot) types:
```lua
bot = getBot() -- or can be used getSelectedBot()
bots = getSelectedBots() -- gets selected bots
bots2 = getBots() -- gets all bots

-- you can write like "GetBot ... etc" too  
```

Sending packet:
`sendPacket(int type, std::string packet)`
```lua
-- sends respawn packet
bot = getBot()
bot:SendPacket(2, "action|respawn")
-- can use sendPacket
```

Sending packet raw using [GamePacket](structs.md#GamePacket):
`sendPacketRaw(GamePacket packet)`
```lua
-- Sends wear clothing packet
bot = getBot()
packet = GamePacket()
packet.type = PacketType.ItemActivateRequest -- or you can write 10
packet.int_data = 48 -- Item ID (Jeans)
bot:sendPacketRaw(packet)
```

## GamePacket

Sends [GamePacket](structs.md#GamePacket) to server.

used structs [vec2i](structs.md#vec2i), [vec2f](structs.md#vec2f), [packet_types](structs.md#packet_types), [packet_flags](structs.md#packet_flags)

Examples:
```lua
-- it isn't doing anything
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
