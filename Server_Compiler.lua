--[[
    Server Compiler
    Dep: <ModuleScript> Report

	DONT TOUCH OR >>RIOT<<

	Made by
	AdjacentPhoenix
]]

local Tags = {
	["Critical"]  = {};
	["Regular"]   = {};
	["Minor"]     = {};
	["Resetable"] = {};
}

local Settings = {
	DataStore = "QSERF_Server_Data";
	Version = "2.001";
	Debug   = true;

	Levels = {
		["Critical"] = "EMERGENCY";
		["Regular"]  = "ERROR";
		["Minor"]    = "MINOR";
	};
}

if Settings.Debug == true then
	warn("Begin Server Load")
end

local Logs = {Errors = {}; Scripts = {};}
local Report = require(script.Report)

local Service = {
	["Workspace"] = game:GetService("Workspace");
	["workspace"] = game:GetService("Workspace");
	["Lighting"] = game:GetService("Lighting");
	["ServerStorage"] = game:GetService("ServerStorage");
	["ReplicatedStorage"] = game:GetService("ReplicatedStorage");
	["Players"] = game:GetService("Players");
	["Chat"] = game:GetService("Chat");
	["CollectionService"] = game:GetService("CollectionService");
	["RunService"] = game:GetService("RunService");
	["Run Service"] = game:GetService("RunService");
	["ServerScriptService"] = game:GetService("ServerScriptService");
	["HttpService"] = game:GetService("HttpService");
	["DataStoreService"] = game:GetService("DataStoreService");
	["DataStore"] = game:GetService("DataStoreService");
	["ScriptContext"] = game:GetService("ScriptContext");
}


--//-SCRIPT-CONSTANTS-\\--
local OrgPrint = print
local OrgWarn  = warn
local OrgError = error
--\\------------------//--


--//-SCRIPT-FUNCTIONS-\\--
local GetTagged = function(Script)
	local Return = {Level = "N/A"; Tags = {};}

	--// Critical
	if Tags.Critical[Script] ~= nil then
		Return.Level = "Critical"
	end

	--// Regular
	if Tags.Regular[Script] ~= nil then
		Return.Level = "Regular"
	end

	--// Minor
	if Tags.Minor[Script] ~= nil then
		Return.Level = "Minor"
	end

	--// Resetable
	if Tags.Resetable[Script] ~= nil then
		Return.Tags["Resetable"] = "Resetable"
	end

	return Return
end

local CloneTable = function(Table)
	local NewTable = {}
	
	for Index, Value in pairs(Table) do
		NewTable[Index] = Value
	end
	
	return NewTable
end

