--[[
    <ModuleScript>

    returns <Array>
]]

local Routines = {}

local RandomID = function()
    local String = ""

    for I=1, Random.new(tick()):NextInteger(5, 25) do
        String = String .. string.char(Random.new(tick()+math.random(math.random(80, 1000), math.random(5, 25))):NextInteger(097, 122)) --// LOL
    end

    return String
end;

return {
    Wrap = function(Function, ...)
        local Args = {...}

        local RunFunction = function()
            local Args = Args
            local Function = Function

            Function(unpack(Args))
        end

        local ID = RandomID()

        Routines[ID] = coroutine.create(function() 
            local Ran, Error = pcall(RunFunction)

            if Error then
                warn("Got error running Function ID: ".. tostring(ID) .." Error;\n".. tostring(Error))
            end
        end)

        coroutine.resume(Routines[ID])

        return {ID = ID; Routine = Routines[ID]}
    end;

    Clear = function()
        for Index, Routine in pairs(Routines) do
            coroutine.yield(Routine)
            Routines[Index] = nil --// GC help pls
        end
        
        return "CLEARED"
    end;

    Create = function(Function, ...)
        local Args = {...}

        local RunFunction = function()
            local Args = Args
            local Function = Function

            Function(unpack(Args))
        end

        local ID = RandomID()

        Routines[ID] = coroutine.create(function() 
            local Ran, Error = pcall(RunFunction)

            if Error then
                warn("Got error running Function ID: ".. tostring(ID) .." Error;\n".. tostring(Error))
            end
        end)

        return {ID = ID; Routine = Routines[ID]}
    end;

    Yield = function(ID)
        if Routines[ID] ~= nil then
            coroutine.yield(Routines[ID])

            return "YIELD"
        end

        return "NIL"
    end;
}