------------------------------------------------
-- RED HUB FULL SYSTEM
-- KEY → LOADING → CAPTCHA → MENU
------------------------------------------------

local CoreGui = game:GetService("CoreGui")

------------------------------------------------
-- KEY GUI
------------------------------------------------

local KeyGui = Instance.new("ScreenGui")
KeyGui.Parent = CoreGui

local KeyFrame = Instance.new("Frame")
KeyFrame.Parent = KeyGui
KeyFrame.Size = UDim2.new(0,400,0,220)
KeyFrame.Position = UDim2.new(0.5,-200,0.5,-110)
KeyFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)

local Title = Instance.new("TextLabel")
Title.Parent = KeyFrame
Title.Size = UDim2.new(1,0,0,40)
Title.Text = "🔴 RED HUB KEY"
Title.TextScaled = true
Title.BackgroundTransparency = 1

local KeyBox = Instance.new("TextBox")
KeyBox.Parent = KeyFrame
KeyBox.Size = UDim2.new(0,200,0,40)
KeyBox.Position = UDim2.new(0.5,-100,0.4,0)
KeyBox.PlaceholderText = "Enter Key"

local Confirm = Instance.new("TextButton")
Confirm.Parent = KeyFrame
Confirm.Size = UDim2.new(0,120,0,40)
Confirm.Position = UDim2.new(0.5,-60,0.7,0)
Confirm.Text = "Confirm Key"

------------------------------------------------
-- KEY CHECK
------------------------------------------------

local KEY = "REDHUB123"

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
-- MUSIC
------------------------------------------------

        local Music = Instance.new("Sound")
        Music.Parent = Frame
        Music.SoundId = "rbxassetid://1843521917"
        Music.Volume = 2
        Music:Play()

------------------------------------------------
-- LOADING BAR
------------------------------------------------

        for i = 1,100 do
            Bar.Size = UDim2.new(i/100,0,1,0)
            task.wait(0.03)
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

------------------------------------------------
-- MENU
------------------------------------------------

                local MenuGui = Instance.new("ScreenGui")
                MenuGui.Parent = CoreGui

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

------------------------------------------------
-- RGB BORDER
------------------------------------------------

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

            else

                Input.Text = ""
                newCaptcha()

            end

        end)

    else

        KeyBox.Text = ""

    end

end)
