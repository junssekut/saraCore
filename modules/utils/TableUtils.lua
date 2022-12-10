-- asdfghj do not skid bitch

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

return TableUtils