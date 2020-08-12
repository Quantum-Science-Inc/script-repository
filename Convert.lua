local Convert = function(Index, Script)
	if Script.ClassName == "Script" then
		local Source = Script.Source
		Source = "return function()\n".. Source
		Source = Source.."\nend"
		
		local NewModule = Instance.new("ModuleScript")
		NewModule.Source = Source
		NewModule.Parent = Script.Parent
		NewModule.Name = Script.Name
		
		for Index, Child in pairs(Script:GetChildren()) do
			Child.Parent = NewModule
		end
		
		Script.Name = "OLD_".. Script.Name
	end
end

table.foreach(game.ServerScriptService.Server.Scripts.Server.Meltdown:GetChildren(), Convert)