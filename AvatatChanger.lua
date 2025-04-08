Enter-- إنشاء واجهة المستخدم
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local ApplyButton = Instance.new("TextButton")

-- خصائص ScreenGui
ScreenGui.Name = "AvatarChangerGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- خصائص Frame
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -50)
Frame.Size = UDim2.new(0, 300, 0, 100)

-- خصائص TextBox
TextBox.Parent = Frame
TextBox.PlaceholderText = "أدخل معرف السكن هنا"
TextBox.Font = Enum.Font.SourceSans
TextBox.TextSize = 18
TextBox.Size = UDim2.new(0, 280, 0, 40)
TextBox.Position = UDim2.new(0, 10, 0, 10)

-- خصائص ApplyButton
ApplyButton.Parent = Frame
ApplyButton.Text = "تطبيق السكن"
ApplyButton.Font = Enum.Font.SourceSansBold
ApplyButton.TextSize = 18
ApplyButton.Size = UDim2.new(0, 280, 0, 40)
ApplyButton.Position = UDim2.new(0, 10, 0, 50)
ApplyButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
ApplyButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- وظيفة الزر
ApplyButton.MouseButton1Click:Connect(function()
    local assetId = tonumber(TextBox.Text)
    if assetId then
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local description = humanoid:GetAppliedDescription()
            description.Shirt = assetId
            humanoid:ApplyDescription(description)
        end
    else
        warn("يرجى إدخال معرف صالح.")
    end
end)
