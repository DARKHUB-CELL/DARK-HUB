local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,420,0,250)
Frame.Position = UDim2.new(0.5,-210,0.5,-125)
Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)

local Status = Instance.new("TextLabel")
Status.Parent = Frame
Status.Size = UDim2.new(1,0,0,40)
Status.Text = "Waiting for key..."
Status.BackgroundTransparency = 1
Status.TextScaled = true

local Confirm = Instance.new("TextButton")
Confirm.Parent = Frame
Confirm.Size = UDim2.new(0,150,0,40)
Confirm.Position = UDim2.new(0.5,-75,0.7,0)
Confirm.Text = "Confirm"

local boxes = {}

for i = 1,5 do
    local box = Instance.new("TextBox")
    box.Parent = Frame
    box.Size = UDim2.new(0,40,0,40)
    box.Position = UDim2.new(0.15 + (i-1)*0.14,0,0.4,0)
    box.Text = ""
    box.TextScaled = true
    table.insert(boxes,box)
end

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

        Frame:Destroy()

        -- Loading
        local LoadFrame = Instance.new("Frame")
        LoadFrame.Parent = ScreenGui
        LoadFrame.Size = UDim2.new(0,420,0,250)
        LoadFrame.Position = UDim2.new(0.5,-210,0.5,-125)
        LoadFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)

        local Text = Instance.new("TextLabel")
        Text.Parent = LoadFrame
        Text.Size = UDim2.new(1,0,1,0)
        Text.TextScaled = true
        Text.BackgroundTransparency = 1

        for i = 1,100 do
            Text.Text = "Loading "..i.."%"
            wait(0.03)
        end

        wait(1)

        LoadFrame:Destroy()

        print("Hub menu mở")

    else

        Status.Text = "Wrong key!"

    end

end)
