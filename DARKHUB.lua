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
    for i,v in pairs(boxes) do
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

    else
        Status.Text = "Wrong key!"
    end
end)

-- rainbow border
spawn(function()
    local hue = 0

    while true do
        hue = hue + 0.01

        if hue > 1 then
            hue = 0
        end

        Outer.BackgroundColor3 = Color3.fromHSV(hue,1,1)

        wait(0.05)
    end
end)

function startLoading()

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,420,0,250)
Frame.Position = UDim2.new(0.5,-210,0.5,-125)

local Text = Instance.new("TextLabel")
Text.Parent = Frame
Text.Size = UDim2.new(1,0,1,0)
Text.TextScaled = true
Text.BackgroundTransparency = 1

for i = 1,100 do

    Text.Text = "Loading "..i.."%"

    wait(0.03)

end

wait(1)

ScreenGui:Destroy()

print("Menu hub mở")

end
