-- PASSWORD GUI
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
Title.Text = "RED HUB"
Title.Size = UDim2.new(1,0,0,40)
Title.TextScaled = true
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.new(0,0,0)

Status.Parent = Inner
Status.Text = "Waiting for key..."
Status.Size = UDim2.new(1,0,0,30)
Status.Position = UDim2.new(0,0,0.2,0)
Status.BackgroundTransparency = 1
Status.TextColor3 = Color3.new(0,0,0)

GetKey.Parent = Inner
GetKey.Text = "Get Key"
GetKey.Size = UDim2.new(0,120,0,40)
GetKey.Position = UDim2.new(0.1,0,0.35,0)

Confirm.Parent = Inner
Confirm.Text = "Confirm"
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
    for i,v in ipairs(boxes) do
        key = key..v.Text
    end
    return key
end

GetKey.MouseButton1Click:Connect(function()
    setclipboard("https://www.youtube.com/@LV_Animations-m3s")
    Status.Text = "Link copied to clipboard!"
end)

Confirm.MouseButton1Click:Connect(function()
    local key = getKey()

    if key == "60132" or key == "90718" then
        Status.Text = "Access granted!"
        wait(1)

        ScreenGui:Destroy()

        -- LOADING GUI
        local LoadGui = Instance.new("ScreenGui")
        local Border1 = Instance.new("Frame")
        local Border2 = Instance.new("Frame")
        local Inside = Instance.new("Frame")

        LoadGui.Parent = game.CoreGui

        Border1.Parent = LoadGui
        Border1.Size = UDim2.new(0,420,0,250)
        Border1.Position = UDim2.new(0.5,-210,0.5,-125)
        Border1.BorderSizePixel = 0

        Border2.Parent = Border1
        Border2.Size = UDim2.new(1,-6,1,-6)
        Border2.Position = UDim2.new(0,3,0,3)
        Border2.BackgroundColor3 = Color3.fromRGB(0,170,255)
        Border2.BorderSizePixel = 0

        Inside.Parent = Border2
        Inside.Size = UDim2.new(1,-6,1,-6)
        Inside.Position = UDim2.new(0,3,0,3)
        Inside.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Inside.BorderSizePixel = 0

        -- TEXT
        local LoadText = Instance.new("TextLabel")
        LoadText.Parent = Inside
        LoadText.Size = UDim2.new(1,0,0.4,0)
        LoadText.Position = UDim2.new(0,0,0.2,0)
        LoadText.BackgroundTransparency = 1
        LoadText.TextScaled = true
        LoadText.TextColor3 = Color3.new(0,0,0)
        LoadText.Text = "Initializing..."

        -- LOADING BAR
        local BarBG = Instance.new("Frame")
        BarBG.Parent = Inside
        BarBG.Size = UDim2.new(0.8,0,0,20)
        BarBG.Position = UDim2.new(0.1,0,0.75,0)
        BarBG.BackgroundColor3 = Color3.fromRGB(200,200,200)
        BarBG.BorderSizePixel = 0

        local Bar = Instance.new("Frame")
        Bar.Parent = BarBG
        Bar.Size = UDim2.new(0,0,1,0)
        Bar.BackgroundColor3 = Color3.fromRGB(255,0,0)
        Bar.BorderSizePixel = 0

        local messages = {
        "Initializing system...",
        "Loading assets...",
        "Checking scripts...",
        "Connecting modules...",
        "Preparing interface...",
        "Loading UI elements...",
        "Checking security...",
        "Syncing data...",
        "Loading functions...",
        "Preparing features...",
        "Finalizing setup...",
        "Starting RED HUB..."
        }

        spawn(function()
            for i = 1,100 do
                Bar.Size = UDim2.new(i/100,0,1,0)
                LoadText.Text = messages[math.random(1,#messages)]
                wait(0.08)
            end
            LoadText.Text = "RED HUB Loaded!"
        end)

        -- RAINBOW BORDER
        spawn(function()
            local hue = 0
            while true do
                hue = hue + 0.01
                if hue > 1 then hue = 0 end
                Border1.BackgroundColor3 = Color3.fromHSV(hue,1,1)
                wait(0.05)
            end
        end)

    else
        Status.Text = "Wrong key!"
    end
end)

-- PASSWORD RAINBOW BORDER
spawn(function()
    local hue = 0
    while true do
        hue = hue + 0.01
        if hue > 1 then hue = 0 end
        Outer.BackgroundColor3 = Color3.fromHSV(hue,1,1)
        wait(0.05)
    end
end)
