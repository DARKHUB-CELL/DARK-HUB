------------------------------------------------
-- RED HUB FULL SYSTEM
------------------------------------------------

local adminPassword = "67890"

-- Xóa GUI cũ nếu exec lại
if game.CoreGui:FindFirstChild("REDHUB") then
    game.CoreGui.REDHUB:Destroy()
end

------------------------------------------------
-- KEY GUI
------------------------------------------------

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "REDHUB"
ScreenGui.Parent = game.CoreGui

local Outer = Instance.new("Frame")
local Inner = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local GetKey = Instance.new("TextButton")
local Confirm = Instance.new("TextButton")

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

------------------------------------------------
-- KEY BOX
------------------------------------------------

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
    for _,v in pairs(boxes) do
        key = key..v.Text
    end
    return key
end

------------------------------------------------
-- GET KEY (DÁN LINK KÊNH CỦA BẠN Ở ĐÂY)
------------------------------------------------

GetKey.MouseButton1Click:Connect(function()

    setclipboard("PASTE_YOUR_YOUTUBE_CHANNEL_LINK_HERE")

    Status.Text = "📋 Channel link copied!"

end)

------------------------------------------------
-- CONFIRM KEY
------------------------------------------------

Confirm.MouseButton1Click:Connect(function()

    local key = getKey()

    if key == "60132" or key == "90718" then

        Status.Text = "✅ Access granted!"
        wait(1)

        ScreenGui:Destroy()

------------------------------------------------
-- LOADING
------------------------------------------------

        local LoadGui = Instance.new("ScreenGui")
        LoadGui.Parent = game.CoreGui

        local Frame = Instance.new("Frame")
        Frame.Parent = LoadGui
        Frame.Size = UDim2.new(0,420,0,250)
        Frame.Position = UDim2.new(0.5,-210,0.5,-125)

        local Percent = Instance.new("TextLabel")
        Percent.Parent = Frame
        Percent.Size = UDim2.new(1,0,0,40)
        Percent.Position = UDim2.new(0,0,0.3,0)
        Percent.TextScaled = true
        Percent.Text = "0%"

        local BarBack = Instance.new("Frame")
        BarBack.Parent = Frame
        BarBack.Size = UDim2.new(0.8,0,0,20)
        BarBack.Position = UDim2.new(0.1,0,0.6,0)
        BarBack.BackgroundColor3 = Color3.fromRGB(200,200,200)

        local Bar = Instance.new("Frame")
        Bar.Parent = BarBack
        Bar.Size = UDim2.new(0,0,1,0)
        Bar.BackgroundColor3 = Color3.fromRGB(0,170,255)

------------------------------------------------
-- MUSIC (15s)
------------------------------------------------

        local Music = Instance.new("Sound")
        Music.Parent = Frame
        Music.SoundId = "rbxassetid://142376088"
        Music.Volume = 2
        Music:Play()

------------------------------------------------
-- LOADING PROCESS (15s)
------------------------------------------------

        for i = 0,100 do

            Percent.Text = i.."%"
            Bar.Size = UDim2.new(i/100,0,1,0)

            wait(0.15)

        end

        Music:Stop()
        LoadGui:Destroy()

------------------------------------------------
-- CAPTCHA
------------------------------------------------

        local VerifyFrame = Instance.new("Frame")
        VerifyFrame.Parent = game.CoreGui
        VerifyFrame.Size = UDim2.new(0,420,0,320)
        VerifyFrame.Position = UDim2.new(0.5,-210,0.5,-160)

        local correct = {}
        local buttons = {}

        for i = 1,25 do

            local btn = Instance.new("TextButton")
            btn.Parent = VerifyFrame
            btn.Size = UDim2.new(0,50,0,50)

            local row = math.floor((i-1)/5)
            local col = (i-1)%5

            btn.Position = UDim2.new(0,20+col*60,0,20+row*60)

            if math.random(1,3)==1 then
                btn.Text = "🍎"
                correct[btn]=true
            else
                btn.Text = "🚗"
            end

            btn.MouseButton1Click:Connect(function()
                btn.BackgroundColor3 = Color3.fromRGB(0,255,0)
            end)

            table.insert(buttons,btn)

        end

------------------------------------------------
-- VERIFY BUTTON
------------------------------------------------

        local VerifyBtn = Instance.new("TextButton")
        VerifyBtn.Parent = VerifyFrame
        VerifyBtn.Size = UDim2.new(0,150,0,40)
        VerifyBtn.Position = UDim2.new(0.1,0,1,-50)
        VerifyBtn.Text = "VERIFY"

------------------------------------------------
-- ADMIN BUTTON
------------------------------------------------

        local AdminBtn = Instance.new("TextButton")
        AdminBtn.Parent = VerifyFrame
        AdminBtn.Size = UDim2.new(0,150,0,40)
        AdminBtn.Position = UDim2.new(0.55,0,1,-50)
        AdminBtn.Text = "ADMIN BYPASS"

        VerifyBtn.MouseButton1Click:Connect(function()

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

------------------------------------------------
-- ADMIN PASSWORD
------------------------------------------------

        AdminBtn.MouseButton1Click:Connect(function()

            local AdminFrame = Instance.new("Frame")
            AdminFrame.Parent = game.CoreGui
            AdminFrame.Size = UDim2.new(0,300,0,200)
            AdminFrame.Position = UDim2.new(0.5,-150,0.5,-100)

            local Box = Instance.new("TextBox")
            Box.Parent = AdminFrame
            Box.Size = UDim2.new(0,200,0,40)
            Box.Position = UDim2.new(0.5,-100,0.3,0)
            Box.PlaceholderText = "Enter Password"

            local ConfirmAdmin = Instance.new("TextButton")
            ConfirmAdmin.Parent = AdminFrame
            ConfirmAdmin.Size = UDim2.new(0,100,0,40)
            ConfirmAdmin.Position = UDim2.new(0.35,0,0.7,0)
            ConfirmAdmin.Text = "Confirm"

            ConfirmAdmin.MouseButton1Click:Connect(function()

                if Box.Text == adminPassword then

                    VerifyFrame:Destroy()
                    AdminFrame:Destroy()

                    local Menu = Instance.new("TextLabel")
                    Menu.Parent = game.CoreGui
                    Menu.Size = UDim2.new(1,0,1,0)
                    Menu.TextScaled = true
                    Menu.Text = "ADMIN ACCESS - RED HUB"

                end

            end)

        end)

    else

        Status.Text = "❌ Wrong key!"

    end

end)
