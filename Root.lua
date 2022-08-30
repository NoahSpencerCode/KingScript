local TableX = require(game.ReplicatedStorage.ReplicatedRoot.TableX)

local module = {}

module.IncludeLibrary = {}

local function IncludeItem(name)
	local included = TableX.FindByName(name,module.IncludeLibrary)
	if included then
		module = TableX.Merge(require(included),module)
		return module
	end

	print('<KS> WARNING | Cant find '..name..'| Module not included')

	return module
end

function module.Setup(setting)
	if setting == 'client' then
		module = TableX.Merge(require(game.Players.LocalPlayer.PlayerScripts.ClientRoot),module)
		module.IncludeLibrary = game.Players.LocalPlayer.PlayerScripts.ClientRoot:GetChildren()
	end
	if setting == 'server' then
		module = TableX.Merge(require(game.ServerScriptService.ServerRoot),module)
		module.IncludeLibrary = game.ServerScriptService.ServerRoot:GetChildren()
	end
	module = TableX.Merge(require(game.ReplicatedStorage.ReplicatedRoot),module)
	module.IncludeLibrary = TableX.Merge(module.IncludeLibrary,game.ReplicatedStorage.ReplicatedRoot:GetChildren())
	module.Setup = nil
	return module
end

function module.Include(name)

	if type(name) == 'string' then
		IncludeItem(name)
		return module
	end

	if type(name) == 'table' then
		for i,v in ipairs(name) do
			IncludeItem(v)
		end
		return module
	end


	print'<KS> WARNING | Cant find modules | No modules included'
	return module

end

return module