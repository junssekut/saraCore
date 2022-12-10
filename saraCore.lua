-- asdfghj do not skid bitch

local BotHandler = {}

function BotHandler.warp(world, id, after, interval, delay)
    world = world or "exit"
    id = id or ""
    after = after or 6
    interval = interval or 5000
    delay = delay or 250

    local warpTries = 0

    sleep(delay)

    while getBot().world ~= world:upper() do


        if warpTries == 50 then break end

        if warpTries % after == 0 then
        	if id == "" then
            	sendPacket(3, ("action|join_request\nname|%s\ninvitedWorld|0"):format(world))
	        else
	            sendPacket(3, ("action|join_request\nname|%s|%s\ninvitedWorld|0"):format(world, id))
	        end
        end

        warpTries = warpTries + 1

        if getBot().world == world:upper() then break end
        
        sleep(interval)
    end

    if id ~= "" then 
        warpTries = 0

        while getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg == 6 do

            if getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg ~= 6 then break end

            if warpTries == 50 then break end

            if warpTries % after == 0 then
                sendPacket(3, ("action|join_request\nname|%s|%s\ninvitedWorld|0"):format(world, id))
            end

            warpTries = warpTries + 1

            sleep(interval)
        end
    end

    sleep(delay)

    return getBot().world == world:upper()
end

return {
	BotHandler = BotHandler
}