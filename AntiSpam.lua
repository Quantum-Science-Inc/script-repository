--// AntiSpam eeyeye (Phoenix)
local AntiSpam = {} -- Index: <instance> Player | Key: <int> Number of attempts
local DelayQueue = {} -- Index: <instance> Player | Key: <boolean> Delaying

local Wrap = function(Function) --// Function that prevents spam for global controls eeeeyeeet
    local Delay = function(Player)
        DelayQueue[Player] = true
        
        wait(5)
        
        DelayQueue[Player] = false
        AntiSpam[Player] = 0
    end
    
    return function(Player)
        if AntiSpam[Player] == nil then
            AntiSpam[Player] = 0
        end
        
        if DelayQueue[Player] == nil then
            DelayQueue[Player] = false
        end

        if AntiSpam[Player] < 5 then
            AntiSpam[Player] = AntiSpam[Player] + 1
            Function(Player)
        elseif AntiSpam[Player] > 5 and DelayQueue[Player] == false then
            Delay(Player)
        end
    end
end