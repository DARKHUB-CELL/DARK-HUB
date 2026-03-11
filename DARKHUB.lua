------------------------------------------------
-- RED HUB SYSTEM (FULL)
------------------------------------------------

local ScreenGui = Instance.new("ScreenGui")
local Outer = Instance.new("Frame")
local Inner = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local GetKey = Instance.new("TextButton")
local Confirm = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Outer.Parent = ScreenGui
Outer.Size = UDim2.new(0,420,0,250)
Outer.Position = UDim2.new(0.5,-210,0.5,-125)
Outer.BorderSizePixel = 0

Inner.Parent = Outer
Inner.Size = UDim2.new(1,-10,1,-10)
Inner.Position = UDim2.new(0,5,0,5)
Inner.BackgroundColor3 = Color3.fromRGB(255,255,255)

Title.Parent = Inner
Title.Text = "🔴 RED HUB"
Title.Size = UDim2.new(1,0,0,40)
Title.TextScaled = true
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.new(0,0,0)

Status.Parent = Inner
Status.Text = "🔑 Waiting for key..."
Status.Size = UDim2.new(1,0,0,30)
Status.Position = UDim2.new(0,0,0.2,0)
Status.BackgroundTransparency = 1
Status.TextColor3 = Color3.new(0,0,0)

GetKey.Parent = Inner
GetKey.Text = "📋 Get Key"
GetKey.Size = UDim2.new(0,120,0,40)
GetKey.Position = UDim2.new(0.1,0,0.35,0)

Confirm.Parent = Inner
Confirm.Text = "✅ Confirm"
Confirm.Size = UDim2.new(0,120,0,40)
Confirm.Position = UDim2.new(0.6,0,0.35,0)

local boxes = {}

for i = 1,5 do
    local box = Instance.new("TextBox")
    box.Parent = Inner
    box.Size = UDim2.new(0,40,0,40)
    box.Position = UDim2.new(0.1 + (i-1)*0.16,0,0.6,0)
    box.Text = ""
    box.TextScaled = true
    box.BackgroundColor3 = Color3.fromRGB(240,240,240)
    table.insert(boxes,box)
end

local function getKey()
    local key = ""
    for i,v in pairs(boxes) do
        key = key..v.Text
    end
    return key
end

GetKey.MouseButton1Click:Connect(function()
    setclipboard("https://www.youtube.com/")
    Status.Text = "📋 Link copied!"
end)

Confirm.MouseButton1Click:Connect(function()

local key = getKey()

if key == "60132" or key == "90718" then

Status.Text = "✅ Access granted!"
task.wait(1)
ScreenGui:Destroy()

------------------------------------------------
-- LOADING
------------------------------------------------

local LoadGui = Instance.new("ScreenGui")
LoadGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Parent = LoadGui
Frame.Size = UDim2.new(0,420,0,200)
Frame.Position = UDim2.new(0.5,-210,0.5,-100)
Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)

local Text = Instance.new("TextLabel")
Text.Parent = Frame
Text.Size = UDim2.new(1,0,0,40)
Text.TextScaled = true
Text.BackgroundTransparency = 1
Text.Text = "🔴 RED HUB LOADING"

local Percent = Instance.new("TextLabel")
Percent.Parent = Frame
Percent.Size = UDim2.new(1,0,0,40)
Percent.Position = UDim2.new(0,0,0.4,0)
Percent.BackgroundTransparency = 1
Percent.TextScaled = true
Percent.Text = "0%"

for i=1,100 do
Percent.Text = i.."%"
task.wait(0.03)
end

LoadGui:Destroy()

------------------------------------------------
-- CAPTCHA
------------------------------------------------

local CaptchaGui = Instance.new("ScreenGui")
CaptchaGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Parent = CaptchaGui
Frame.Size = UDim2.new(0,400,0,220)
Frame.Position = UDim2.new(0.5,-200,0.5,-110)
Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)

local CaptchaLabel = Instance.new("TextLabel")
CaptchaLabel.Parent = Frame
CaptchaLabel.Size = UDim2.new(1,0,0,40)
CaptchaLabel.Position = UDim2.new(0,0,0.2,0)
CaptchaLabel.BackgroundTransparency = 1
CaptchaLabel.TextScaled = true

local Input = Instance.new("TextBox")
Input.Parent = Frame
Input.Size = UDim2.new(0.6,0,0,35)
Input.Position = UDim2.new(0.2,0,0.5,0)
Input.TextScaled = true

local ConfirmCaptcha = Instance.new("TextButton")
ConfirmCaptcha.Parent = Frame
ConfirmCaptcha.Size = UDim2.new(0.4,0,0,35)
ConfirmCaptcha.Position = UDim2.new(0.3,0,0.75,0)
ConfirmCaptcha.Text = "Confirm"

local captcha = "A1B2C"
CaptchaLabel.Text = captcha

ConfirmCaptcha.MouseButton1Click:Connect(function()

if string.upper(Input.Text) == captcha then

CaptchaGui:Destroy()

------------------------------------------------
-- MENU
------------------------------------------------

local MenuGui = Instance.new("ScreenGui")
MenuGui.Parent = game.CoreGui

local Border = Instance.new("Frame")
Border.Parent = MenuGui
Border.Size = UDim2.new(0,520,0,320)
Border.Position = UDim2.new(0.5,-260,0.5,-160)
Border.BorderSizePixel = 0

local Main = Instance.new("Frame")
Main.Parent = Border
Main.Size = UDim2.new(1,-6,1,-6)
Main.Position = UDim2.new(0,3,0,3)
Main.BackgroundColor3 = Color3.fromRGB(255,255,255)

local TopBar = Instance.new("Frame")
TopBar.Parent = Main
TopBar.Size = UDim2.new(1,0,0,35)
TopBar.BackgroundColor3 = Color3.fromRGB(40,40,40)

local Title = Instance.new("TextLabel")
Title.Parent = TopBar
Title.Size = UDim2.new(1,0,1,0)
Title.BackgroundTransparency = 1
Title.Text = "RedHub 1.1 beta"
Title.TextColor3 = Color3.new(1,1,1)
Title.TextScaled = true

local Tab = Instance.new("Frame")
Tab.Parent = Main
Tab.Size = UDim2.new(0,150,1,-35)
Tab.Position = UDim2.new(0,0,0,35)
Tab.BackgroundColor3 = Color3.fromRGB(0,170,255)

local Content = Instance.new("Frame")
Content.Parent = Main
Content.Size = UDim2.new(1,-150,1,-35)
Content.Position = UDim2.new(0,150,0,35)
Content.BackgroundColor3 = Color3.fromRGB(0,170,255)

spawn(function()

local hue = 0

while true do

hue = hue + 0.01
if hue > 1 then hue = 0 end

Border.BackgroundColor3 = Color3.fromHSV(hue,1,1)

task.wait(0.03)

end

end)

end

end)

else
Status.Text = "❌ Wrong key!"
end

end)

spawn(function()

local hue = 0

while true do

hue = hue + 0.01
if hue > 1 then hue = 0 end

Outer.BackgroundColor3 = Color3.fromHSV(hue,1,1)

task.wait(0.05)

end

end)
