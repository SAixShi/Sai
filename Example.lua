-- Load your UI Library
local DM = loadstring(game:HttpGet("https://raw.githubusercontent.com/SAixShi/Sai/refs/heads/main/Ss"))()

-- Create a window
local win = DM:CreateWindow("DarkMirrorClassicUI", "Example Hub")

-- Create Tabs
local homeTab = win:CreateTab("Home")
local farmTab = win:CreateTab("AutoFarm")
local miscTab = win:CreateTab("Misc")

-- Example Toggle
homeTab:CreateToggle("God Mode", function(state)
    print("God Mode:", state)
end)

-- Example Slider
homeTab:CreateSlider("WalkSpeed", 16, 200, 50, function(val)
    print("WalkSpeed set to:", val)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)

-- Example Dropdown
farmTab:CreateDropdown("Farm Mode", {"Coins","Gems","XP"}, function(opt)
    print("Selected Farm Mode:", opt)
end)

-- Example Textbox
miscTab:CreateTextbox("Say Message", "Type here...", function(text)
    print("You typed:", text)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end)

-- Example Button
miscTab:CreateButton("Reset Character", function()
    game.Players.LocalPlayer.Character:BreakJoints()
end)

-- 🌍 Global Callback (catches all UI events)
DM:SetCallback(function(elementType, name, value)
    print("Global ->", elementType, name, value)
end)
