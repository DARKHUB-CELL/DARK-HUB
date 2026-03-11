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

                wait(0.07)

            end

            LoadText.Text = "✅ Loaded Successfully!"

            wait(1)

            Music:Stop()
            LoadGui:Destroy()

            ---------------- CAPTCHA ----------------

            local VerifyFrame = Instance.new("Frame")
            VerifyFrame.Parent = game.CoreGui
            VerifyFrame.Size = UDim2.new(0,420,0,320)
            VerifyFrame.Position = UDim2.new(0.5,-210,0.5,-160)
            VerifyFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)

            local Title = Instance.new("TextLabel")
            Title.Parent = VerifyFrame
            Title.Size = UDim2.new(1,0,0,40)
            Title.Text = "🤖 Verify You Are Human"
            Title.TextScaled = true
            Title.BackgroundTransparency = 1

            local buttons = {}
            local correct = {}

            for i = 1,25 do

                local btn = Instance.new("TextButton")
                btn.Parent = VerifyFrame
                btn.Size = UDim2.new(0,50,0,50)

                local row = math.floor((i-1)/5)
                local col = (i-1)%5

                btn.Position = UDim2.new(0,20+col*60,0,60+row*50)

                if math.random(1,3)==1 then
                    btn.Text = "🍎"
                    correct[btn] = true
                else
                    btn.Text = "🚗"
                end

                btn.MouseButton1Click:Connect(function()
                    btn.BackgroundColor3 = Color3.fromRGB(0,255,0)
                end)

                table.insert(buttons,btn)

            end

            local Verify = Instance.new("TextButton")
            Verify.Parent = VerifyFrame
            Verify.Size = UDim2.new(0,150,0,40)
            Verify.Position = UDim2.new(0.35,0,1,-50)
            Verify.Text = "VERIFY"

            Verify.MouseButton1Click:Connect(function()

                local correctClicks = 0

                for _,btn in pairs(buttons) do
                    if btn.BackgroundColor3 == Color3.fromRGB(0,255,0) and correct[btn] then
                        correctClicks += 1
                    end
                end

                if correctClicks >= 3 then

                    VerifyFrame:Destroy()

                    local Menu = Instance.new("TextLabel")
                    Menu.Parent = game.CoreGui
                    Menu.Size = UDim2.new(1,0,1,0)
                    Menu.TextScaled = true
                    Menu.Text = "WELCOME TO RED HUB"

                end

            end)

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
