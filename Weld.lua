--[[
    <ModuleScript>
    Welder thingy
    Phoenix
]]

local Weld = function(From, To)
	local WeldIns = Instance.new("WeldConstraint")
	WeldIns.Part0 = From
	WeldIns.Part1 = To
	WeldIns.Parent = From
	WeldIns.Name = "Weld"
end

return function(WeldTree, OverrideCenter)
	local Center = nil
	
	if OverrideCenter == nil then
		if WeldTree:FindFirstChildOfClass("MeshPart") then
			Center = WeldTree:FindFirstChildOfClass("MeshPart")
		elseif WeldTree:FindFirstChildOfClass("Part") then
			Center = WeldTree:FindFirstChildOfClass("Part")
		elseif WeldTree:FindFirstChildOfClass("UnionOperation") then
			Center = WeldTree:FindFirstChildOfClass("UnionOperation")
		end
	else
		Center = OverrideCenter
	end

	if Center ~= nil then
		for Index, ToWeld in pairs(WeldTree:GetDescendants()) do
			if ToWeld:IsA("BasePart") then
				Weld(ToWeld, Center)
			end
        end
        
        if WeldTree:IsA("BasePart") then
            Weld(WeldTree, Center)
        end
	else
		print("Could not get a part to weld to! Attempted ".. tostring(WeldTree:GetFullName()).. " By: ".. getfenv(2).script:GetFullName())
	end
end