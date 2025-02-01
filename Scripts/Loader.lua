local Script = {
    Fluent = {
        UI = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))(),
        Window = {
            Title = "paradise.cc",
            SubTitle = "One script to rule them all",
            Theme = "Dark",
            TabWidth = 160,
            Size = UDim2.fromOffset(580, 460),
            Acrylic = true, 
        }
    },
    KeyModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/nf-36/paradise.cc/refs/heads/main/Data/KeySystemModule.lua"))(),
}
local Window = Script.Fluent.UI:CreateWindow(Script.Fluent.Window)
Script.KeyModule.Fluent = Script.Fluent.UI
local Notify = function(title, content, duration)
    Script.Fluent.UI:Notify({
        Title = title,
        Content = content,
        Duration = duration
    })
end

Tabs = {
    Auth = function ()
        local Authenticate = Window:AddTab({ Title = "Redeem", Icon = "lock" })
        Authenticate:AddInput("Key",{
            Title = "Enter Key",
            Default = "",
            Placeholder = "Enter your key here...",
            Callback = function(value)
                script_key = value
            end
        })
    
        Authenticate:AddButton({
            Title = "Redeem Key",
            Callback = function()
                Script.KeyModule.Functions.CheckKey(script_key)
            end
        })
    
        local KeySection = Authenticate:AddSection("Key Website")
        KeySection:AddButton({
            Title = "Copy Free Key Link",
            Callback = function()
                setclipboard("https://paradisecc.uwu.ai/#keys")
                Notify("Link Copied", "Free key link copied to clipboard. Check your clipboard to get a free key.", 5)
            end
        })
    end,
    Premium = function ()
        local Premium = Window:AddTab({ Title = "Premium", Icon = "gift" })
        Premium:AddParagraph({
            Title = "Purchase paradise.cc Premium",
            Content = "Tired of watching ads? We offer lifetime keys over at our website!"
        })
        Premium:AddButton({
            Title = "Copy Website Link",
            Callback = function()
                setclipboard("https://paradisecc.uwu.ai/#products")
                Notify("Link Copied", "Website link copied to clipboard. Check your clipboard to make a purchase.", 5)
            end
        })
    end
}


Tabs.Auth()
Tabs.Premium()

Notify("paradise.cc", "The script has been loaded.", 8)
Window:SelectTab(1) 
