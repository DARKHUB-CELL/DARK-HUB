local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Khung ngoài
local outer = Instance.new("Frame")
outer.Parent = gui
outer.Size = UDim2.new(0.8,0,0.7,0)
outer.Position = UDim2.new(0.1,0,0.15,0)
outer.BackgroundColor3 = Color3.fromRGB(0,0,0)
outer.BorderSizePixel = 6

-- Khung trong (màu trắng)
local inner = Instance.new("Frame")
inner.Parent = outer
inner.Size = UDim2.new(0.9,0,0.85,0)
inner.Position = UDim2.new(0.05,0,0.075,0)
inner.BackgroundColor3 = Color3.fromRGB(255,255,255)
inner.BorderSizePixel = 0

-- Viền khung ngoài chạy 7 màu
spawn(function()
	while true do
		for i = 0,1,0.01 do
			outer.BorderColor3 = Color3.fromHSV(i,1,1)
			wait(0.03)
		end
	end
end)
