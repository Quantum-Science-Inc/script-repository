--// Script Setting Constants
local Settings = {
    Game = {
        [4744058827] = {
			Message = "[QSERF_DEV]: ";
			Icon = "https://t4.rbxcdn.com/fe02d1771cedc063f52ec14fbb6d6255"
		};
		
        [3039795291] = {
			Message = "[QSERF_PUBLIC]: ";
			Icon = "https://t2.rbxcdn.com/2845f9fb08505e22f623e6f96b7e1f0d"
		};
		
        ["Other"] = {
			Message = "[" .. tostring(game.PlaceId) .. "]: ";
			Icon = "https://t3.rbxcdn.com/0f36ed1f5cfed2afaad99722639762c2";
		};
    };

    Data = {
        ["LOG"] = {
            URL = "https://discordapp.com/api/webhooks/738477343827558440/fALujUIG3snL-dxD2GpZ5rklE6FjKCkCA_RgKAxWIwI08AortxgSLRLJtLnoFvL-5q9O";
            Message = "LOG | ";
            Color = 1752220;
        };

        ["MINOR"] = {
            URL = "https://discordapp.com/api/webhooks/738477201103650846/b9c6spAHoZqo72wLz2xdHO7Bco4SnnwUTE295u97wo535cuijbS8j8-A5_NCCHZPhO9w";
            Message = "MINOR | ";
            Color = 15105570;
        };

        ["ERROR"] = {
            URL = "https://discordapp.com/api/webhooks/738476884752466000/8SNDWbaiJBUEAc8PdAyZKeAtEjOgtYaLMCaP67A1Rz2nFHQMjqwq8Zx0vPlVqijVIMf5";
            Message = "ERROR | ";
            Color = 15158332;
        };

        ["EMERGENCY"] = {
            URL = "https://discordapp.com/api/webhooks/738475978434805810/EAn-n7u5BEgc1YQTaOPpiN0BWs6pzjQvBwViPI-liDQhqrgnPNHP9ubi6g8lL0nk2R3m";
            Message = "**EMERGENCY!!!** | ";
            Color = 10038562;
        };

		["EXPLOIT"] = {
			URL = "https://discordapp.com/api/webhooks/738714611947405382/HO0XFSZQKAsgEXprAq3aoPV0Q6eQhpZEaVueQcE0bwqOstxy6AAeEz68QcDw68RvR5xw";
			Message = "Exploit Log | ";
			Color = 10038562;
		};

		["LOAD"] = {
			URL = "https://discordapp.com/api/webhooks/738477343827558440/fALujUIG3snL-dxD2GpZ5rklE6FjKCkCA_RgKAxWIwI08AortxgSLRLJtLnoFvL-5q9O";
            Message = "N/A";
            Color = 3066993;
		};

		["CLOSE"] = {
			URL = "https://discordapp.com/api/webhooks/738477343827558440/fALujUIG3snL-dxD2GpZ5rklE6FjKCkCA_RgKAxWIwI08AortxgSLRLJtLnoFvL-5q9O";
            Message = "N/A";
            Color = 10038562;
		};
    };
}

--// Get Game INFO
local Header = nil

if Settings.Game[game.PlaceId] then
	Header = Settings.Game[game.PlaceId]
else
	Header = Settings.Game["Other"].Message
end

local Job = tostring(game.JobId)

if Job == "" or Job == " " or Job == nil then
	Job = "Studio"
end

local Icon = nil

if Settings.Game[game.PlaceId] then
	Icon = Settings.Game[game.PlaceId].Icon
else
	Icon = Settings.Game["Other"].Icon
end

local Version = "UNKNOWN" -- _G.Version for any game with Server_Compiler
--// End

