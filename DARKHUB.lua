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
        local Border1 = Instance.new("Frame")
        local Border2 = Instance.new("Frame")
        local Inside = Instance.new("Frame")
        local TitleLoading = Instance.new("TextLabel")
        local LoadText = Instance.new("TextLabel")
        local Percent = Instance.new("TextLabel")
        local BarBack = Instance.new("Frame")
        local Bar = Instance.new("Frame")

        LoadGui.Parent = game.CoreGui

        Border1.Parent = LoadGui
        Border1.Size = UDim2.new(0,420,0,250)
        Border1.Position = UDim2.new(0.5,-210,0.5,-125)

        Border2.Parent = Border1
        Border2.Size = UDim2.new(1,-6,1,-6)
        Border2.Position = UDim2.new(0,3,0,3)
        Border2.BackgroundColor3 = Color3.fromRGB(0,170,255)

        Inside.Parent = Border2
        Inside.Size = UDim2.new(1,-6,1,-6)
        Inside.Position = UDim2.new(0,3,0,3)
        Inside.BackgroundColor3 = Color3.fromRGB(255,255,255)

        TitleLoading.Parent = Inside
        TitleLoading.Size = UDim2.new(1,0,0,40)
        TitleLoading.Position = UDim2.new(0,0,0.05,0)
        TitleLoading.BackgroundTransparency = 1
        TitleLoading.TextScaled = true
        TitleLoading.Text = "🔴 RED HUB LOADING"

        LoadText.Parent = Inside
        LoadText.Size = UDim2.new(1,0,0,40)
        LoadText.Position = UDim2.new(0,0,0.25,0)
        LoadText.BackgroundTransparency = 1
        LoadText.TextScaled = true
        LoadText.Text = "🔧 Initializing..."

        Percent.Parent = Inside
        Percent.Size = UDim2.new(1,0,0,30)
        Percent.Position = UDim2.new(0,0,0.45,0)
        Percent.BackgroundTransparency = 1
        Percent.TextScaled = true
        Percent.Text = "0%"

        BarBack.Parent = Inside
        BarBack.Size = UDim2.new(0.8,0,0,20)
        BarBack.Position = UDim2.new(0.1,0,0.6,0)
        BarBack.BackgroundColor3 = Color3.fromRGB(200,200,200)

        Bar.Parent = BarBack
        Bar.Size = UDim2.new(0,0,1,0)
        Bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

        local Music = Instance.new("Sound")
        Music.Parent = Inside
        Music.SoundId = "rbxassetid://142376088"
        Music.Volume = 2
        Music:Play()

        local messages = {
        "🔧 Initializing system...",
        "📦 Loading assets...",
        "🧠 Checking scripts...",
        "🖥️ Preparing interface...",
        "📂 Loading modules...",
        "⚡ Optimizing performance...",
        "📡 Syncing data...",
        "🧩 Preparing features...",
        "🔥 Finalizing setup...",
        "🚀 Starting RED HUB..."
        }

        spawn(function()

            for i = 0,100 do
                Percent.Text = i.."%"
                Bar.Size = UDim2.new(i/100,0,1,0)
                LoadText.Text = messages[math.random(1,#messages)]
                task.wait(0.07)
            end

            LoadText.Text = "✅ Loaded Successfully!"
            task.wait(1)

            Music:Stop()
            LoadGui:Destroy()

            ---------------- CAPTCHA ----------------

            local CaptchaGui = Instance.new("ScreenGui")
            CaptchaGui.Parent = game.CoreGui

            local Frame = Instance.new("Frame")
            Frame.Parent = CaptchaGui
            Frame.Size = UDim2.new(0,400,0,220)
            Frame.Position = UDim2.new(0.5,-200,0.5,-110)
            Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)

            local Title = Instance.new("TextLabel")
            Title.Parent = Frame
            Title.Size = UDim2.new(1,0,0,40)
            Title.TextScaled = true
            Title.BackgroundTransparency = 1
            Title.Text = "🔒 SECURITY CHECK"

            local Info = Instance.new("TextLabel")
            Info.Parent = Frame
            Info.Size = UDim2.new(1,0,0,30)
            Info.Position = UDim2.new(0,0,0.2,0)
            Info.BackgroundTransparency = 1
            Info.TextScaled = true
            Info.Text = "Type the captcha to continue"

            local CaptchaLabel = Instance.new("TextLabel")
            CaptchaLabel.Parent = Frame
            CaptchaLabel.Size = UDim2.new(1,0,0,40)
            CaptchaLabel.Position = UDim2.new(0,0,0.4,0)
            CaptchaLabel.BackgroundTransparency = 1
            CaptchaLabel.TextScaled = true

            local Input = Instance.new("TextBox")
            Input.Parent = Frame
            Input.Size = UDim2.new(0.6,0,0,35)
            Input.Position = UDim2.new(0.2,0,0.6,0)
            Input.Text = ""
            Input.TextScaled = true
            Input.BackgroundColor3 = Color3.fromRGB(240,240,240)

            local ConfirmCaptcha = Instance.new("TextButton")
            ConfirmCaptcha.Parent = Frame
            ConfirmCaptcha.Size = UDim2.new(0.25,0,0,35)
            ConfirmCaptcha.Position = UDim2.new(0.15,0,0.8,0)
            ConfirmCaptcha.Text = "Confirm"

            local ResetCaptcha = Instance.new("TextButton")
            ResetCaptcha.Parent = Frame
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

                    ---------------- MENU ----------------

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

-- TOP BAR

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

-- TAB

local Tab = Instance.new("Frame")
Tab.Parent = Main
Tab.Size = UDim2.new(0,150,1,-35)
Tab.Position = UDim2.new(0,0,0,35)
Tab.BackgroundColor3 = Color3.fromRGB(0,170,255)

-- CONTENT

local Content = Instance.new("Frame")
Content.Parent = Main
Content.Size = UDim2.new(1,-150,1,-35)
Content.Position = UDim2.new(0,150,0,35)
Content.BackgroundColor3 = Color3.fromRGB(0,170,255)

-- FADE EFFECT

Main.BackgroundTransparency = 1
for _,v in pairs(Main:GetDescendants()) do
    if v:IsA("Frame") or v:IsA("TextLabel") then
        v.BackgroundTransparency = 1
    end
end

for i=1,10 do
    Main.BackgroundTransparency = Main.BackgroundTransparency - 0.1
    task.wait(0.03)
end

-- RGB BORDER

spawn(function()

    local hue = 0

    while true do
        hue = hue + 0.01
        if hue > 1 then
            hue = 0
        end

        Border.BackgroundColor3 = Color3.fromHSV(hue,1,1)

        task.wait(0.03)
    end

end)

-- DRAG MENU

local UIS = game:GetService("UserInputService")

local dragging
local dragInput
local dragStart
local startPos

TopBar.InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1 then

        dragging = true
        dragStart = input.Position
        startPos = Border.Position

        input.Changed:Connect(function()

            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end

        end)

    end

end)

TopBar.InputChanged:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end

end)

UIS.InputChanged:Connect(function(input)

    if input == dragInput and dragging then

        local delta = input.Position - dragStart

        Border.Position =
            UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )

    end

end)
