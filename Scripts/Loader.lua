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
    LoaderScripts = {
        ["Universal"] = "baf0792f6cce01ba2040d6bf52996eb8",
        [14350413280] = "dd624dce3675715d34af679cdc1f6860",
        [8884433153] = "2f3e1443b79ad9ca4c483dcf537d4288",
        [122220249529691] = "10934afa53546c3bbb7e6f8dd76cee72"
    }
}
Script.LoaderFunctions = {
    CheckKey = function(args)
        local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()

        api.script_id = args.ScriptID
    
        local status = api.check_key(args.Key)

        if status.code == "KEY_VALID" then
            api.load_script();
            Script.Fluent:Destroy()
            script:Destroy()
            return
        elseif (status.code == "KEY_HWID_LOCKED") then
            Script.Fluent.UI:Notify({
                Title = "Error",
                Content = "This key is locked to another device. Please contact support.",
                Duration = 5,
            })
            return
        elseif (status.code == "KEY_INCORRECT") then
            Script.Fluent.UI:Notify({
                Title = "Error",
                Content = "This key is incorrect. Please try again.",
                Duration = 5,
            })
            return   
        elseif (status.code == "KEY_INVALID") then
            Script.Fluent.UI:Notify({
                Title = "Error",
                Content = "This key is not a valid paradise.cc key.",
                Duration = 5,
            })
            return   
        end
    end
}

local Window = Script.Fluent.UI:CreateWindow(Script.Fluent.Window)

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
                if Script.LoaderScripts[game.PlaceId] then
                    Script.LoaderFunctions.CheckKey({
                        Key = script_key,
                        ScriptID = Script.LoaderScripts[game.PlaceId]
                    })
                else
                    Script.LoaderFunctions.CheckKey({
                        Key = script_key,
                        ScriptID = Script.LoaderScripts.Universal
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
