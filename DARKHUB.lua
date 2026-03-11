local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

------------------------------------------------
-- PASSWORD GUI
------------------------------------------------

local Outer = Instance.new("Frame")
Outer.Parent = ScreenGui
Outer.Size = UDim2.new(0,420,0,250)
Outer.Position = UDim2.new(0.5,-210,0.5,-125)
Outer.BackgroundColor3 = Color3.fromRGB(255,255,255)

-- Rainbow border
spawn(function()
    local h = 0
    while true do
        h = h + 0.01
        if h > 1 then h = 0 end
        Outer.BorderColor3 = Color3.fromHSV(h,1,1)
        wait(0.05)
    end
end)

local Title = Instance.new("TextLabel")
Title.Parent = Outer
Title.Size = UDim2.new(1,0,0,50)
Title.Text = "RED HUB"
Title.TextScaled = true
Title.BackgroundTransparency = 1

------------------------------------------------
-- BUTTONS
------------------------------------------------

local GetKey = Instance.new("TextButton")
GetKey.Parent = Outer
GetKey.Size = UDim2.new(0,100,0,35)
GetKey.Position = UDim2.new(0.05,0,0.35,0)
GetKey.Text = "Get Key"

local Status = Instance.new("TextLabel")
Status.Parent = Outer
Status.Size = UDim2.new(0,120,0,35)
Status.Position = UDim2.new(0.35,0,0.35,0)
Status.Text = "Key sai"
Status.BackgroundColor3 = Color3.fromRGB(200,200,200)

local Confirm = Instance.new("TextButton")
Confirm.Parent = Outer
Confirm.Size = UDim2.new(0,100,0,35)
Confirm.Position = UDim2.new(0.7,0,0.35,0)
Confirm.Text = "Confirm"

------------------------------------------------
-- 5 KEY BOXES
------------------------------------------------

local boxes = {}

for i = 1,5 do
    local box = Instance.new("TextBox")
    box.Parent = Outer
    box.Size = UDim2.new(0,40,0,40)
    box.Position = UDim2.new(0.1 + (i-1)*0.16,0,0.65,0)
    box.Text = ""
    box.TextScaled = true
    table.insert(boxes,box)
end

------------------------------------------------
-- GET KEY BUTTON
------------------------------------------------

GetKey.MouseButton1Click:Connect(function()

    setclipboard("https://www.youtube.com/@LV_Animations-m3s")

    Status.Text = "You copied the key link!"

end)

------------------------------------------------
-- CONFIRM
------------------------------------------------

local function getKey()

    local key = ""

    for i,v in pairs(boxes) do
        key = key..v.Text
    end

    return key
end

Confirm.MouseButton1Click:Connect(function()

    local key = getKey()

    if key == "60132" or key == "90718" then

        Status.Text = "Access granted!"

        wait(1)

        Outer:Destroy()

        ------------------------------------------------
        -- LOADING GUI
        ------------------------------------------------

        local LoadOuter = Instance.new("Frame")
        LoadOuter.Parent = ScreenGui
        LoadOuter.Size = UDim2.new(0,420,0,250)
        LoadOuter.Position = UDim2.new(0.5,-210,0.5,-125)

        local LoadInner = Instance.new("Frame")
        LoadInner.Parent = LoadOuter
        LoadInner.Size = UDim2.new(1,-10,1,-10)
        LoadInner.Position = UDim2.new(0,5,0,5)

        -- Rainbow outer
        spawn(function()
            local h = 0
            while true do
                h = h + 0.01
                if h > 1 then h = 0 end
                LoadOuter.BackgroundColor3 = Color3.fromHSV(h,1,1)
                wait(0.05)
            end
        end)

        -- 3 color inner
        spawn(function()

            local colors = {
                Color3.fromRGB(255,255,255),
                Color3.fromRGB(200,200,200),
                Color3.fromRGB(180,220,255)
            }

            local i = 1

            while true do

                LoadInner.BackgroundColor3 = colors[i]

                i = i + 1

                if i > #colors then
                    i = 1
                end

                wait(1)

            end

        end)

        local LoadingText = Instance.new("TextLabel")
        LoadingText.Parent = LoadInner
        LoadingText.Size = UDim2.new(1,0,1,0)
        LoadingText.BackgroundTransparency = 1
        LoadingText.Text = "Loading..."
        LoadingText.TextScaled = true

    else

        Status.Text = "Wrong key!"

    end

end)
