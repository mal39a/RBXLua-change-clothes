# Re-run after code environment reset: regenerate and save the Lua script

lua_script = """
-- GUI Script for Avatar Changer
-- By: ملاك

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create UI
local ScreenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
ScreenGui.ResetOnSpawn = false
ScreenGui.Name = "AvatarChanger"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 120)
Frame.Position = UDim2.new(0.5, -150, 0.5, -60)
Frame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Frame.BackgroundTransparency = 0.2
Frame.BorderSizePixel = 0
Frame.Name = "MainFrame"

local TextBox = Instance.new("TextBox", Frame)
TextBox.PlaceholderText = "أدخل كود السكن (ID)"
TextBox.Size = UDim2.new(0.9, 0, 0, 40)
TextBox.Position = UDim2.new(0.05, 0, 0.15, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.TextScaled = true

local Button = Instance.new("TextButton", Frame)
Button.Text = "استخدم السكن"
Button.Size = UDim2.new(0.9, 0, 0, 40)
Button.Position = UDim2.new(0.05, 0, 0.6, 0)
Button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.SourceSansBold
Button.TextScaled = true

-- On click: change avatar
Button.MouseButton1Click:Connect(function()
    local id = TextBox.Text
    if id and tonumber(id) then
        local humanoidDescription = Instance.new("HumanoidDescription")
        humanoidDescription.HatAccessory = id
        humanoidDescription.BackAccessory = id
        humanoidDescription.FrontAccessory = id
        humanoidDescription.NeckAccessory = id
        humanoidDescription.FaceAccessory = id
        humanoidDescription.ShoulderAccessory = id
        humanoidDescription.Pants = id
        humanoidDescription.Shirt = id
        humanoidDescription.GraphicTShirt = id
        humanoidDescription.Face = id
        humanoidDescription.Head = id
        humanoidDescription.Torso = id
        humanoidDescription.LeftArm = id
        humanoidDescription.RightArm = id
        humanoidDescription.LeftLeg = id
        humanoidDescription.RightLeg = id
        player.Character.Humanoid:ApplyDescription(humanoidDescription)
    end
end)
"""

file_path = "/mnt/data/AvatarScript.lua"
with open(file_path, "w", encoding="utf-8") as f:
    f.write(lua_script)

file_path
