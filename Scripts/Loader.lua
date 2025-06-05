local G2L = {}

if not isfolder("Koronis") then
	makefolder("Koronis")
end
KeyModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/nf-36/Koronis/refs/heads/main/Data/KeySystemModule.lua"))()

local keyFile
if not isfile("Koronis/key.txt") then
	writefile("Koronis/key.txt","")
	keyFile = readfile("Koronis/key.txt")
else
	keyFile = readfile("Koronis/key.txt")
	local response = KeyModule.Functions.CheckKey(keyFile)
	if response.STATUS.code == "KEY_VALID" then
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "Found User",
			Text = "Key Found, Loading Koronis...",
			Duration = 5
		})
		script_key = keyFile
		response.API.load_script()
        script:Destroy()
		return

	end
end

local kSpoof = game:GetService("HttpService"):GenerateGUID(false)
local KORONIS_SAVEKEY = false
-- StarterGui.KoronisKeySystem
G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
G2L["1"]["Name"] = kSpoof;
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.KoronisKeySystem.NotificationHolder
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["2"]["Size"] = UDim2.new(0.54102, 0, 0.17284, 0);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.85, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[NotificationHolder]];
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["ZIndex"] = 999;


-- StarterGui.KoronisKeySystem.NotificationHolder.UIListLayout
G2L["3"] = Instance.new("UIListLayout", G2L["2"]);
G2L["3"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["3"]["Padding"] = UDim.new(0, 5);
G2L["3"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.KoronisKeySystem.NotificationHolder.UIPadding
G2L["4"] = Instance.new("UIPadding", G2L["2"]);
G2L["4"]["PaddingTop"] = UDim.new(0, 3);
G2L["4"]["PaddingRight"] = UDim.new(0, 3);
G2L["4"]["PaddingLeft"] = UDim.new(0, 3);
G2L["4"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.KoronisKeySystem.Assets
G2L["5"] = Instance.new("Folder", G2L["1"]);
G2L["5"]["Name"] = [[Assets]];


-- StarterGui.KoronisKeySystem.Assets.NotificationTemplate
G2L["6"] = Instance.new("TextLabel", G2L["5"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["RichText"] = true;
G2L["6"]["Size"] = UDim2.new(0.02181, 0, 0.27911, 0);
G2L["6"]["Visible"] = false;
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[Notification Text!]];
G2L["6"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["6"]["Name"] = [[NotificationTemplate]];
G2L["6"]["Position"] = UDim2.new(0.45718, 0, 0.36044, 0);


-- StarterGui.KoronisKeySystem.Assets.NotificationTemplate.UIStroke
G2L["7"] = Instance.new("UIStroke", G2L["6"]);
G2L["7"]["Thickness"] = 2;


-- StarterGui.KoronisKeySystem.Frame
G2L["8"] = Instance.new("Frame", G2L["1"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8"]["Size"] = UDim2.new(0, 350, 0, 225);
G2L["8"]["Position"] = UDim2.new(0.5, 0, 0.4992, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.KoronisKeySystem.Frame.UICorner
G2L["9"] = Instance.new("UICorner", G2L["8"]);



-- StarterGui.KoronisKeySystem.Frame.UIStroke
G2L["a"] = Instance.new("UIStroke", G2L["8"]);
G2L["a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["a"]["Thickness"] = 3;
G2L["a"]["Color"] = Color3.fromRGB(50, 50, 50);


-- StarterGui.KoronisKeySystem.Frame.DISCORD
G2L["b"] = Instance.new("TextButton", G2L["8"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["TextSize"] = 14;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["b"]["Size"] = UDim2.new(0, 45, 0, 45);
G2L["b"]["Name"] = [[DISCORD]];
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[]];
G2L["b"]["Position"] = UDim2.new(0.11143, 0, 0.82889, 0);


-- StarterGui.KoronisKeySystem.Frame.DISCORD.UICorner
G2L["c"] = Instance.new("UICorner", G2L["b"]);



-- StarterGui.KoronisKeySystem.Frame.DISCORD.UIStroke
G2L["d"] = Instance.new("UIStroke", G2L["b"]);
G2L["d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["d"]["Thickness"] = 3;
G2L["d"]["Color"] = Color3.fromRGB(51, 51, 51);


-- StarterGui.KoronisKeySystem.Frame.DISCORD.ImageLabel
G2L["e"] = Instance.new("ImageLabel", G2L["b"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["e"]["ImageTransparency"] = 0.06;
G2L["e"]["Image"] = [[rbxassetid://745203704]];
G2L["e"]["Size"] = UDim2.new(0.75, 0, 0.75, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["Position"] = UDim2.new(0.11111, 0, 0.11111, 0);


-- StarterGui.KoronisKeySystem.Frame.TextBox
G2L["f"] = Instance.new("TextBox", G2L["8"]);
G2L["f"]["CursorPosition"] = -1;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextWrapped"] = true;
G2L["f"]["TextSize"] = 14;
G2L["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["TextScaled"] = true;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f"]["PlaceholderText"] = [[Enter Key...]];
G2L["f"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.4, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[]];


-- StarterGui.KoronisKeySystem.Frame.TextBox.UIStroke
G2L["10"] = Instance.new("UIStroke", G2L["f"]);
G2L["10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["10"]["Thickness"] = 3;
G2L["10"]["Color"] = Color3.fromRGB(50, 50, 50);


-- StarterGui.KoronisKeySystem.Frame.TextBox.UICorner
G2L["11"] = Instance.new("UICorner", G2L["f"]);



-- StarterGui.KoronisKeySystem.Frame.TextBox.UITextSizeConstraint
G2L["12"] = Instance.new("UITextSizeConstraint", G2L["f"]);
G2L["12"]["MaxTextSize"] = 20;


-- StarterGui.KoronisKeySystem.Frame.TextBox.LocalScript
G2L["13"] = Instance.new("LocalScript", G2L["f"]);



-- StarterGui.KoronisKeySystem.Frame.TextLabel
G2L["14"] = Instance.new("TextLabel", G2L["8"]);
G2L["14"]["TextWrapped"] = true;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextScaled"] = true;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["14"]["Size"] = UDim2.new(0, 200, 0, 34);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[Koronis Hub]];
G2L["14"]["Position"] = UDim2.new(0.5, 0, 0.12, 0);


-- StarterGui.KoronisKeySystem.Frame.TextLabel.UIPadding
G2L["15"] = Instance.new("UIPadding", G2L["14"]);
G2L["15"]["PaddingTop"] = UDim.new(0, 5);
G2L["15"]["PaddingRight"] = UDim.new(0, 5);
G2L["15"]["PaddingLeft"] = UDim.new(0, 5);
G2L["15"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.KoronisKeySystem.Frame.TextLabel.UICorner
G2L["16"] = Instance.new("UICorner", G2L["14"]);



-- StarterGui.KoronisKeySystem.Frame.TextLabel.UIStroke
G2L["17"] = Instance.new("UIStroke", G2L["14"]);
G2L["17"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["17"]["Thickness"] = 3;
G2L["17"]["Color"] = Color3.fromRGB(50, 50, 50);


-- StarterGui.KoronisKeySystem.Frame.TextLabel.UITextSizeConstraint
G2L["18"] = Instance.new("UITextSizeConstraint", G2L["14"]);
G2L["18"]["MaxTextSize"] = 20;


-- StarterGui.KoronisKeySystem.Frame.remember
G2L["19"] = Instance.new("TextLabel", G2L["8"]);
G2L["19"]["TextWrapped"] = true;
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextSize"] = 14;
G2L["19"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["19"]["TextScaled"] = true;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["19"]["Size"] = UDim2.new(0, 153, 0, 25);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[Remember Key?]];
G2L["19"]["Name"] = [[remember]];
G2L["19"]["Position"] = UDim2.new(0.43286, 0, 0.59778, 0);


-- StarterGui.KoronisKeySystem.Frame.remember.UIPadding
G2L["1a"] = Instance.new("UIPadding", G2L["19"]);
G2L["1a"]["PaddingTop"] = UDim.new(0, 5);
G2L["1a"]["PaddingRight"] = UDim.new(0, 5);
G2L["1a"]["PaddingLeft"] = UDim.new(0, 5);
G2L["1a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.KoronisKeySystem.Frame.remember.UICorner
G2L["1b"] = Instance.new("UICorner", G2L["19"]);



-- StarterGui.KoronisKeySystem.Frame.remember.UITextSizeConstraint
G2L["1c"] = Instance.new("UITextSizeConstraint", G2L["19"]);
G2L["1c"]["MaxTextSize"] = 20;


-- StarterGui.KoronisKeySystem.Frame.SUBMIT
G2L["1d"] = Instance.new("TextButton", G2L["8"]);
G2L["1d"]["TextWrapped"] = true;
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["TextSize"] = 14;
G2L["1d"]["TextScaled"] = true;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1d"]["Size"] = UDim2.new(0, 158, 0, 45);
G2L["1d"]["Name"] = [[SUBMIT]];
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Text"] = [[Submit]];
G2L["1d"]["Position"] = UDim2.new(0.5, 0, 0.83111, 0);


-- StarterGui.KoronisKeySystem.Frame.SUBMIT.UICorner
G2L["1e"] = Instance.new("UICorner", G2L["1d"]);



-- StarterGui.KoronisKeySystem.Frame.SUBMIT.UIStroke
G2L["1f"] = Instance.new("UIStroke", G2L["1d"]);
G2L["1f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1f"]["Thickness"] = 3;
G2L["1f"]["Color"] = Color3.fromRGB(51, 51, 51);


-- StarterGui.KoronisKeySystem.Frame.SUBMIT.UIStroke
G2L["20"] = Instance.new("UIStroke", G2L["1d"]);
G2L["20"]["Thickness"] = 3;


-- StarterGui.KoronisKeySystem.Frame.SUBMIT.UITextSizeConstraint
G2L["21"] = Instance.new("UITextSizeConstraint", G2L["1d"]);
G2L["21"]["MaxTextSize"] = 30;


-- StarterGui.KoronisKeySystem.Frame.SAVE_LOGIN
G2L["22"] = Instance.new("TextButton", G2L["8"]);
G2L["22"]["TextWrapped"] = true;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["TextSize"] = 14;
G2L["22"]["TextScaled"] = true;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["22"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["22"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["22"]["Name"] = [[SAVE_LOGIN]];
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Text"] = [[]];
G2L["22"]["Position"] = UDim2.new(0.72714, 0, 0.59556, 0);


-- StarterGui.KoronisKeySystem.Frame.SAVE_LOGIN.uncheck
G2L["23"] = Instance.new("ImageLabel", G2L["22"]);
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["Image"] = [[rbxassetid://4458801905]];
G2L["23"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Name"] = [[uncheck]];


-- StarterGui.KoronisKeySystem.Frame.SAVE_LOGIN.check
G2L["24"] = Instance.new("ImageLabel", G2L["22"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["ImageTransparency"] = 1;
G2L["24"]["Image"] = [[rbxassetid://4458804262]];
G2L["24"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["Name"] = [[check]];


-- StarterGui.KoronisKeySystem.Frame.LocalScript
G2L["25"] = Instance.new("LocalScript", G2L["8"]);

-- StarterGui.KoronisKeySystem.Frame.COPY_KEY
G2L["26"] = Instance.new("TextButton", G2L["8"]);
G2L["26"]["TextWrapped"] = true;
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["TextSize"] = 14;
G2L["26"]["TextScaled"] = true;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["26"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["26"]["Size"] = UDim2.new(0, 59, 0, 35);
G2L["26"]["Name"] = [[COPY_KEY]];
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[Get Key]];
G2L["26"]["Position"] = UDim2.new(0.89857, 0, 0.4, 0);


-- StarterGui.KoronisKeySystem.Frame.COPY_KEY.UICorner
G2L["27"] = Instance.new("UICorner", G2L["26"]);



-- StarterGui.KoronisKeySystem.Frame.COPY_KEY.UIStroke
G2L["28"] = Instance.new("UIStroke", G2L["26"]);
G2L["28"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["28"]["Thickness"] = 3;
G2L["28"]["Color"] = Color3.fromRGB(51, 51, 51);


-- StarterGui.KoronisKeySystem.Frame.COPY_KEY.UIStroke
G2L["29"] = Instance.new("UIStroke", G2L["26"]);
G2L["29"]["Thickness"] = 3;


-- StarterGui.KoronisKeySystem.Frame.COPY_KEY.UITextSizeConstraint
G2L["2a"] = Instance.new("UITextSizeConstraint", G2L["26"]);
G2L["2a"]["MaxTextSize"] = 20;


-- StarterGui.KoronisKeySystem.Frame.COPY_KEY.UIPadding
G2L["2b"] = Instance.new("UIPadding", G2L["26"]);
G2L["2b"]["PaddingTop"] = UDim.new(0, 5);
G2L["2b"]["PaddingRight"] = UDim.new(0, 5);
G2L["2b"]["PaddingLeft"] = UDim.new(0, 5);
G2L["2b"]["PaddingBottom"] = UDim.new(0, 5);

-- StarterGui.KoronisKeySystem.Frame.CLOSE
G2L["2c"] = Instance.new("TextButton", G2L["8"]);
G2L["2c"]["TextWrapped"] = true;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["TextSize"] = 14;
G2L["2c"]["TextScaled"] = true;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2c"]["Size"] = UDim2.new(0, 34, 0, 35);
G2L["2c"]["Name"] = [[CLOSE]];
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Text"] = [[X]];
G2L["2c"]["Position"] = UDim2.new(0.93429, 0, 0.12, 0);


-- StarterGui.KoronisKeySystem.Frame.CLOSE.UICorner
G2L["2d"] = Instance.new("UICorner", G2L["2c"]);



-- StarterGui.KoronisKeySystem.Frame.CLOSE.UIStroke
G2L["2e"] = Instance.new("UIStroke", G2L["2c"]);
G2L["2e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["2e"]["Thickness"] = 3;
G2L["2e"]["Color"] = Color3.fromRGB(51, 51, 51);


-- StarterGui.KoronisKeySystem.Frame.CLOSE.UIStroke
G2L["2f"] = Instance.new("UIStroke", G2L["2c"]);
G2L["2f"]["Thickness"] = 3;


-- StarterGui.KoronisKeySystem.Frame.CLOSE.UITextSizeConstraint
G2L["30"] = Instance.new("UITextSizeConstraint", G2L["2c"]);
G2L["30"]["MaxTextSize"] = 20;


-- StarterGui.KoronisKeySystem.Frame.CLOSE.UIPadding
G2L["31"] = Instance.new("UIPadding", G2L["2c"]);
G2L["31"]["PaddingTop"] = UDim.new(0, 5);
G2L["31"]["PaddingRight"] = UDim.new(0, 5);
G2L["31"]["PaddingLeft"] = UDim.new(0, 5);
G2L["31"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.KoronisKeySystem.Frame.LocalScript
local function C_25()
local script = G2L["25"];

	
	local function sendNotification(message,duration)
		task.spawn(function()
			local notificationTemplate = script.Parent.Parent.Assets.NotificationTemplate:Clone()
			notificationTemplate.Text = message
			notificationTemplate.Parent = script.Parent.Parent.NotificationHolder
	
	
			notificationTemplate.Visible = true
			notificationTemplate:TweenSize(UDim2.new(notificationTemplate.Size.X.Scale,notificationTemplate.Size.X.Offset,notificationTemplate.Size.Y.Scale,notificationTemplate.Size.Y.Offset + 6),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,.25,true,function()
				notificationTemplate:TweenSize(UDim2.new(notificationTemplate.Size.X.Scale,notificationTemplate.Size.X.Offset,notificationTemplate.Size.Y.Scale,notificationTemplate.Size.Y.Offset - 6),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,.25,true)
			end)
			task.wait(duration or 5)
			notificationTemplate:Destroy()
		end)
	end
	
	for i, button in pairs(script.Parent:GetDescendants()) do
		if button:IsA("GuiButton") then
			local oldSize = button.Size
	
			local function scaled(scaleFactor)
				return UDim2.new(
					oldSize.X.Scale/scaleFactor,
					oldSize.X.Offset/scaleFactor,
					oldSize.Y.Scale/scaleFactor,
					oldSize.Y.Offset/scaleFactor
				)
			end
	
			button.MouseEnter:Connect(function()
				button:TweenSize(scaled(1.25), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.15, true)
			end)
	
			button.MouseLeave:Connect(function()
				button:TweenSize(oldSize, Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.15, true)
			end)
	
			button.MouseButton1Down:Connect(function()
				button:TweenSize(scaled(1.35), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.15, true)
			end)
	
			button.MouseButton1Up:Connect(function()
				button:TweenSize(scaled(1.25), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.15, true)
			end)
			
			button.Activated:Connect(function()
				if button.Name == "DISCORD" then
					if setclipboard then 
						setclipboard("https://discord.gg/koronis")
					end
					sendNotification("Koronis has been copied to your clipboard!")
				elseif button.Name == "SUBMIT" then
					local response = KeyModule.Functions.CheckKey(script.Parent.TextBox.Text)
                    if response.STATUS.code == "KEY_VALID" then
                        if KORONIS_SAVEKEY then
                            writefile("Koronis/key.txt",script.Parent.TextBox.Text)
                        end
                        script_key = script.Parent.TextBox.Text
                        response.API.load_script()
						sendNotification("Loading Koronis!")
                        game:GetService("CoreGui")[kSpoof]:Destroy()
                        script:Destroy()
					elseif response.STATUS.code == "KEY_HWID_LOCKED" then
						sendNotification("Your HWID must be reset, please join the discord or get a new key!")
					elseif response.STATUS.code == "KEY_INVALID" then
						sendNotification("Uh oh, it looks like this key might be expired or invalid!")	
					end
				elseif button.Name == "COPY_KEY" then
					if setclipboard then 
						setclipboard("https://koronis.xyz/get-key/")
					end
					sendNotification("Key link has been copied to your clipboard!")
				elseif button.Name == "CLOSE" then
					game:GetService("CoreGui")[kSpoof]:Destroy()
				elseif button.Name == "SAVE_LOGIN" then
					KORONIS_SAVEKEY = not KORONIS_SAVEKEY
	
					if KORONIS_SAVEKEY then
						sendNotification("Key will be remembered on next login!")
						game:GetService("TweenService"):Create(button.check,TweenInfo.new(1),{ImageTransparency = 0}):Play()
					else
						sendNotification("Key will no longer be remembered on next login!")
						game:GetService("TweenService"):Create(button.check,TweenInfo.new(1),{ImageTransparency = 1}):Play()
					end
				end
			end)
		end
	end
	
end;
task.spawn(C_25);

return G2L["1"], require;
