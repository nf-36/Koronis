local module = {}

module.IDs = {
    ["Universal"] = "baf0792f6cce01ba2040d6bf52996eb8",
    [14350413280] = "dd624dce3675715d34af679cdc1f6860",
    [8884433153] = "2f3e1443b79ad9ca4c483dcf537d4288",
    [122220249529691] = "10934afa53546c3bbb7e6f8dd76cee72"
}

module.Functions = {
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

return module
