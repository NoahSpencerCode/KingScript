local module = {}

function module.Merge(table1,table2)
	local merged = {}
	for k,v in pairs(table1) do
		merged[k] = v
	end
	for k,v in pairs(table2) do
		if merged[k] then
			print('<KS> WARNING | Merging table overwrite | ' .. k)
		end
		merged[k] = v
	end
	return merged
end

function module.Names(objects)
	local names = {}
	for i,v in ipairs(objects) do
		table.insert(names,v.Name)
	end
	return names
end

function module.FindByName(name,list)
	for i,v in ipairs(list) do
		if (v.Name) then
			if name == v.Name then
				return v
			end
		end
	end
	return false
end

return module