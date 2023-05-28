local Ambush = game:GetObjects("rbxassetid://13571621474")[1]
print(Ambush.Name)
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Ambush" then
        v:Destroy()
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if v:IsA("MeshPart") then
        v.Transparency = 1
    end
    if v:IsA("Part") then
        v.Transparency = 1
    end
    if v:IsA("Accessory") then
        v:Destroy()
    end
    game.Players.LocalPlayer.Character.Head.face.Transparency = 1
end
for i,v in pairs(Ambush:GetChildren()) do
    if v.Name == "Highlight" then
        v.Enabled = true
    end
end
Ambush.Parent = game.Workspace
Ambush.Torso.Anchored = true
Ambush:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -7))
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

while RunService.Heartbeat:Wait() do
	local NearestPlayer = GetNearestPlayer()
	if NearestPlayer == nil then continue end
	Model:SetPrimaryPartCFrame(CFrame.new(Model.PrimaryPart.Position, NearestPlayer.Character.PrimaryPart.Position))
end 