return {
	Push = {
		Load = function(IncomingVersion)
			Version = IncomingVersion
			
			wait(1)
			
			local Tab = Settings.Data["LOAD"]
			
			local Data = {
				["embeds"] = {{
		            ["title"] = "Load Report",
		            ["description"] = "[[Game]](https://www.roblox.com/games/".. tostring(game.PlaceId).."/) - ".. tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name),
					["type"] = "rich",
					["color"] = tonumber(Tab.Color) or 0,
					["thumbnail"] = {
				      ["url"] = Icon
				    },
		            ["fields"] = {
						{
							["name"] = "Message",
							["value"] = "Server has loaded",
						},
		                {
							["name"] = "JobID;",
							["value"] = tostring(Job),
						},
						{
							["name"] = "Number of Players;";
							["value"] = tostring(#game:GetService("Players"):GetChildren()),
						},
						{
							["name"] = "Server Version",
							["value"] = tostring(Version),
						}
		            },
		            ["footer"] = {
		                ["icon_url"] = "https://t0.rbxcdn.com/0d00f60ee01d1d375e192b1cc9572fd5",
		                ["text"] = "Phoenix's Game Logger™",
		            }
		
		        }},
		    }
			
			RequestAsync(Tab.URL, "POST", Data, false)
		end;

		Close = function()
			local Tab = Settings.Data["LOAD"]
			
			local Data = {
				["embeds"] = {{
		            ["title"] = "Load Report",
		            ["description"] = "[[Game]](https://www.roblox.com/games/".. tostring(game.PlaceId).."/) - ".. tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name),
					["type"] = "rich",
					["color"] = tonumber(Tab.Color) or 0,
					["thumbnail"] = {
				      ["url"] = Icon
				    },
		            ["fields"] = {
						{
							["name"] = "Message",
							["value"] = "Server has closed",
						},
		                {
							["name"] = "JobID;",
							["value"] = tostring(Job),
						},
						{
							["name"] = "Number of Players;";
							["value"] = tostring(#game:GetService("Players"):GetChildren()),
						},
						{
							["name"] = "Server Version",
							["value"] = tostring(Version),
						}
		            },
		            ["footer"] = {
		                ["icon_url"] = "https://t0.rbxcdn.com/0d00f60ee01d1d375e192b1cc9572fd5",
		                ["text"] = "Phoenix's Game Logger™",
		            }
		
		        }},
		    }
			
			RequestAsync(Tab.URL, "POST", Data, false)
		end;
		
		Message = function(SCRIPT, TYPE, MESSAGE)
			if game:GetService("RunService"):IsStudio() then
				return
			end
			
		    local URL = nil
			local Start = nil
			local Color = nil
			local Reporting		

			--// Get the script Stack Ooo
			if SCRIPT ~= nil then
				Reporting = SCRIPT:GetFullName()
			else
				Reporting = "Unknown"
			end
		        
		    if Settings.Data[string.upper(TYPE)] then
		        URL = Settings.Data[string.upper(TYPE)].URL
		        Start = Settings.Data[string.upper(TYPE)].Message
		        Color = Settings.Data[string.upper(TYPE)].Color
		    else
		        error("Did not give correct argument: "..tostring(string.upper(TYPE)))
		     end
		
			local Data = {
				["embeds"] = {{
		            ["title"] = tostring(Header.. string.upper(TYPE)) or "ERROR",
		            ["description"] = "[[Game]](https://www.roblox.com/games/".. tostring(game.PlaceId).."/) - ".. tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name),
					["type"] = "rich",
					["color"] = tonumber(Color) or 0,
					["thumbnail"] = {
				      ["url"] = Icon
				    },
		            ["fields"] = {
						{
							["name"] = "MESSAGE",
							["value"] = Start .. MESSAGE,
						},
		                {
							["name"] = "Stack",
							["value"] = tostring(Reporting),
						},
		                {
							["name"] = "JobID;",
							["value"] = tostring(Job),
						},
						{
							["name"] = "Number of Players;";
							["value"] = tostring(#game:GetService("Players"):GetChildren()),
						},
						{
							["name"] = "Server Version",
							["value"] = tostring(Version),
						}
		            },
		            ["footer"] = {
		                ["icon_url"] = "https://t0.rbxcdn.com/0d00f60ee01d1d375e192b1cc9572fd5",
		                ["text"] = "Phoenix's Game Logger™",
		            }
		
		        }},
		    }
		
		    RequestAsync(URL, "POST", Data, false)
		end;

		ExploitLog = function(Player, MESSAGE)
			local Tab = Settings.Data["EXPLOIT"]
			local Stack = getfenv(2)
			local Reporting		

			--// Get the script Stack Ooo
			if Stack.script ~= nil then
				Reporting = Stack.script:GetFullName()
			else
				Reporting = "Unknown"
			end

			local Data = {
				["embeds"] = {{
		            ["title"] = "Exploit Log",
		            ["description"] = "[[Game]](https://www.roblox.com/games/".. tostring(game.PlaceId).."/) - ".. tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name),
					["type"] = "rich",
					["color"] = tonumber(Tab.Color) or 0,
					["thumbnail"] = {
				      ["url"] = Icon
				    },
		            ["fields"] = {
						{
							["name"] = "Report",
							["value"] = MESSAGE,
						},
						{
							["name"] = "Reported Player",
							["value"] = tostring(Player.Name) .." (".. tostring(Player.UserId)..")",
						},
						{
							["name"] = "Stack",
							["value"] = tostring(Reporting),
						},
		                {
							["name"] = "JobID;",
							["value"] = tostring(Job),
						},
						{
							["name"] = "Number of Players;";
							["value"] = tostring(#game:GetService("Players"):GetChildren()),
						},
						{
							["name"] = "Server Version",
							["value"] = tostring(Version),
						}
		            },
		            ["footer"] = {
		                ["icon_url"] = "https://t0.rbxcdn.com/0d00f60ee01d1d375e192b1cc9572fd5",
		                ["text"] = "Phoenix's Game Logger™",
		            }
		
		        }},
		    }
			
			RequestAsync(Tab.URL, "POST", Data, false)
		end;
	};
}