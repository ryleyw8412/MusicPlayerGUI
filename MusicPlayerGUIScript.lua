-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.100
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.564312935, 0, 0.357635468, 0)
Frame.Size = UDim2.new(0.327695727, 0, 0.307881773, 0)
Frame.Active = true
Frame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 0.187199995, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Music Player"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0968773663, 0, 0.185599998, 0)
TextBox.Size = UDim2.new(0.80319041, 0, 0.211999997, 0)
TextBox.Font = Enum.Font.FredokaOne
TextBox.PlaceholderText = "Roblox Music ID (Game must have access - I recommend using an Audio logger to get id's from the game)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = TextBox

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0968767554, 0, 0.499199986, 0)
TextButton.Size = UDim2.new(0.375813901, 0, 0.40079999, 0)
TextButton.Font = Enum.Font.FredokaOne
TextButton.Text = "Play Music"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = TextButton

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.524469852, 0, 0.499199986, 0)
TextButton_2.Size = UDim2.new(0.375813901, 0, 0.40079999, 0)
TextButton_2.Font = Enum.Font.FredokaOne
TextButton_2.Text = "Stop music"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = TextButton_2

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.943711281, 0, -0.0799999982, 0)
TextButton_3.Size = UDim2.new(0.0997161716, 0, 0.184640229, 0)
TextButton_3.Font = Enum.Font.FredokaOne
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 100)
UICorner_5.Parent = TextButton_3

UIAspectRatioConstraint.Parent = TextButton_3

TextButton.Activated:Connect(function()
	local oldMusic = TextButton_2:FindFirstChildWhichIsA("Sound")

	if oldMusic then
		oldMusic:Destroy()
	end
	local Music = Instance.new("Sound", TextButton_2)
	Music.SoundId = "rbxassetid://"..TextBox.Text
	Music.Looped = true
	Music:Play()
end)

TextButton_2.Activated:Connect(function()
	local oldMusic = TextButton_2:FindFirstChildWhichIsA("Sound")

	if oldMusic then
		oldMusic:Destroy()
	end
end)

TextButton_3.Activated:Connect(function()
	Frame:Destroy()
end)
