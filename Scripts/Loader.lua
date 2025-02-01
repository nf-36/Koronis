KeyModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/nf-36/paradise.cc/refs/heads/main/Data/KeySystemModule.lua"))()
local Notify = function(title, content, duration)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = content,
        Duration = duration
    })
end
KeyModule.Notify = Notify

local function createPart(data)
	local instance = Instance.new(data.InstanceType,data.Parent)
	
	for i, _data in pairs(data) do
		if i ~= "Name" and i ~= "InstanceType" then
			instance[i] = _data
		end
	end	
	return instance
end

local MainWindow = createPart({
	InstanceType = "ScreenGui",
	Name = "paradise.cc",
	Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"),
	DisplayOrder = 1,
	ResetOnSpawn = false,
})
KeyModule.MainWindow = MainWindow

local KeyRedeemFrame = createPart({
	InstanceType = "Frame",
	Name = "keyRedeem",
	Parent = MainWindow,
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = Color3.fromRGB(35, 35, 35),
	BackgroundTransparency = 0.150,
	Position = UDim2.new(0.5, 0, 0.534510434, 0),
	Size = UDim2.new(0.300000012, 0, 0.0690208673, 85),
})

local LinesFrame = createPart({
	InstanceType = "Frame",
	Name = "LinesFrame",
	Parent = KeyRedeemFrame,
	AnchorPoint = Vector2.new(0.5, 0),
	BackgroundColor3 = Color3.fromRGB(35, 35, 35),
	BackgroundTransparency = 1.000,
	Position = UDim2.new(0.5, 0, 0, 35),
	Size = UDim2.new(1, 0, 0, 50),
})

local UIListLayout = createPart({
	InstanceType = "UIListLayout",
	Parent = LinesFrame,
	SortOrder = Enum.SortOrder.LayoutOrder,
	VerticalAlignment = Enum.VerticalAlignment.Center,
})


local MyFirstLine = createPart({
	InstanceType = "Frame",
	Parent = LinesFrame,
	BackgroundTransparency = 1.000,
	LayoutOrder = 3,
	Size = UDim2.new(1, 0, 0, 50)
})

local UIListLayout2 = createPart({
	InstanceType = "UIListLayout",
	SortOrder = Enum.SortOrder.LayoutOrder,
	VerticalAlignment = Enum.VerticalAlignment.Center,
	Parent = MyFirstLine,
	FillDirection = Enum.FillDirection.Horizontal,
	HorizontalAlignment = Enum.HorizontalAlignment.Center,
	Padding = UDim.new(0, 8),
})

local InputTextFrame = createPart({
	InstanceType = "Frame",
	Name = "InputTextFrame",
	Parent = MyFirstLine,
	BackgroundColor3 = Color3.fromRGB(34, 34, 34),
	BackgroundTransparency = 0.500,
	BorderSizePixel = 0,
	Size = UDim2.new(0.720000029, 0, 0.699999988, 0),
})

local KeyInput = createPart({
	InstanceType = "TextBox",
	Name = "InputTextBox",
	Parent = InputTextFrame,
	AnchorPoint = Vector2.new(0, 0.5),
	BackgroundTransparency = 1.000,
	ClipsDescendants = true,
	Position = UDim2.new(0, 8, 0.5, 0),
	Size = UDim2.new(1, -16, 0.5, 0),
	ClearTextOnFocus = false,
	Font = Enum.Font.GothamMedium,
	PlaceholderColor3 = Color3.fromRGB(178, 178, 178),
	PlaceholderText = "Key:",
	Text = "",
	TextColor3 = Color3.fromRGB(210, 210, 210),
	TextSize = 15.000,
	TextWrapped = true,
	TextXAlignment = Enum.TextXAlignment.Left,
})

local UICorner = createPart({
	InstanceType = "UICorner",
	CornerRadius = UDim.new(0, 5),
	Parent = InputTextFrame
})

local UICorner2 = createPart({
	InstanceType = "UICorner",
	CornerRadius = UDim.new(0, 10),
	Parent = KeyRedeemFrame
})

local Header = createPart({
	InstanceType = "Frame",
	Name = "Header",
	Parent = KeyRedeemFrame,
	AnchorPoint = Vector2.new(0.5, 0),
	BackgroundColor3 = Color3.fromRGB(35, 35, 35),
	BorderSizePixel = 0,
	Position = UDim2.new(0.5, 0, 0, 0),
	Size = UDim2.new(1, 0, 0, 35),
})


