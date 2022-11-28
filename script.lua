local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Name", "RJTheme3")
local player = Window:NewTab("player")
local Section = player:NewSection("settings")


Section:NewToggle("MegaJump", "MegaJump ON/OFF", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

local teleport = Window:NewTab("teleport")
local Section = teleport:NewSection("settings")

Section:NewButton("TP DevilFruit", "teleport to DevilFruit", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1611.09485, 16.2000656, 133.827881, 0.499959469, -0, -0.866048813, 0, 1, -0, 0.866048813, 0, 0.499959469)
end)