# Usage
* [GamePacket](#GamePacket)

## GamePacket

Sends [GamePacket](structs.md#GamePacket) to server.

Examples:
```lua
-- it isn't doing anything
packet = GamePacket()
packet.type = 0
packet.objtype = 1
packet.count1 = 42
packet.count2 = 64
packet.netid = 123
packet.item = 456
packet.flags = 789
packet.float1 = 3.14
packet.int_data = 987
packet.pos = vec2f(10.3, 30.2)
packet.pos2 = vec2f(1.5, 2.5)
packet.float2 = 2.71
packet.tile = vec2i(30, 40)
getBot():SendPacketRaw(packet)

-- can be used GetBot , sendPacketRaw
```

```lua
-- Sends wear clothing packet
bot = getBot()
packet = GamePacket()
packet.type = 10 
packet.int_data = 48 -- Item ID (Jeans)
bot:sendPacketRaw(packet)
```
