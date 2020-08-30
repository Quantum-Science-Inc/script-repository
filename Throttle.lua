local MaxRequestsInMinute = 10
local Throttle = {}

local ThrottlePlayer = function(Player)
	if Throttle[Player] == nil then
		Throttle[Player] = {Bool = false; Attempts = 0}
	end
	
	Throttle[Player].Attempts = Throttle[Player].Attempts + 1
	
	if Throttle[Player].Attempts >= MaxRequestsInMinute and Throttle[Player].Attempts < MaxRequestsInMinute + math.floor(MaxRequestsInMinute * 0.3) then
		Throttle[Player].Bool = true
	elseif Throttle[Player].Attempts >= MaxRequestsInMinute + math.floor(MaxRequestsInMinute * 0.3) then
		Player:Kick("Remote spam detected!")
	end
	
	delay(60, function()
		Throttle[Player].Attempts = Throttle[Player].Attempts - 1
		
		if Throttle[Player].Attempts < MaxRequestsInMinute then
			Throttle[Player].Bool = false
		end
	end)
end

local Incoming = function(Where, Player, ...)
	Throttle(Player)
	
	if Throttle[Player].Bool == true then
		if Where == "GET" then
			return GET(Player, ...)
		elseif Where == "SET" then
			SET(Player, ...)
		end
	end
end