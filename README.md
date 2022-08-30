# KingScript
Roblox Lua Framework

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