local userId = "475706351"
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Script By JohnyGaming#2917", -- Required
	Text = "A-666 entity script created by JohnyGaming#2917, please credit me if you make a video with this script! :)", -- Required
	Icon = content, -- Optional
	Duration = 10
})
while true do
  randomnumber = math.random(45, 150)
  wait(randomnumber)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/JohnyGamingLUA/A-666/main/summon.lua"))()
end
