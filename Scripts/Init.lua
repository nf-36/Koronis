repeat task.wait(0.01) until game:IsLoaded()
local module = {}
module.debug = false
module.Fluent = loadstring(game:HttpGet("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
module.SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
module.InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()
module.Options = module.Fluent.Options

function module:CheckPerms(rank, role)
    if rank == role then
        return true
    else
        return false
    end
end

function module.BuildSettings(tab)
    if game.PlaceId == 142823291 then
        tab:AddSection("afy was here")
    end
    local Support = tab:AddSection("Support")
    Support:AddButton({
        Title = "Copy Discord Server",
        Callback = function()
            setclipboard("discord.gg/koronis")
        end
    })

    module.SaveManager:SetLibrary(module.Fluent)
    module.InterfaceManager:SetLibrary(module.Fluent)


    
    module.InterfaceManager:SetFolder("Koronis")
    module.SaveManager:SetFolder("Koronis/".. game.PlaceId)

    module.SaveManager:BuildConfigSection(tab)

    module.SaveManager:LoadAutoloadConfig()
end


return module
