local UserInputService = game:GetService('UserInputService')

local InputType   = "N/A" --// Game (Gamepad), Mobile, PC (Keyboard)

if UserInputService.GamepadEnabled then
    InputType = "Game"
elseif UserInputService.TouchEnabled then
    InputType = "Mobile"
else
    InputType = "PC"
end