local HeaderTitle = createPart({
	InstanceType = "TextLabel",
	Name = "HeaderTitle",
	Parent = Header,
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundTransparency = 1.000,
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(1, 0, 1, 0),
	ZIndex = 3,
	Font = Enum.Font.GothamMedium,
	Text = "paradise.cc",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 14.000,
})

local CloseButton = createPart({
	InstanceType = "TextButton",
	Name = "CloseButton",
	Parent = Header,
	AnchorPoint = Vector2.new(1, 0.5),
	BackgroundTransparency = 1.000,
	Position = UDim2.new(1, -16, 0.5, 0),
	Size = UDim2.new(0.100000001, 0, 1, 0),
	ZIndex = 3,
	AutoButtonColor = false,
	Font = Enum.Font.GothamBlack,
	Text = "×",
	TextColor3 = Color3.fromRGB(200, 200, 200),
	TextSize = 28.000,
	TextXAlignment = Enum.TextXAlignment.Right,
})

local Frame = createPart({
	InstanceType = "Frame",
	Parent = Header,
	AnchorPoint = Vector2.new(0.5, 0),
	BackgroundColor3 = Color3.fromRGB(35, 35, 35),
	BorderSizePixel = 0,
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(1, 0, 0.5, 0),
	ZIndex = 2,
})

local UICorner3 = createPart({
	InstanceType = "UICorner",
	CornerRadius = UDim.new(0, 10),
	Parent = Header
})

local Frame2 = createPart({
	InstanceType = "Frame",
	Parent = KeyRedeemFrame,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1.000,
	BorderColor3 = Color3.fromRGB(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, .75, 0),
	Size = UDim2.new(1, 0, 0, 0),
})

local RedeemKeyButton = createPart({
	InstanceType = "TextButton",
	Parent = Frame2,
	BackgroundColor3 = Color3.fromRGB(34, 34, 34),
	BackgroundTransparency = 0.500,
	BorderColor3 = Color3.fromRGB(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.0656779632, 0, 0.170000002, 0),
	Size = UDim2.new(0, 116, 0, 33),
	Font = Enum.Font.MontserratBold,
	Text = "Redeem Key",
	TextColor3 = Color3.fromRGB(210, 210, 210),
	TextSize = 17.000,
	TextWrapped = true,
})

local UICorner4 = createPart({
	InstanceType = "UICorner",
	CornerRadius = UDim.new(0, 5),
	Parent = RedeemKeyButton
})

local UIListLayout3 = createPart({
	InstanceType = "UIListLayout",
	Parent = Frame2,
	FillDirection = Enum.FillDirection.Horizontal,
	HorizontalAlignment = Enum.HorizontalAlignment.Center,
	SortOrder = Enum.SortOrder.LayoutOrder,
	VerticalAlignment = Enum.VerticalAlignment.Center,
	Padding = UDim.new(0, 10),
})

local GetKeyButton = createPart({
	InstanceType = "TextButton",
	Parent = Frame2,
	BackgroundColor3 = Color3.fromRGB(34, 34, 34),
	BackgroundTransparency = 0.500,
	BorderColor3 = Color3.fromRGB(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.421610177, 0, 0.170000002, 0),
	Size = UDim2.new(0, 115, 0, 33),
	Font = Enum.Font.MontserratBold,
	Text = "Get Key",
	TextColor3 = Color3.fromRGB(210, 210, 210),
	TextSize = 17.000,
	TextWrapped = true
})

local UICorner5 = createPart({
	InstanceType = "UICorner",
	CornerRadius = UDim.new(0, 5),
	Parent = GetKeyButton
})

local premiumInfo = createPart({
	InstanceType = "Frame",
	Name = "premiumInfo",
	Parent = MainWindow,
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = Color3.fromRGB(35, 35, 35),
	BackgroundTransparency = 0.150,
	Position = UDim2.new(0.741105437, 0, 0.534109175, 0),
	Size = UDim2.new(0.168488055, 0, 0.122792937, 85),
})

local LinesFrame2 = createPart({
	InstanceType = "Frame",
	Name = "LinesFrame",
	Parent = premiumInfo,
	AnchorPoint = Vector2.new(0.5, 0),
	BackgroundTransparency = 1.000,
	Position = UDim2.new(0.5, 0, 0, 35),
	Size = UDim2.new(1, 0, 0, 50),
})

