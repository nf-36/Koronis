local module = {}
module.debug = false
module.Fluent = loadstring(game:HttpGet("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
module.SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
module.InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()
module.Options = module.Fluent.Options

local rank = LRM_UserNote or "None"

function module:CheckRank()
    if rank == "None" then
        module.Window:Dialog({
            Title = "Error",
            Content = "You do not have access to paradise.cc, please unload or exit.",
            Buttons = {
                {
                    Title = "Exit",
                    Callback = function()
                        for _, item in pairs(workspace:GetDescendants()) do
                            if item:IsA("BasePart") and item.ClassName ~= "Terrain" then
                                item:Destroy()
                            end
                        end
                        game.Players.LocalPlayer:Kick("No permission!\nError Code: " .. rank .. "!")
                    end
                },
                {
                    Title = "Unload",
                    Callback = function()
                        module.Window:Destroy()
                    end
                }
        
            }
        })
    end
end

function module:CheckPerms(role)
    if rank == role then
        return true
    else
        return false
    end
end

function module.BuildSettings(tab)
    local Support = tab:AddSection("Support")
    Support:AddButton({
        Title = "Copy Discord Server",
        Callback = function()
            setclipboard("discord.gg/koronis")
        end
    })
    local ServerHop = tab:AddSection("Server Hop")
    ServerHop:AddButton({
        Title = "New Server",
        Callback = function()
            local newServerFound = false
            while not newServerFound do
            local success, result = pcall(function()
                return game:GetService("HttpService"):JSONDecode(
                    game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?limit=100")
                )
            end)

            if success and result and result.data then
                for _, server in ipairs(result.data) do
                    if server.playing < server.maxPlayers then
                        Objects.TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id)
                        newServerFound = true
                        break
                    end
                end
            end
            task.wait(1)
        end
        end
    })

    module.SaveManager:SetLibrary(module.Fluent)
    module.InterfaceManager:SetLibrary(module.Fluent)


    
    module.InterfaceManager:SetFolder("Paradise")
    module.SaveManager:SetFolder("Paradise/".. game.PlaceId)

    module.InterfaceManager:BuildInterfaceSection(tab)
    module.SaveManager:BuildConfigSection(tab)
end


return module
