------------------------------------------------
-- RED HUB SIMPLE SYSTEM
-- KEY → LOADING 90s → CAPTCHA
------------------------------------------------

local CoreGui = game:GetService("CoreGui")

------------------------------------------------
-- KEY GUI
------------------------------------------------

local KeyGui = Instance.new("ScreenGui")
KeyGui.Parent = CoreGui

local Frame = Instance.new("Frame")
Frame.Parent = KeyGui
Frame.Size = UDim2.new(0,400,0,220)
Frame.Position = UDim2.new(0.5,-200,0.5,-110)
Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)

local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,40)
Title.Text = "RED HUB KEY"
Title.TextScaled = true
Title.BackgroundTransparency = 1

local KeyBox = Instance.new("TextBox")
KeyBox.Parent = Frame
KeyBox.Size = UDim2.new(0,200,0,40)
KeyBox.Position = UDim2.new(0.5,-100,0.4,0)
KeyBox.PlaceholderText = "Enter Key"

local Confirm = Instance.new("TextButton")
Confirm.Parent = Frame
Confirm.Size = UDim2.new(0,120,0,40)
Confirm.Position = UDim2.new(0.5,-60,0.7,0)
Confirm.Text = "Confirm Key"

------------------------------------------------
-- KEY CHECK
------------------------------------------------

local KEY = "60132"

Confirm.MouseButton1Click:Connect(function()

if KeyBox.Text == KEY then

KeyGui:Destroy()

------------------------------------------------
-- LOADING GUI
------------------------------------------------

local LoadGui = Instance.new("ScreenGui")
LoadGui.Parent = CoreGui

local Frame = Instance.new("Frame")
Frame.Parent = LoadGui
Frame.Size = UDim2.new(0,420,0,200)
Frame.Position = UDim2.new(0.5,-210,0.5,-100)
Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)

local Text = Instance.new("TextLabel")
Text.Parent = Frame
Text.Size = UDim2.new(1,0,0,50)
Text.Text = "Loading RedHub..."
Text.TextScaled = true
Text.BackgroundTransparency = 1

local BarBG = Instance.new("Frame")
BarBG.Parent = Frame
BarBG.Size = UDim2.new(0.8,0,0,20)
BarBG.Position = UDim2.new(0.1,0,0.6,0)
BarBG.BackgroundColor3 = Color3.fromRGB(200,200,200)

local Bar = Instance.new("Frame")
Bar.Parent = BarBG
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

------------------------------------------------
-- LOADING 90s
------------------------------------------------

for i = 1,100 do
Bar.Size = UDim2.new(i/100,0,1,0)
task.wait(0.9)
end

LoadGui:Destroy()

------------------------------------------------
-- CAPTCHA
------------------------------------------------

local CaptchaGui = Instance.new("ScreenGui")
CaptchaGui.Parent = CoreGui

local Frame = Instance.new("Frame")
Frame.Parent = CaptchaGui
Frame.Size = UDim2.new(0,400,0,220)
Frame.Position = UDim2.new(0.5,-200,0.5,-110)
Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)

local Label = Instance.new("TextLabel")
Label.Parent = Frame
Label.Size = UDim2.new(1,0,0,40)
Label.Text = "Verify you are human"
Label.TextScaled = true
Label.BackgroundTransparency = 1

local CaptchaLabel = Instance.new("TextLabel")
CaptchaLabel.Parent = Frame
CaptchaLabel.Size = UDim2.new(0,150,0,50)
CaptchaLabel.Position = UDim2.new(0.5,-75,0.3,0)
CaptchaLabel.BackgroundColor3 = Color3.fromRGB(200,200,200)
CaptchaLabel.TextScaled = true

local Input = Instance.new("TextBox")
Input.Parent = Frame
Input.Size = UDim2.new(0,150,0,40)
Input.Position = UDim2.new(0.5,-75,0.6,0)

local ConfirmCaptcha = Instance.new("TextButton")
ConfirmCaptcha.Parent = Frame
ConfirmCaptcha.Size = UDim2.new(0,120,0,40)
ConfirmCaptcha.Position = UDim2.new(0.5,-60,0.8,0)
ConfirmCaptcha.Text = "Confirm"

------------------------------------------------
-- CAPTCHA SYSTEM
------------------------------------------------

local captchaList = {
"A3F9","H7K2","Z8Q1","R2D6","T9P4",
"L5M8","B4X7","Q2W9","P8K1","S3T6"
}

local captcha

local function newCaptcha()

captcha = captchaList[math.random(1,#captchaList)]
CaptchaLabel.Text = captcha
CaptchaLabel.Rotation = math.random(-25,25)

end

newCaptcha()

ConfirmCaptcha.MouseButton1Click:Connect(function()

local text = string.upper(Input.Text)

if text == captcha then

CaptchaGui:Destroy()

print("Captcha success")

else

Input.Text = ""
newCaptcha()

end

end)

end

end)
