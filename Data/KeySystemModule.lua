local module = {}

module.IDs = {
    ["Universal"] = "baf0792f6cce01ba2040d6bf52996eb8", --  Universal | Koronis Hub
    [8884433153] = "2f3e1443b79ad9ca4c483dcf537d4288", --  Collect All Pets | Koronis Hub
    [142823291] = "715b720f239e20ee194665e05b77ad6e", -- Murder Mystery 2 | Koronis Hub
    [73801682582529] = "fe3a3d936137408a4f153979276d1416", -- Zombie RNG Lobby | Koronis Hub
    [84759971088447] = "fe3a3d936137408a4f153979276d1416", -- Zombie RNG Game | Koronis Hub
    [126884695634066] = "c20cd2b9eb243faf8a3884d9ea459bf1", -- Grow A Garden | Koronis Hub
    -- [122678592501168] = "c4ed87d778560d4ffb69a1381802c24f", -- Beaks | Koronis Hub
    [606849621] = "764d9f1b4b09fec218950bcdf95b8cc2", -- Jailbreak | Koronis Hub
    [121154762177314] = "90623d08618a93383a67f543e84da5dc", -- Grow a Tree | Koronis Hub
    [81440632616906] = "24436993afc067cac69ff4e3c0bce3a8", -- Dig to Earth's Core | Koronis Hub
    [101949297449238] = "d0fe3a812ac0aaf27e6b7cb94350d9a2",
    [89343390950953] = "e279bbbda1b31b0cf3a955c304f780f4" -- My Singing Brainrot
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
