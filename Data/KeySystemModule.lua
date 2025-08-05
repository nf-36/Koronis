local module = {}

module.IDs = {
    ["Universal"] = "baf0792f6cce01ba2040d6bf52996eb8", --  Universal | Koronis Hub
    [8884433153] = "2f3e1443b79ad9ca4c483dcf537d4288", --  Collect All Pets | Koronis Hub
    [142823291] = "715b720f239e20ee194665e05b77ad6e", -- Murder Mystery 2 | Koronis Hub
    [126884695634066] = "8cb305a7f15b76a99ee86609a57e02f8", -- Grow A Garden | Loader
    [81440632616906] = "a9dcd9bce78522b3b8970c84288f57e1", -- Dig to Earth's Core | Loader
    [125723653259639] = "8cb305a7f15b76a99ee86609a57e02f8", -- Drill Digging Simulator
    [89343390950953] = "8cb305a7f15b76a99ee86609a57e02f8", -- My Singing Brainrot | Loader
    [17295191183] = "8cb305a7f15b76a99ee86609a57e02f8", -- Ultimate Town Multiplayer | Loader
    [137925884276740] = "8cb305a7f15b76a99ee86609a57e02f8" -- Build a Plane
}
module.ScriptID = module.IDs[game.PlaceId] and module.IDs[game.PlaceId] or module.IDs.Universal
module.api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
module.api.script_id = module.ScriptID


module.Notify = nil


module.Functions = {
    CheckKey = function(Key)
        local status = module.api.check_key(Key)

        if status.code == "KEY_VALID" then
            script_key = Key
            return {STATUS=status,API=module.api,KEYSCRIPT=script}
        else
            if module.Notify ~= nil then
                module.Notify("Error",status.message,5)
            end
            return {STATUS=status,API=module.api,KEYSCRIPT=script}
        end
    end
}

return module
