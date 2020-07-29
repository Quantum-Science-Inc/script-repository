--[[
    <ModuleScript> Env

	ENV HANDLER
	
	This handy script allows you to reset script Envs and set them
	Does make use of global variables so don't put stuff in there that you use once

	CHECK DOCS UNDER THIS SCRIPT!!!!

	Phoenix
]]


local CT = function(Table)
	local NewTable = {}
	
	for Index, Value in pairs(Table) do
		NewTable[Index] = Value
	end
	
	return NewTable
end;

--// \/ OVERRIDE SCRIPT FUNCTION GLOBALS DOWN HERE \/

local print = function(...) for Index, Value in pairs({...}) do print("[".. getfenv(2).script.Name .."]: ".. tostring(Value)) end end
local warn  = function(...) for Index, Value in pairs({...}) do  warn("[".. getfenv(2).script.Name .."]: ".. tostring(Value)) end end
-- local error = function(...) for Index, Value in pairs({...}) do ADDREPORTHERE  error(Value) end end


local Env = {
	_G = _G, game = game, getfenv = getfenv, setfenv = setfenv, 
	getmetatable = getmetatable, setmetatable = setmetatable, coroutine = coroutine, 
	rawequal = rawequal, typeof = typeof, print = print, math = math, warn = warn, 
	error = error,  pcall = pcall, xpcall = xpcall, rawset = rawset, rawget = rawget, 
	ipairs = ipairs, pairs = pairs, next = next, Rect = Rect, Axes = Axes, os = os, 
	tick = tick, Faces = Faces, unpack = unpack, string = string, Color3 = Color3, 
	newproxy = newproxy, tostring = tostring, tonumber = tonumber, Instance = Instance, 
	TweenInfo = TweenInfo, BrickColor = BrickColor, NumberRange = NumberRange, 
	ColorSequence = ColorSequence, NumberSequence = NumberSequence, 
	ColorSequenceKeypoint = ColorSequenceKeypoint, NumberSequenceKeypoint = NumberSequenceKeypoint, 
	PhysicalProperties = PhysicalProperties, Region3int16 = Region3int16, Vector3int16 = Vector3int16, 
	elapsedTime = elapsedTime, require = require, table = table, type = type, wait = wait, 
	Enum = Enum, UDim = UDim, UDim2 = UDim2, Vector2 = Vector2, Vector3 = Vector3, 
	Region3 = Region3, CFrame = CFrame, Ray = Ray, Random = Random, spawn = spawn
}; 

--// Return
return function(Table)
	local OrgEnv = getfenv(2)
	local Reset = CT(Table)
	local Table = Table 
	
	setfenv(2, setmetatable({},{
	    __index = function(Self, Index)
			if Table[Index] ~= nil then
	            return Table[Index]
			elseif Index == "RESETSCRIPTENV" then
				for Index, Value in pairs(Reset) do
					Table[Index] = Value
				end
				
				return function() return "RESET" end
			elseif Env[Index] ~= nil then
				return Env[Index]
	        else
	            return OrgEnv[Index]
	        end
	    end;
	
		__newindex = function(Self, Index, Key)
			Table[Index] = Key
		end;
		
		__metatable = {}; --// Just ensures you can't run Build twice
	}))
end;
