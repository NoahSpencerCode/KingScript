local module = {}

function module.FindAll(search,start)
	local filtered = {}
	local list = start:GetAllDecendants()
	for i,v in ipairs(list) do
		if search.Includes then
			if string.match(v.Name,search.Includes) then
				table.insert(filtered,v)
			end
		end
	end
	if filtered == {} then filtered = false end 
	return filtered
end

return module