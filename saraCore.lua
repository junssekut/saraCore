-- asdfghj do not skid bitch

local Date = {}

function Date.format(number)
	return string.format("%d:%02d:%02d:%02d",
		math.floor(number / 86400), 
		math.floor((number % 86400) / 3600), 
		math.floor((number % 3600) / 60), 
		math.floor(number % 60))
end

local BotHandler = {}

function BotHandler.warp(world, id)
    world = world or nil
    id = id or ""

    local warpTries = 0

    sleep(250)

    while getBot().world ~= world:upper() do

        if warpTries == 50 then break end

        if warpTries % 6 == 0 then
            sendPacket(3, ("action|join_request\nname|%s\ninvitedWorld|0"):format(id == '' and world or (world .. '|' .. id)))
        end

        warpTries = warpTries + 1

        if getBot().world == world:upper() then break end

        sleep(5000)
    end

    if id ~= "" then 
        warpTries = 0

        while getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg == 6 do

            if getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg ~= 6 then break end

            if warpTries == 50 then break end

            if warpTries % 6 == 0 then
                sendPacket(3, ("action|join_request\nname|%s|%s\ninvitedWorld|0"):format(world, id))
            end

            warpTries = warpTries + 1

            sleep(5000)
        end
    end

    sleep(250)

    return getBot().world == world:upper()
end

local TableUtils = {}

function TableUtils.geti(table_value, value)
	local counter = 1

	for _, v in pairs(table_value) do
		if v == value then 
			return counter
		end

		counter = counter + 1
	end

	return nil
end

local Webhook = {}

function Webhook.send(url, message)
	webhook({
		url = url,
		content = message
	})
end

return {
	BotHandler = BotHandler,
	Date = Date,
	TableUtils = TableUtils,
	Webhook = Webhook
}
