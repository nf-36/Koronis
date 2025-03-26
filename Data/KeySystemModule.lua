local module = {}

module.IDs = {
    ["Universal"] = "baf0792f6cce01ba2040d6bf52996eb8", --  | Koronis Hub
    [14350413280] = "dd624dce3675715d34af679cdc1f6860", --  | Koronis Hub
    [8884433153] = "2f3e1443b79ad9ca4c483dcf537d4288", --  | Koronis Hub
    [16981421605] = "d8915bbb7d1b33a9a95deb956eeb5f2c", -- | Koronis Hub
    [8737602449] = "cbb78863ac6a5a39812d96b9f2c680f7", -- PLS DONATE | DonationAI
    [14966088789] = "cbb78863ac6a5a39812d96b9f2c680f7", -- PLS DONATE BUT INF | DonationAI
    [6652551895] = "cbb78863ac6a5a39812d96b9f2c680f7", -- Donate Game | DonationAI
    [8916037983] = "cbb78863ac6a5a39812d96b9f2c680f7", -- Starving Artists | DonationAI
    [140588718649817] = "cbb78863ac6a5a39812d96b9f2c680f7", -- Starving Pianists | DonationAI
    [125723653259639] = "179b8d89aeb59c86b1faac02490982c7", -- Drill Digging Simulator | Koronis Hub,
    [142823291] = "715b720f239e20ee194665e05b77ad6e" -- Murder Mystery 2 | Koronis Hub
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
