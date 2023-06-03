if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed > 20 then
  tospawn = 9
else
  tospawn = math.random(1, 9)
end
print(game.Players.LocalPlayer.Character.Humanoid.WalkSpeed)
--[[
Found by MuhammadGames
]]
--- Put This ModuleEvents Before Any of Events to, shatter,flicker,toggle
ModuleEvents = require(game:GetService("ReplicatedStorage").ClientModules.Module_Events)
-- Flicker Lights 
ModuleEvents.flicker(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value],3)
local Ambush = game:GetObjects("rbxassetid://13632737810")[1]
print(Ambush.Name)
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Ambush" then
        v:Destroy()
    end
end

for i,v in pairs(Ambush:GetChildren()) do
    if v.Name == "Highlight" then
        v.Enabled = true
    end
end
Ambush.Parent = game.Workspace
Ambush.Torso.Anchored = true
Ambush:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -16))
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local Model = Ambush
local function GetNearestPlayer()
	local LowestMagnitude, Player = math.huge, nil
	for i, v in pairs(Players:GetPlayers()) do
		if v.Character == nil or v.Character.PrimaryPart == nil then continue end
		local Minimum = math.min(LowestMagnitude, (v.Character.PrimaryPart.Position - Model.PrimaryPart.Position).Magnitude)
		if Minimum ~= LowestMagnitude then
			LowestMagnitude = Minimum
			Player = v
		end
	end
	return Player
end 
local aninety = false
local NearestPlayer = GetNearestPlayer()
if tospawn < 8 then
  NearestPlayer.Character.PrimaryPart.Anchored = true
end
Model:SetPrimaryPartCFrame(CFrame.new(Model.PrimaryPart.Position, NearestPlayer.Character.PrimaryPart.Position))
if tospawn == 8 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyGamingLUA/A-666/main/aninety.lua"))()
end
if tospawn == 9 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyGamingLUA/A-666/main/aninety.lua"))()
end
if tospawn == 10 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyGamingLUA/A-666/main/aninety.lua"))()
end
if tospawn < 8 then
  wait(2.5)
end
Ambush:Destroy()
NearestPlayer.Character.PrimaryPart.Anchored = false
if tospawn == 1 then
  game:GetService("Players").LocalPlayer.Character.Humanoid.Health = (game:GetService("Players").LocalPlayer.Character.Humanoid.Health - 15)
end
if tospawn == 3 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyGamingLUA/A-666/main/asixty.lua"))()
end
if tospawn == 4 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyGamingLUA/A-666/main/scribbleman.lua"))()
end
if tospawn == 5 then
  game:GetService("Players").LocalPlayer.Character.Humanoid.Health = (game:GetService("Players").LocalPlayer.Character.Humanoid.Health - 15)
end
if tospawn == 6 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyGamingLUA/A-666/main/asixty.lua"))()
end
if tospawn == 7 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyGamingLUA/A-666/main/scribbleman.lua"))()
end
