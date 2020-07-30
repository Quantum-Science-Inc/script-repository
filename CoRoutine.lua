--[[
    <ModuleScript>

	CoRoutine Manager(™)

	--// Phoenix \\--

	Notice!
		When using: <Function> Break(<Boolean> SoftBreak) OR <Function> Break(<String> ID, <Boolean> SoftBreak)
			>>> IF YOU USE TRUE
				It WILL NOT stop the code, so if you have any running code, it will continue to do so.
				TRUE should only be used for basic cleanup of the tables of functions that yield
			>>> IF YOU USE FALSE OR NONE
				It will set the function's global environment to a empty table. This is an attempt to break it, 
				it will cause errors (won't break thread or output in console)
				So if you call it, it will not work unless you do setfenv(FUNCTION, getfenv()) in your script
				OR
				If you call it again with this script with <Function> Restore(<Function> FunctionToRestore)
	
    returns <Array>
	{
		<String> Routines
			<Array> {ID = {<RBLXThread> Thread, <Function> Function, <Function> Break(<Boolean> SoftBreak), <String> ID};}
		
		
		<Function> Create(<Function> FunctionToRun, <Tuple> ...)
			Desc:
				Just returns the thread table (Doesn't run)
			
			Returns:
				<Array> {ID = {<RBLXThread> Thread, <Function> Function, <Function> Break(<Boolean> SoftBreak), <String> ID};}
		
		
		<Function> Wrap(<Function> FunctionToRun, <Tuple> ...)
			Desc:
				Runs the routine and returns thread table
			
			Returns:
				<Array> {ID = {<RBLXThread> Thread, <Function> Function, <Function> Break(<Boolean> SoftBreak), <String> ID};}
		
		
		<Function> Clear(<Boolean> SoftBreak)
			Desc:
				Breaks all the routines stored and dereferences them, IF SoftBreak == true then sets the ENV to empty
			
			Returns:
				<String> "CLEARED"
		
		
		<Function> Break(<String> ID, <Boolean> SoftBreak)
			Desc:
				Breaks the given ID if present in table, IF SoftBreak == true then it does not set Function ENV to empty
			
			Returns:
				<Tuple> <String> "BROKEN" (Stopped it)/ <String> "ERROR" (Doesn't exist in part)

		<Function> Restore(<Function> FunctionToRestore, <Array> OverrideEnv)
			Desc:
				Restores hard broken functions and returns the function. IF YOU USE OverrideEnv, it will use that Env table instead of your stack.

			Returns:
				<Function> FunctionToRestore
	}
]]

local Routines = {}

local RandomID = function()
    local String = ""

    for I = 1, Random.new(tick()):NextInteger(5, 25) do
        String = String .. string.char(Random.new(tick() + math.random(math.random(1, 50), math.random(51, 100))):NextInteger(097, 122)) --// LOL OVERKILL
    end

    return String
end;

local Create = function(Function, ...)
	local Args = {...}
	local Break = false

	local RunFunction = function()
		local Args = Args
		local Function = Function
		
		Function(unpack(Args))
	end
	
	local ID = RandomID()
	
	Routines[ID] = { 
		["Thread"] = coroutine.create(function() 
			local Ran, Error = pcall(RunFunction)
			
			if Error and Break == false then
				warn("Got error running Function ID: ".. tostring(ID) .." Error;\n".. tostring(Error))
			end
		end);
		
		["Function"] = Function;
		
		["Break"] = function(SoftBreak)
			Break = true
			
			if not SoftBreak then
				setfenv(Function, {})
			elseif SoftBreak == false then
				setfenv(Function, {})
			end
			
			for Index, Element in pairs(Routines[ID]) do
				Routines[ID][Index] = nil
			end			
			
			Routines[ID] = nil
		end;
		
		["ID"] = ID;
	};
	
	--// Asserts that in case this function has been Hard Broken it can ran again, uses calling scripts Env (works 99% of the time unless Env is overwritten)
	if getfenv(Function).print == nil or getfenv(Function).game == nil or getfenv(Function).math == nil then
		setfenv(Function, getfenv(2))
	end
	
	return Routines[ID]
end;

return {
	Routines = Routines;
	
	Create = Create;
	
    Wrap = function(Function, ...)
		local RetTable = Create(Function, ...)
		
        coroutine.resume(RetTable.Thread)

        return RetTable
    end;

    Clear = function(SoftBreak)
        for Index, Routine in pairs(Routines) do
			Routines[Index].Break(SoftBreak)
        end

        return "CLEARED"
    end;
	
	Break = function(ID, SoftBreak)
		if Routines[ID] ~= nil then
			if Routines[ID].Break then
				Routines[ID].Break(SoftBreak)
				
				return "BROKEN"
			end
		end

		return "ERROR"
	end;

	Restore = function(FunctionToRestore, OverrideEnv)
		local Env = nil

		if type(OverrideEnv) == "table" then
			Env = OverrideEnv
		else
			Env = getfenv(2)
		end

		setfenv(FunctionToRestore, Env)

		return FunctionToRestore
	end;
}