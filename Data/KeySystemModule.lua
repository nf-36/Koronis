local module = {}

module.Fluent = nil
module.IDs = {
    ["Universal"] = "baf0792f6cce01ba2040d6bf52996eb8",
    [14350413280] = "dd624dce3675715d34af679cdc1f6860",
    [8884433153] = "2f3e1443b79ad9ca4c483dcf537d4288",
    [122220249529691] = "10934afa53546c3bbb7e6f8dd76cee72"
}
module.ScriptID = module.IDs[game.PlaceId] and module.IDs[game.PlaceId] or module.IDs.Universal

module.Functions = {
    CheckKey = function(Key)
        local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()

        api.script_id = module.ScriptID
    
        local status = api.check_key(Key)

        if status.code == "KEY_VALID" then
            api.load_script();
            module.Fluent:Destroy()
            script:Destroy()
            return
        else
            if module.Fluent ~= nil then
                module.Fluent:Notify({
                    Title = "Error",
                    Content = status.message,
                    Duration = 5,
                })
            end
            return
        end
    end
}

return module
