if not isfolder("Koronis") then
	makefolder("Koronis")
end
KeyModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/nf-36/Koronis/refs/heads/main/Data/KeySystemModule.lua"))()
local ImGui = loadstring(game:HttpGet('https://github.com/depthso/Roblox-ImGUI/raw/main/ImGui.lua'))()
local Notify = function(title, content, duration)
	local ModalWindow = ImGui:CreateModal({ --// Returns a Tab class
		Title = title,
		AutoSize = "Y"
	})

	ModalWindow:Label({
		Text = content,
	})
	ModalWindow:Separator()

	ModalWindow:Button({
		Text = "Okay",
		Callback = function()
			ModalWindow:Close()
		end,
	})
end
KeyModule.Notify = Notify


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

local _PremiumAd = nil
local _KeySystem = nil
local ProgressBarWindow = ImGui:CreateWindow({
	Title = "Koronis",
	TabsBar = false,
	AutoSize = "Y",
	NoCollapse = true,
	NoResize = true
})

local progess = ProgressBarWindow:CreateTab({
	Name = "Demos",
})

local ProgressBar = progess:ProgressBar({
	Label = "Loading...",
	Percentage = 80
})

ProgressBarWindow:Center()
ProgressBarWindow:ShowTab(progess) 

local Percentage = 0
while Percentage < 100 do
		Percentage += 1
	ProgressBar:SetPercentage(Percentage % 100)
	task.wait(.01)
end
ProgressBarWindow.Close()


-- [key] --
local KeySystem = ImGui:CreateWindow({
	Title = "Koronis",
	Size = UDim2.fromOffset(325,175),
	NoCollapse = true,
	NoResize = true
})
_KeySystem = KeySystem
	
KeySystem:Center()
local Content = KeySystem:CreateTab({
	Name = "Redeem"
})

local Key = Content:InputText({
	Label = "Key",
	PlaceHolder = "Key here",
	Value = "",
})

Content:Button({
	Text = "Enter",
	Callback = function()
		local response = KeyModule.Functions.CheckKey(Key:GetValue())
		if response.STATUS.code == "KEY_VALID" then
			writefile("Koronis/key.txt",Key:GetValue())
			response.KEYSCRIPT:Destroy()
			KeySystem:Close()
			script_key = Key:GetValue()
			response.API.load_script()
			script:Destroy()
		end
	end,
})
Content:Button({
	Text = "Copy Free Key Website",
	Callback = function()
		setclipboard("https://Koronis.uwu.ai/#keys")
		Notify("Link Copied", "Free key link copied to clipboard.")
	end,
})

-- [premium] --
local PremiumContent = KeySystem:CreateTab({
	Name = "Premium"
})

PremiumContent:Label({
	Text = "Unlock exclusive features with Koronis Premium!",
	TextWrapped = true
})

PremiumContent:Button({
	Text = "Purchase Premium",
	Callback = function()
		setclipboard("https://Koronis.uwu.ai/#products")
		Notify("Link Copied", "Premium purchase link copied to clipboard.")
	end,
})



game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Init",
	Text = "Script loaded",
	Duration = 5
})
