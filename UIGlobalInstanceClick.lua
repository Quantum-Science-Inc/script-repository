UI_INSTANCE.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.KeyCode == Enum.KeyCode.ButtonR2 then
        --- CODE HERE
    end
end)

UI_INSTANCE.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.KeyCode == Enum.KeyCode.ButtonR2 then
        -- CODE HERE
    end
end)