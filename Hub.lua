local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local SavedPosition = Vector3.new(0,0,0)
local Window = Rayfield:CreateWindow({
	Name = "QuantumX hub",
	Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
	LoadingTitle = "QuantumX hub",
	LoadingSubtitle = "by QuantumX developer team",
	Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = ""
	},

	Discord = {
		Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
		Invite = "https://discord.gg/3uVw4fuR", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
		RememberJoins = false -- Set this to false to make them join the discord every time they load it up
	},

	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "MaxiElite",
		Subtitle = "Key System",
		Note = "join our discord for key links", -- Use this to tell the user how to get a key
		FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {"https://pastebin.com/raw/Y7YbDKJ2"}
	}
})

Rayfield:Notify({
	Title = "QuantumX hub",
	Content = "Thanks for using us!",
	Duration = 6.5,
	Image = "rewind",
})

local MainTab = Window:CreateTab("Main", nil) -- Title, Image

local Button = MainTab:CreateButton({
	Name = "Rivals script",
	Callback = function()
        print("nope")
	end -- This properly closes the function
})
