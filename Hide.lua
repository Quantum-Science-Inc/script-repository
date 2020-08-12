local Cache = {}

local Hide = function(...)
	Cache = {}
	
	local HideFunction = function(Ins)
		if Ins:IsA("BasePart") then
			Cache[Ins] = {["Transparency"] = Ins.Transparency,["CanCollide"] = Ins.CanCollide}
			Ins.Transparency = 1
			Ins.CanCollide = false
		elseif Ins:IsA("FaceInstance") then
			Cache[Ins] = {["Transparency"] = Ins.Transparency}
			Ins.Transparency = 1
		elseif Ins:IsA("RopeConstraint") then
			Cache[Ins] = {["Enabled"] = Ins.Enabled,["Visible"] = Ins.Visible}
			Ins.Enabled = false
			Ins.Visible = false
		elseif Ins:IsA("GuiObject") then
			Cache[Ins] = {["Visible"] = Ins.Visible}
			Ins.Visible = false
		elseif Ins:IsA("LayerCollector") then
			Cache[Ins] = {["Enabled"] = Ins.Enabled}
			Ins.Enabled = false
		elseif Ins:IsA("Light") then
			Cache[Ins] = {["Enabled"] = Ins.Enabled}
			Ins.Enabled = true
		elseif Ins:IsA("Sound") then
			Cache[Ins] = {["Playing" = Ins.Playing]}
			Ins:Stop()
		end
	end
	
	for Index, Ins in pairs({...}) do
		HideFunction(Ins)

		for Index, Des in pairs(Ins:GetDescendants()) do
			HideFunction(Des)
		end
	end
end

local UnHide = function()
	for Ins, Table in pairs(Cache) do
		if Ins ~= nil then
			for Property, Value in pairs(Table) do
				Ins[Property] = Value
			end
		end
	end
	
	Cache = {}
end