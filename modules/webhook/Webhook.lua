-- asdfghj do not skid bitch

local Webhook = {}

function Webhook.send(url, message)
	webhook({
		url = url,
		content = message
	})
end

return Webhook