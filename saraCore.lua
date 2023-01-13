-- asdfghj do not skid bitch

local Date = {}

function Date.format(number)
	return string.format("%d:%02d:%02d:%02d",
		math.floor(number / 86400), 
		math.floor((number % 86400) / 3600), 
		math.floor((number % 3600) / 60), 
		math.floor(number % 60))
end

local WorldHandler = {}

function WorldHandler.warp(world, id)
    world = world or nil
    id = id or ""

    local warp_tries = 0

    sleep(250)

    while getBot().world ~= world:upper() do

        if warp_tries == 50 then break end

        if warp_tries % 6 == 0 then
            sendPacket(3, ("action|join_request\nname|%s\ninvitedWorld|0"):format(id == '' and world or (world .. '|' .. id)))
        end

        warp_tries = warp_tries + 1

        if getBot().world == world:upper() then break end

        sleep(5000)
    end

    if id ~= "" then 
        warp_tries = 0

        while getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg == 6 do

            if getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg ~= 6 then break end

            if warp_tries == 50 then break end

            if warp_tries % 6 == 0 then
                sendPacket(3, ("action|join_request\nname|%s|%s\ninvitedWorld|0"):format(world, id))
            end

            warp_tries = warp_tries + 1

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
		username = 'saraCore',
		url = url,
		content = message
	})
end

local InventoryHandler = {}

function InventoryHandler.get(item_id)
	item_id = item_id or nil

	assert(type(item_id) == 'number', 'expected type: number, got: ' .. type(item_id))

	local inventory = getInventory()

	for i = 1, #inventory do
		local item = inventory[i]

		if item.id == item_id then
			return item.name
		end
	end

	return tostring(item_id)
end

return {
	WorldHandler = WorldHandler,
	InventoryHandler = InventoryHandler,
	Date = Date,
	TableUtils = TableUtils,
	Webhook = Webhook
}
