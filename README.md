# script-repository
Main LUA Script Repository for QS

# Env.lua
EXAMPLE SCRIPT
```lua
--// Establish your variable table
local Env = {
	Debounce = false;
}

--// Set the script env
--// USE >>> require(game:GetService("ServerScriptService").Server.Modules.Env)(TABLEOFVARIABLESHERE)
require(game:GetService("ServerScriptService").Server.Modules.Env)(Env)

--// Ignore this error, it will not error in the script when it runs
if Debounce == false then
	print("Nice we didn't error cause it sets the global Env above in the require")
end

--// Settings the Env allows you to set the Variables outside the script like so
local BindableEvent = Instance.new("BindableEvent")
BindableEvent.Name = "TestingBindable"

--// Allows you to change variables outside the script
BindableEvent.Event:Connect(function(IndexOfVariable, ValueToChange)
	Env[IndexOfVariable] = ValueToChange
end)

BindableEvent.Parent = game:GetService("ServerStorage")

--// To reset the script upon regen call this and MAKE SURE TO CALL IT AS A FUNCTION
RESETSCRIPTENV()