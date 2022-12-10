-- asdfghj do not skid bitch

local Date = {}

function Date.format(number)
	return ("%d:%02d:%02d:%02d"):format(
		math_floor(number / 86400), 
		math_floor((number % 86400) / 3600), 
		math_floor((number % 3600) / 60), 
		math_floor(number % 60))
end

return Date