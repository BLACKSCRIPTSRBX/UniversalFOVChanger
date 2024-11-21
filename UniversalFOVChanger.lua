local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local Button = Instance.new("TextButton")

ScreenGui.ResetOnSpawn = false

Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Draggable = true

TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 10, 0, 20)
TextLabel.Size = UDim2.new(0, 280, 0, 30)
TextLabel.Font = Enum.Font.Code
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Text = "FOV Changer by BLACK SCRIPTS"

TextBox.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
TextBox.Position = UDim2.new(0, 40, 0, 60)
TextBox.Size = UDim2.new(0, 220, 0, 35)
TextBox.PlaceholderText = "Enter FOV value (1-120)"
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Code
TextBox.TextColor3 = Color3.fromRGB(200, 200, 200)
TextBox.TextScaled = true
TextBox.TextXAlignment = Enum.TextXAlignment.Center

Button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Button.Position = UDim2.new(0, 85, 0, 105)
Button.Size = UDim2.new(0, 130, 0, 25)
Button.Font = Enum.Font.Code
Button.TextColor3 = Color3.fromRGB(200, 200, 200)
Button.TextScaled = true
Button.Text = "Set FOV"

function onButtonClicked()
    local fovValue = tonumber(TextBox.Text)
    
    if fovValue and fovValue >= 1 and fovValue <= 120 then
        game.Workspace.CurrentCamera.FieldOfView = fovValue
    else
        print("Invalid FOV value.")
    end
end

Button.MouseButton1Click:Connect(onButtonClicked)

ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui
TextLabel.Parent = Frame
TextBox.Parent = Frame
Button.Parent = Frame
