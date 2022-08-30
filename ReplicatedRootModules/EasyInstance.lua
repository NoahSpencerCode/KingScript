local module = {}

function module.Spawn(name,props,children)
	
	if (name == nil) then print'Spawn is missing instance type' return end
	local inst = Instance.new(name)
	
	if not (props == nil) then
		for k,v in pairs(props) do
			inst[k] = v
		end
	end
	if not (children == nil) then
		for i,v in ipairs(children) do
			v[2]['Parent'] = inst
			module.Spawn(v[1],v[2],v[3])
		end
	end
	return inst
end

return module