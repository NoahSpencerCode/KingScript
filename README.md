# KingScript
Roblox Lua Framework

## Structure Setup

Parent the contents of ReploicatedRootModules to ReplicatedRoot

Parent the contents of ClientRootModules to ClientRoot

Parent the contents of ServerRootModules to ServerRoot


## Server setup Example

```lua
local KS = require(game.ReplicatedStorage:WaitForChild('Root'))
	.Setup('server')
	.Include({'SoundManager','Async'})
```

## Client setup Example

```lua
local KS = require(game.ReplicatedStorage:WaitForChild('Root'))
	.Setup('client')
	.Include({'SoundManager','Async'})
```