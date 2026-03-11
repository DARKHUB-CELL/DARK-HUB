------------------------------------------------
-- RED HUB SYSTEM
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
        wait(1)

        ScreenGui:Destroy()

        ---------------- LOADING ----------------

        local LoadGui = Instance.new("ScreenGui")
        LoadGui.Parent = game.CoreGui

        local Frame = Instance.new("Frame")
        Frame.Parent = LoadGui
        Frame.Size = UDim2.new(0,420,0,250)
        Frame.Position = UDim2.new(0.5,-210,0.5,-125)
        Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)

        local TitleLoading = Instance.new("TextLabel")
        TitleLoading.Parent = Frame
        TitleLoading.Size = UDim2.new(1,0,0,40)
        TitleLoading.Position = UDim2.new(0,0,0.05,0)
        TitleLoading.BackgroundTransparency = 1
        TitleLoading.TextScaled = true
        TitleLoading.Text = "🔴 RED HUB LOADING"

        local LoadText = Instance.new("TextLabel")
        LoadText.Parent = Frame
        LoadText.Size = UDim2.new(1,0,0,40)
        LoadText.Position = UDim2.new(0,0,0.3,0)
        LoadText.BackgroundTransparency = 1
        LoadText.TextScaled = true
        LoadText.Text = "Initializing..."

        local Percent = Instance.new("TextLabel")
        Percent.Parent = Frame
        Percent.Size = UDim2.new(1,0,0,30)
        Percent.Position = UDim2.new(0,0,0.45,0)
        Percent.BackgroundTransparency = 1
        Percent.TextScaled = true
        Percent.Text = "0%"

        local BarBack = Instance.new("Frame")
        BarBack.Parent = Frame
        BarBack.Size = UDim2.new(0.8,0,0,20)
        BarBack.Position = UDim2.new(0.1,0,0.65,0)
        BarBack.BackgroundColor3 = Color3.fromRGB(200,200,200)

        local Bar = Instance.new("Frame")
        Bar.Parent = BarBack
        Bar.Size = UDim2.new(0,0,1,0)
        Bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

        local Music = Instance.new("Sound")
        Music.Parent = Frame
        Music.SoundId = "rbxassetid://142376088"
        Music.Volume = 2
        Music:Play()

        for i = 0,100 do
            Percent.Text = i.."%"
            Bar.Size = UDim2.new(i/100,0,1,0)
            wait(0.9)
        end

        Music:Stop()
        LoadGui:Destroy()

        ---------------- CAPTCHA ----------------

        local CaptchaGui = Instance.new("ScreenGui")
        CaptchaGui.Parent = game.CoreGui

        local Frame2 = Instance.new("Frame")
        Frame2.Parent = CaptchaGui
        Frame2.Size = UDim2.new(0,400,0,220)
        Frame2.Position = UDim2.new(0.5,-200,0.5,-110)
        Frame2.BackgroundColor3 = Color3.fromRGB(255,255,255)

        local Title2 = Instance.new("TextLabel")
        Title2.Parent = Frame2
        Title2.Size = UDim2.new(1,0,0,40)
        Title2.TextScaled = true
        Title2.BackgroundTransparency = 1
        Title2.Text = "🔒 SECURITY CHECK"

        local Info = Instance.new("TextLabel")
        Info.Parent = Frame2
        Info.Size = UDim2.new(1,0,0,30)
        Info.Position = UDim2.new(0,0,0.2,0)
        Info.BackgroundTransparency = 1
        Info.TextScaled = true
        Info.Text = "Type the captcha"

        local CaptchaLabel = Instance.new("TextLabel")
        CaptchaLabel.Parent = Frame2
        CaptchaLabel.Size = UDim2.new(1,0,0,40)
        CaptchaLabel.Position = UDim2.new(0,0,0.4,0)
        CaptchaLabel.BackgroundTransparency = 1
        CaptchaLabel.TextScaled = true

        local Input = Instance.new("TextBox")
        Input.Parent = Frame2
        Input.Size = UDim2.new(0.6,0,0,35)
        Input.Position = UDim2.new(0.2,0,0.6,0)
        Input.Text = ""
        Input.TextScaled = true
        Input.BackgroundColor3 = Color3.fromRGB(240,240,240)

        local ConfirmCaptcha = Instance.new("TextButton")
        ConfirmCaptcha.Parent = Frame2
        ConfirmCaptcha.Size = UDim2.new(0.25,0,0,35)
        ConfirmCaptcha.Position = UDim2.new(0.15,0,0.8,0)
        ConfirmCaptcha.Text = "Confirm"

        local ResetCaptcha = Instance.new("TextButton")
        ResetCaptcha.Parent = Frame2
        ResetCaptcha.Size = UDim2.new(0.25,0,0,35)
        ResetCaptcha.Position = UDim2.new(0.6,0,0.8,0)
        ResetCaptcha.Text = "Reset"

        local captchaList = {
        "K7P2X","9QW4M","Z8T5L","P3X9K","R6N2V",
        "5H8YT","L2W9C","X7D4B","T9P6Q","8K2ZR",
        "Q5N8T","A7P3L","M2X9W","C6R4Z","T8B2K",
        "J4Y9H","D7F3Q","U5L8P","N2X6C","W9K4T",
        "G3Z7R","H8P5D","K6M2Y","V4T9Q","B7X3L",
        "E5N8W","S2R6K","F9P4C","Y3T7H","L8D2Z"
        }

        local captcha

        local function newCaptcha()
            captcha = captchaList[math.random(1,#captchaList)]
            CaptchaLabel.Text = captcha
            CaptchaLabel.Rotation = math.random(-20,20)
        end

        newCaptcha()

        ConfirmCaptcha.MouseButton1Click:Connect(function()

            local text = string.upper(Input.Text:gsub("%s",""))

            if text == captcha then

                CaptchaGui:Destroy()

                local Done = Instance.new("TextLabel")
                Done.Parent = game.CoreGui
                Done.Size = UDim2.new(1,0,1,0)
                Done.BackgroundTransparency = 1
                Done.TextScaled = true
                Done.Text = "🔴 RED HUB READY"

            else

                Input.Text = ""
                newCaptcha()

            end

        end)

        ResetCaptcha.MouseButton1Click:Connect(function()

            Input.Text = ""
            newCaptcha()

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
        wait(0.05)
    end
end)
