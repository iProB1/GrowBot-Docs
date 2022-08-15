Bot = GetSelectedBot()
function FaceSide(bot, side)
    local packet = GamePacket()
    packet.type = 0

    if side == "LEFT" or side == true then
        packet.flags = 48
    elseif side == "RIGHT" or side == false then
        packet.flags = 32
    else
        return error("Invalid side '" .. side .. "'")
    end

    bot:SendPacketRaw(packet)
end
FaceSide(Bot, "LEFT")
