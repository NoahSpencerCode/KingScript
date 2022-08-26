local main = script.Parent

main.ClientRoot.Parent = game.StarterPlayer.StarterPlayerScripts

main.Root.Parent = game.ReplicatedStorage

main.ServerRoot.Parent = game.ServerScriptService

main:Destroy()
