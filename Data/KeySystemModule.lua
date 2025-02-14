local module = {}

module.IDs = {
    ["Universal"] = "baf0792f6cce01ba2040d6bf52996eb8",
    [14350413280] = "dd624dce3675715d34af679cdc1f6860",
    [8884433153] = "2f3e1443b79ad9ca4c483dcf537d4288",
    [16981421605] = "d8915bbb7d1b33a9a95deb956eeb5f2c",
}
module.Notify = nil
module.ScriptID = module.IDs[game.PlaceId] and module.IDs[game.PlaceId] or module.IDs.Universal

module.Functions = {
    CheckKey = function(Key)
        local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()

        api.script_id = module.ScriptID
    
        local status = api.check_key(Key)

        if status.code == "KEY_VALID" then
            if module.Notify ~= nil then
                module.Notify("Success",status.message,5)
            end
            return {STATUS=true,API=api,KEYSCRIPT=script}
        else
            if module.Notify ~= nil then
                module.Notify("Error",status.message,5)
            end
            return {STATUS=false,API=api,KEYSCRIPT=script}
        end
    end
}

return module
