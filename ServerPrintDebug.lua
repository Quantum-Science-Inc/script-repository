local Debug = game:GetService("ServerScriptService").GAME_VERSION.DEBUG.Value
local print = function(...) if Debug == true then for Index, Str in pairs({...}) do print("["..script.Name.."]: " .. tostring(Str)) end end end
local warn  = function(...) for Index, Str in pairs({...}) do  warn("["..script.Name.."]: " .. tostring(Str)) end end