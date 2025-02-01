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
    KeyModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/nf-36/paradise.cc/refs/heads/main/Data/IDModule.lua"))(),
}

local Window = Script.Fluent.UI:CreateWindow(Script.Fluent.Window)
Script.KeyModule.Fluent = Script.Fluent.UI

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
                if Script.KeyModule.IDs[game.PlaceId] then
                    Script.KeyModule.Functions.CheckKey({
                        Key = script_key,
                        ScriptID = Script.KeyModule.IDs[game.PlaceId]
                    })
                else
                    Script.KeyModule.Functions.CheckKey({
                        Key = script_key,
                        ScriptID = Script.KeyModule.IDs.Universal
                    })
                end
            end
        })
    
        local KeySection = Authenticate:AddSection("Key Website")
        KeySection:AddButton({
            Title = "Copy Free Key Link",
            Callback = function()
                setclipboard("https://paradisecc.uwu.ai/#keys")
                Script.Fluent.UI:Notify({
                    Title = "Link Copied",
                    Content = "Key link copied to clipboard. Check your clipboard to follow checkpoints.",
                    Duration = 5,
                    Image = "check"
                })
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
                Script.Fluent.UI:Notify({
                    Title = "Link Copied",
                    Content = "Purchase link copied to clipboard. Check your clipboard to make a purchase.",
                    Duration = 5,
                })
            end
        })
    end
}


Tabs.Auth()
Tabs.Premium()

-- Notify user that the script has been loaded
Script.Fluent.UI:Notify({
    Title = "paradise.cc",
    Content = "The script has been loaded.",
    Duration = 8
})
Window:SelectTab(1)
