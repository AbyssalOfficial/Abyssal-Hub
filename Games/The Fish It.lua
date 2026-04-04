local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BackgroundTransparency = 0.4
Frame.Active = true
Frame.Draggable = true

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 10)

local UIGradient = Instance.new("UIGradient", Frame)
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}

local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "New version!"
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.new(1,1,1)

local Subtitle = Instance.new("TextLabel")
Subtitle.Parent = Frame
Subtitle.Position = UDim2.new(0, 0, 0, 40)
Subtitle.Size = UDim2.new(1, 0, 0, 30)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Join Discord"
Subtitle.TextScaled = true
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextColor3 = Color3.new(1,1,1)

local Button = Instance.new("TextButton")
Button.Parent = Frame
Button.Position = UDim2.new(0.1, 0, 0.6, 0)
Button.Size = UDim2.new(0.8, 0, 0.25, 0)
Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Button.Text = "Copy Discord Link"
Button.TextScaled = true
Button.Font = Enum.Font.GothamBold
Button.TextColor3 = Color3.new(1,1,1)

local BtnCorner = Instance.new("UICorner", Button)
BtnCorner.CornerRadius = UDim.new(0, 8)

Button.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/RGBCNp38cJ")
	end
end)
