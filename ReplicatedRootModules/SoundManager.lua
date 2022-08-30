local function CreateSound(id)
	local new = Instance.new('Sound')
	new.SoundId = id
	return new
end

local module = {}

function module.PlaySound(idORasset, parent, looped)
	if type(idORasset) == 'string' then
		idORasset = CreateSound(idORasset)
	end
	if parent then
		idORasset.Parent = parent
	else
		idORasset.Parent = workspace
	end
	if looped then idORasset.Looped = true else idORasset.Looped = false end
	idORasset:Play()
	return idORasset
end

return module