local HeaderTitle2 = createPart({
	InstanceType = "TextLabel",
	Name = "HeaderTitle",
	Parent = LinesFrame2,
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundTransparency = 1.000,
	Position = UDim2.new(0.5, 0, 0.659998477, 0),
	Size = UDim2.new(1, 0, 1.32000065, 0),
	ZIndex = 3,
	Font = Enum.Font.GothamMedium,
	Text = "Tired of watching ads? Want access to the OP features? We offer subscription keys over at our website!",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 14.000,
	TextWrapped = true,
})

local UIPadding = createPart({
	InstanceType = "UIPadding",
	Parent = HeaderTitle2,
	PaddingBottom = UDim.new(0, 10),
	PaddingLeft = UDim.new(0, 10),
	PaddingRight = UDim.new(0, 10),
	PaddingTop = UDim.new(0, 10),
})

local UICorner6 = createPart({
	InstanceType = "UICorner",
	CornerRadius = UDim.new(0, 10),
	Parent = premiumInfo
})

local Header2 = createPart({
	InstanceType = "Frame",
	Name = "Header",
	Parent = premiumInfo,
	AnchorPoint = Vector2.new(0.5, 0),
	BackgroundColor3 = Color3.fromRGB(35, 35, 35),
	BorderSizePixel = 0,
	Position = UDim2.new(0.5, 0, 0, 0),
	Size = UDim2.new(1, 0, 0, 35),
})

local HeaderTitle3 = createPart({
	InstanceType = "TextLabel",
	Name = "HeaderTitle",
	Parent = Header2,
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundTransparency = 1.000,
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(1, 0, 1, 0),
	ZIndex = 3,
	Font = Enum.Font.GothamMedium,
	Text = "paradise.cc Premium",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 14.000,
})

local Frame3 = createPart({
	InstanceType = "Frame",
	Parent = Header2,
	AnchorPoint = Vector2.new(0.5, 0),
	BackgroundColor3 = Color3.fromRGB(35, 35, 35),
	BorderSizePixel = 0,
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(1, 0, 0.5, 0),
	ZIndex = 2,
})

local UICorner7 = createPart({
	InstanceType = "UICorner",
	CornerRadius = UDim.new(0, 10),
	Parent = Header2
})

local Frame4 = createPart({
	InstanceType = "Frame",
	Parent = premiumInfo,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1.000,
	BorderColor3 = Color3.fromRGB(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 0.7211712, 0),
	Size = UDim2.new(1, 0, 0, 45),
})

local UIListLayout4 = createPart({
	InstanceType = "UIListLayout",
	Parent = Frame4,
	FillDirection = Enum.FillDirection.Horizontal,
	HorizontalAlignment = Enum.HorizontalAlignment.Center,
	SortOrder = Enum.SortOrder.LayoutOrder,
	VerticalAlignment = Enum.VerticalAlignment.Center,
	Padding = UDim.new(0, 10)
})

local CopyWebsiteButton = createPart({
	InstanceType = "TextButton",
	Parent = Frame4,
	BackgroundColor3 = Color3.fromRGB(34, 34, 34),
	BackgroundTransparency = 0.500,
	BorderColor3 = Color3.fromRGB(0, 0, 0),
	BorderSizePixel = 0,
	Position = UDim2.new(0.283018857, 0, 0.170000002, 0),
	Size = UDim2.new(0, 155, 0, 33),
	Font = Enum.Font.MontserratBold,
	Text = "Copy Website",
	TextColor3 = Color3.fromRGB(210, 210, 210),
	TextSize = 17.000,
	TextWrapped = true,
})

local UICorner8 = createPart({
	InstanceType = "UICorner",
	CornerRadius = UDim.new(0, 5),
	Parent = CopyWebsiteButton
})




-- Scripts:

CloseButton.Activated:Connect(function()
	MainWindow:Destroy()
	script:Destroy()
end)

RedeemKeyButton.Activated:Connect(function()
	script_key = KeyInput.Text

	KeyModule.Functions.CheckKey(script_key)
end)

CopyWebsiteButton.Activated:Connect(function()
	setclipboard("https://paradisecc.uwu.ai/#products")
    Notify("Link Copied", "Website link copied to clipboard. Check your clipboard to make a purchase.", 5)
end)

GetKeyButton.Activated:Connect(function()
	setclipboard("https://paradisecc.uwu.ai/#keys")
    Notify("Link Copied", "Free key link copied to clipboard. Check your clipboard to get a free key.", 5)
end)

-- Notify user that the script has been loaded
Notify("paradise.cc", "The script has been loaded.", 8)
