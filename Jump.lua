local Player = game:GetService("Players").LocalPlayer

local Button = script.Parent
local Vel = Instance.new("BodyForce")

local GetCharacter = function()
	if not Player.Character then
		Player.CharacterAdded:Wait()
	end
	
	if Vel == nil then
		Vel = Instance.new("BodyForce")
	end
	
	Vel.Parent = Player.Character.HumanoidRootPart
	
	return Player.Character
end


local GetMass = function(Tree)
	local Mass = 0
	
	for Index, Des in pairs(Tree:GetDescendants()) do
		if Des:IsA("BasePart") then
			Mass = Mass + Des:GetMass()
		end
	end
	
	if Tree:IsA("BasePart") then
		Mass = Mass + Tree:GetMass()
	end
	
	return Mass
end

local Jump = function()
	local Char = GetCharacter()
	local CharMass = GetMass(Char)
	
	print("Mass", CharMass)
	
	Vel.Force = Vector3.new(0, CharMass * (workspace.Gravity * 1.25), 0)
	Char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	
	wait(0.5)
	
	Vel.Force = Vector3.new(0, 0, 0)
end