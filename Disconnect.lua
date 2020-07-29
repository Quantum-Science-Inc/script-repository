local Disconnect = function(...)
	local DisconnectFunction = function(What)
		if type(What) == "table" then
			for Index, Signal in pairs(What) do
				Signal:Disconnect()
			end
		else
			What:Disconnect()
		end
	end

	for Index, Value in pairs({...}) do
		DisconnectFunction(Value)
	end
end