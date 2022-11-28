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
local teleport_table = {
    location1 = Vector3.new(1611.09485, 16.2000656, 133.827881, 0.499959469, -0, -0.866048813, 0, 1, -0, 0.866048813, 0, 0.499959469), -- your desired position
    location2 = Vector3.new()  -- your desired position
}

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function bypass_teleport(v)
    if lp.Character and 
    lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
        -- a.Completed:Wait()
        -- print('Teleporting Done!')
    end
end

bypass_teleport(teleport_table.location1)
end)
