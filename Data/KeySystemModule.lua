local module = {}

local function loadingScreen()
    pcall(function()
        local found = false
        if not isfile("loadingui2") then
            found = true
        elseif readfile("loadingui2") ~= game:GetObjects("rbxassetid://73248056782757")[1].Source then
            found = true
        end

        if found then
            writefile("loadingui2", game:GetObjects("rbxassetid://73248056782757")[1].Source)
        end

        loadstring(readfile("loadingui"))()
    end)
    
end


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
    [125723653259639] = "179b8d89aeb59c86b1faac02490982c7" -- Drill Digging Simulator | Koronis Hub
}
module.Notify = nil
module.ScriptID = module.IDs[game.PlaceId] and module.IDs[game.PlaceId] or module.IDs.Universal

module.Functions = {
    CheckKey = function(Key)
        local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()

        api.script_id = module.ScriptID
    
        local status = api.check_key(Key)

        if status.code == "KEY_VALID" then
            script_key = Key
            loadingScreen()
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
