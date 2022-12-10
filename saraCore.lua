-- asdfghj do not skid bitch

local BotHandler = assert(load(request('GET', 'https://raw.githubusercontent.com/junssekut/saraCore/main/modules/handler/BotHandler.lua'))())
local Date = assert(load(request('GET', 'https://raw.githubusercontent.com/junssekut/saraCore/main/modules/date/Date.lua'))())
local TableUtils = assert(load(request('GET', 'https://raw.githubusercontent.com/junssekut/saraCore/main/modules/utils/TableUtils.lua'))())
local Webhook = assert(load(request('GET', 'https://raw.githubusercontent.com/junssekut/saraCore/main/modules/webhook/Webhook.lua'))())

return {
	BotHandler = BotHandler,
	Date = Date,
	TableUtils = TableUtils,
	Webhook = Webhook
}
