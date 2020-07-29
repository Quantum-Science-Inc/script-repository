local Hide = function(...)
	local HideFunction = function(Ins)
		if Ins:IsA("BasePart") then
			Ins.Transparency = 1
			Ins.CanCollide = false
		elseif Ins:IsA("FaceInstance") then
			Ins.Transparency = 1
		elseif Ins:IsA("RopeConstraint") then
			Ins.Enabled = false
			Ins.Visible = false
		elseif Ins:IsA("GuiObject") then
			Ins.Visible = false
		elseif Ins:IsA("Sound") then
			Ins:Stop()
		elseif Ins:IsA("LayerCollector") then
			Ins.Enabled = false
		elseif Ins:IsA("Light") then
			Ins.Enabled = true
		end
	end
	
	for Index, Ins in pairs({...}) do
		HideFunction(Ins)

		for Index, Des in pairs(Ins:GetDescendants()) do
			HideFunction(Des)
		end
	end
end