local Pcall = function(Critical, Function, ...)
	local Args = {...}
	
	local Ran, Error = pcall(function()
		Function(unpack(Args))
	end)

	if Error then
		Logs.Errors[#Logs.Errors + 1] = Error
		
		if Critical == true then
			Report.Push.Message(script, "EMERGENCY", Error)
		else
			Report.Push.Message(script, "ERROR", Error)
		end
	end
end
--\\------------------//--


--// \/ OVERRIDE SCRIPT FUNCTION GLOBALS DOWN HERE \/ \\--
local print = function(...) 
	for Index, Value in pairs({...}) do
		if Settings.Debug == true then
			OrgPrint("[".. getfenv(2).script.Name .."]: ".. tostring(Value))
		end
	end 
end

local warn = function(...) 
	for Index, Value in pairs({...}) do  
		OrgWarn("[".. getfenv(2).script.Name .."]: ".. tostring(Value)) 
	end 
end

local error = function(...)
	for Index, Value in pairs({...}) do
		OrgError("[".. getfenv(2).script.Name .."]: ".. tostring(Value))
	end
end
--------------------------------------------------------

local Env = {
	Report = Report, Service = Service, _G = _G, game = game, getfenv = getfenv, setfenv = setfenv, 
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

local TagList = {
	["Critical"] = "High";
	["Regular"] = "Med";
	["Minor"] = "Low";
};

local SetEnv = function(Function, Extra, Additional)
	local OrgFuncEnv = getfenv(Function)
	local Table = nil
	
	if Extra then
		Table = OrgFuncEnv.RESET
	end
	
	local Reset

	if Table ~= nil then
		Reset = CloneTable(Table)
	end
	
	setfenv(Function, setmetatable({},{
		__index = function(Self, Index)
			if Table ~= nil then
				if Table[Index] ~= nil then
					return Extra[Index]
				elseif Index == "RESETSCRIPTENV" then
					for Index, Value in pairs(Reset) do
						Table[Index] = Value
					end
				
					return function() return "RESET" end
				end
			end
			
			if Additional ~= nil then
				if Additional[Index] ~= nil then
					return Additional[Index]
				end
			end
			
			if Env[Index] ~= nil then
				return Env[Index]
			else
				return OrgFuncEnv[Index]
			end
		end;

		__newindex = function(Self, Index, Key)
			Table[Index] = Key
		end;
			
		__metatable = {};
	}))
end

local GetFunctions = function(Return)
	local Functions = {}
	
	local GetTable; GetTable = function(Table)
		for Index, Value in pairs(Table) do
			if type(Value) == "table" then
				GetTable(Value)
			elseif type(Value) == "function" then
				Functions[#Functions + 1] = Value
			end
		end
	end

	if type(Return) == "table" then
		for Index, Value in pairs(Return) do
			if type(Value) == "table" then
				GetTable(Value)
			elseif type(Value) == "function" then
				Functions[#Functions + 1] = Value
			end
		end
	else
		Functions[#Functions + 1] = Return
	end

	return Functions
end

local Run = function(Module, Function)
	local Ran, Error = pcall(Function)

	if Error then
		Report.Push.Message(Module, Settings.Levels[GetTagged(Module).Level], Error)
		
		OrgWarn("[GAME]: Script ".. tostring(Module.Name) .." ERROR | ".. tostring(Error))
	else
		OrgPrint("[GAME]: Script ".. tostring(Module.Name) .. " Ran without error")
	end
end

local LoadModuleScript = function(Module)
	Logs.Scripts[#Logs.Scripts + 1] = Module
	
	local Tags = GetTagged(Module)	
	local Functions = GetFunctions(require(Module))

	for Index, Function in pairs(Functions) do
		if Tags.Tags.Resetable ~= nil then
			SetEnv(Function, true)
		else
			SetEnv(Function)
		end
	end

	for Index, Function in pairs(Functions) do
		spawn(function() Run(Module, Function) end)
	end
end

local LoadScript = function(Script)
	Logs.Scripts[#Logs.Scripts + 1] = Script
	
	Script.Disabled = false
end

local Game_Version = function()
	local DataStoreService = Service.DataStore
	local ServerData = DataStoreService:GetDataStore(Settings.DataStore)
	local Version = ServerData:GetAsync("Version")
	
	--// Check if we can get it from the Datastore or Reset
	if Version == nil then
		Version = Settings.Version
	end
	
	--// Fix it if it goes into a float value (IDK Why)
	if string.len(tostring(Version)) > 5 then
		local Fixed = string.sub(tostring(Version), 1, 5)
	
		if tonumber(Fixed) ~= nil then
			Version = tonumber(Fixed)
		else
			Version = Settings.Version
		end
	end
	
	--// Increase it if it's Studio
	if Service.RunService:IsStudio() == true then
		Version = Version + 0.001
		ServerData:SetAsync("Version", Version)
	end
	
	--// Client Get Version
	local GetVersionClient = Instance.new("RemoteFunction")
	GetVersionClient.Name = "Get_Game_Version"
	
	GetVersionClient.OnServerInvoke = function()
		return Version
	end
	
	--GetVersionClient.Parent = game:GetService("ReplicatedStorage").Game.Events.Misc

	Settings.Version = Version

	_G.Version = Version
end

local Unpackage = function()
	for Index, Module in pairs(Service.CollectionService:GetTagged("Env")) do
		Pcall(true, function()
			Env[Module.Name] = require(Module)
		end)
	end
end

local CompileTaggedData = function()
	for Index, Tag in pairs(Tags) do
		for In, TagToSet in pairs(Service.CollectionService:GetTagged(Index)) do
			Tag[TagToSet] = TagToSet
		end
	end
end

local Load = function()
	for Index, Script in pairs(Service.CollectionService:GetTagged("Critical")) do
		if Script.ClassName == "ModuleScript" then
			LoadModuleScript(Script)
		else
			LoadScript(Script)
		end
	end
	
	for Index, Script in pairs(Service.CollectionService:GetTagged("Regular")) do
		if Script.ClassName == "ModuleScript" then
			LoadModuleScript(Script)
		else
			LoadScript(Script)
		end
	end

	for Index, Script in pairs(Service.CollectionService:GetTagged("Minor")) do
		if Script.ClassName == "ModuleScript" then
			LoadModuleScript(Script)
		else
			LoadScript(Script)
		end
	end
end

local Events = function()
	game.Close:Connect(function()
		Report.Push.Close()
	end)
	
	--// If a tagged script is a Script and not a Module Script
	local Logged = {}

	Service.ScriptContext.Error:Connect(function(MESSAGE, STACK, SCRIPT)
		local Tags = GetTagged(SCRIPT)

		if Tags.Level ~= "N/A" and Logged[MESSAGE] == nil then
			Logged[MESSAGE] = MESSAGE
			
			Logs.Errors[#Logs.Errors + 1] = MESSAGE
			
			Report.Push.Message(SCRIPT, Settings.Levels[Tags.Level], MESSAGE)
		end
	end)
end

--// Init the Server
local Init = function()
	print("Init Called!")

	local Message = Instance.new("Message")
	Message.Parent = game:GetService("Workspace")
	Message.Text = "Server is starting, please wait!"

	Pcall(false, Game_Version)

	Report.Push.Load(Settings.Version)
	
	Pcall(true, CompileTaggedData)

	Pcall(false, Events)

	Pcall(true, Unpackage)

	Pcall(true, Load)

	OrgWarn("[GAME]: Loaded | Server Version: ".. Settings.Version .. " | Errors: ".. tostring(#Logs.Errors).. " | Scripts ".. tostring(#Logs.Scripts))

	Message:Destroy()
end

Pcall(true, Init)