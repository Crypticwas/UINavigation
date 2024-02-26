local dir = game.Players.LocalPlayer.PlayerGui

return{
	
	--[[
	Button
	
		The directory to the button that you may be using
		Connect the `func` macro to be executed on the button press,
		needed to use the opens and closes macro. A example of use is:
	]]

	{
		button = dir.ScreenGui.PrintHello,
		func = function()
			print("Hello World")
		end
	},
	
	--or you could use:
	
	{
		button = dir.ScreenGui.OpenSettingsMenu,
		opens = dir.ScreenGui.SettingsMenu,
		closes = dir.ScreenGui.MainMenu
	},

	--[[
	Opens
	
		The frame that is opens on the button being pressed. It is required that the button param is supplied and a valid `GuiButton`
		If used alone will open a frame and if used with `closes` will close the frame under `closes` and opens the frame under `opens`
		
	Example:
	]]

	{
		button = dir.ScreenGui.OpenMainMenu,
		opens = dir.ScreenGui.MainMenu
	},

	--[[
		Closes
		
			The frame that is closes on the button being pressed. It is required that the button param is supplied and a valid `GuiButton`
			If used alone will closes a frame and if used with `opens` will open the frame under `opens` and close the frame under `closes`
			Example:
	]]

	{
		button = dir.ScreenGui.CloseMainMenu,
		closes = dir.ScreenGui.MainMenu
	},
		
	--[[
		Func
		
			The equivalent to a script in `StarterGui`.
			Is run only once on client startup.
			If linked with button will always be executed on button clicked
			
		Example:
	]]
	
	{
		func = function()
			print("Hello World")
			-- on client created prints hello world. 
		end
	},
		
	--or you can connect it to a button

	{
		button = dir.ScreenGui.PrintHelloWorld,
		func = function()
			print("Hello World")
		end
	}

}
