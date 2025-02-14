local starttime = tick()
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

local tabs = {
	KeySystem = function()
		local KeySystem = ImGui:CreateWindow({
			Title = "Koronis",
			TabsBar = false,
			AutoSize = "Y",
			NoCollapse = true,
			NoResize = true
		})
		_KeySystem = KeySystem
			
        KeySystem:Center()
		local Content = KeySystem:CreateTab({
			Visible = true
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
				if response.STATUS then

					response.KEYSCRIPT:Destroy()
					KeySystem:Close()
					_PremiumAd:Close()
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
	end,
	Premium = function()
		local PremiumAd = ImGui:CreateWindow({
			Title = "Koronis Premium",
			TabsBar = false,
			AutoSize = "Y",
			NoCollapse = true,
			NoResize = true,
			Position = _KeySystem.Position + UDim2.new(0, 0, 0.125, 0)
		})
		_PremiumAd = PremiumAd
				
		local Content = PremiumAd:CreateTab({
			Visible = true
		})
		
		Content:Label({
			Text = "Unlock exclusive features with Koronis Premium!",
			TextWrapped = true
		})
		
		Content:Button({
			Text = "Purchase Premium",
			Callback = function()
				setclipboard("https://Koronis.uwu.ai/#products")
				Notify("Link Copied", "Premium purchase link copied to clipboard.")
			end,
		})
		
		Content:Button({
			Text = "Close",
			Callback = function()
				PremiumAd:Close()
			end,
		})
		
	end
}

for i,v in pairs(tabs) do
	v()
end

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Init",
	Text = "Script loaded in "..(math.round(tick()-starttime)).."s",
	Duration = 5
})
