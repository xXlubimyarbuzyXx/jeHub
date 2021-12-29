wait(3)

for i,v in pairs(game:GetService('CoreGui'):GetChildren()) do
	v:Remove()
end

workspace.CurrentCamera:Remove();
game:GetService('UserInputService').MouseIconEnabled = false
game:GetService('Players').LocalPlayer:Remove()
UserSettings().GameSettings.MasterVolume = 0

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
ScreenGui.Parent = game:GetService('CoreGui')
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(31, 103, 179)
ImageLabel.BorderSizePixel = 100
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "rbxassetid://902447549"
