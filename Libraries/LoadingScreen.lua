repeat task.wait(.01) until game:IsLoaded()
local G2L = {};

-- StarterGui.Koronis
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Enabled"] = true;
G2L["1"]["Name"] = game.HttpService:GenerateGUID():sub(-6):gsub("}","");
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.Koronis.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(0, 482, 0, 136);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5,0.5)
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.Koronis.Frame.LocalScript
G2L["3"] = Instance.new("LocalScript", G2L["2"]);



-- StarterGui.Koronis.Frame.UIGradient
G2L["4"] = Instance.new("UIGradient", G2L["2"]);
G2L["4"]["Rotation"] = 61;
G2L["4"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(2, 42, 116)),ColorSequenceKeypoint.new(0.680, Color3.fromRGB(48, 56, 73)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(54, 58, 68))};


-- StarterGui.Koronis.Frame._Name
G2L["5"] = Instance.new("TextLabel", G2L["2"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5"]["TextScaled"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(0, 159, 0, 36);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Koronis]];
G2L["5"]["Name"] = [[_Name]];
G2L["5"]["Position"] = UDim2.new(0.20643, 0, 0.29136, 0);


-- StarterGui.Koronis.Frame._Version
G2L["6"] = Instance.new("TextLabel", G2L["2"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6"]["Size"] = UDim2.new(0, 159, 0, 24);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[Version: v2.9]];
G2L["6"]["Name"] = [[_Version]];
G2L["6"]["Position"] = UDim2.new(0.20643, 0, 0.50475, 0);


-- StarterGui.Koronis.Frame._Version.UIPadding
G2L["7"] = Instance.new("UIPadding", G2L["6"]);



-- StarterGui.Koronis.Frame.CanvasGroup
G2L["8"] = Instance.new("CanvasGroup", G2L["2"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 22);
G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8"]["Size"] = UDim2.new(0, 444, 0, 20);
G2L["8"]["Position"] = UDim2.new(0.5, 0, 0.81571, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Koronis.Frame.CanvasGroup.Progress
G2L["9"] = Instance.new("Frame", G2L["8"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(2, 42, 116);
G2L["9"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Name"] = [[Progress]];
G2L["9"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Koronis.Frame.CanvasGroup.Progress.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);



-- StarterGui.Koronis.Frame.CanvasGroup.Progress.UIStroke
G2L["b"] = Instance.new("UIStroke", G2L["9"]);
G2L["b"]["Color"] = Color3.fromRGB(149, 149, 149);


-- StarterGui.Koronis.Frame.CanvasGroup.Progress.UIGradient
G2L["c"] = Instance.new("UIGradient", G2L["9"]);
G2L["c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(89, 89, 89))};


-- StarterGui.Koronis.Frame.CanvasGroup.UICorner
G2L["d"] = Instance.new("UICorner", G2L["8"]);



-- StarterGui.Koronis.Frame.CanvasGroup.UIStroke
G2L["e"] = Instance.new("UIStroke", G2L["8"]);
G2L["e"]["Color"] = Color3.fromRGB(149, 149, 149);


-- StarterGui.Koronis.Frame.UICorner
G2L["f"] = Instance.new("UICorner", G2L["2"]);



-- StarterGui.Koronis.Frame.UIStroke
G2L["10"] = Instance.new("UIStroke", G2L["2"]);
G2L["10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["10"]["Thickness"] = 1.8;
G2L["10"]["Color"] = Color3.fromRGB(182, 182, 182);


-- StarterGui.Koronis.Frame.LocalScript
local function C_3()
local script = G2L["3"];
	local TweenService = game.TweenService
	local parent = script.Parent
	local canvas = parent.CanvasGroup
	local progress = canvas.Progress
	local size, pos = parent.Size, parent.Position
	
	local function tweenObject(obj, info, props)
		local tween = TweenService:Create(obj, info, props)
		tween:Play()
		return tween
	end
	
	local function fadeText(obj, transparency, duration)
		tweenObject(obj, TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = transparency})
	end
	
	local function fadeUI(obj, transparency, duration)
		tweenObject(obj, TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = transparency})
	end
	
	local function fadeStroke(obj, transparency, duration)
		tweenObject(obj, TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = transparency})
	end
	
	local function init()
		if game.Lighting:FindFirstChild("Blur") then
			tweenObject(game.Lighting.Blur, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = 10})
		else
			Instance.new("BlurEffect", game.Lighting).Size = 0
			tweenObject(game.Lighting.Blur, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = 10})
		end
		parent._Name.TextTransparency = 1
		parent._Version.TextTransparency = 1
		canvas.UIStroke.Transparency = 1
		canvas.BackgroundTransparency = 1
		parent.Size = UDim2.fromOffset(0, 0)
	
		parent:TweenSize(size, Enum.EasingDirection.Out, Enum.EasingStyle.Back, 2, true, function()
			fadeText(parent._Version, 0, .5)
			fadeText(parent._Name, 0, .5)
			fadeUI(canvas, 0.5, .5)
			fadeStroke(canvas.UIStroke, 0, .5)
	
			for i = 0, 1, 0.01 do
				task.wait(0.01)
				progress.Size = UDim2.new(i, 0, progress.Size.Y.Scale, progress.Size.Y.Offset)
			end
			progress.Size = UDim2.new(1, 0, progress.Size.Y.Scale, progress.Size.Y.Offset)
	
			fadeText(parent._Version, 1, .5)
			fadeText(parent._Name, 1, .5)
			fadeUI(canvas, 1, .5)
			fadeStroke(canvas.UIStroke, 1, .5)
			fadeUI(progress, 1, .5)
			fadeStroke(progress.UIStroke, 1, .5)
	
			task.wait(1)
			parent:TweenSizeAndPosition(UDim2.fromScale(0, 0), UDim2.fromScale(0.5, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 1, true)
			if game.Lighting:FindFirstChild("Blur") then
				tweenObject(game.Lighting.Blur, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = 0})
			end
		end)
	end
	
	init()
	
end;
task.spawn(C_3);

return G2L["1"], require;
