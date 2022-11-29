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

Section:NewToggle("MegaSpeed", "MegaSpeed ON/OFF", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
    end
end)

local teleport = Window:NewTab("teleport")
local Section = teleport:NewSection("settings")

Section:NewButton("TP SHOP BLOX FRUITS", "teleport", function()

    local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(5,Enum.EasingStyle.Quad); --Everytime I tried going under 5, I got kicked/detected
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-1441.53357, 61.1999283, 7.7518611, 0.499959469, -0, -0.866048813, 0, 1, -0, 0.866048813, 0, 0.499959469);

end)

Section:NewButton("TP NAME", "teleport", function()

    local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(5,Enum.EasingStyle.Quad); --Everytime I tried going under 5, I got kicked/detected
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-- cord);

end)
