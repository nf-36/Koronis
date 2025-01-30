local module = {}

-- [ Player Functions ] --
module.LocalPlayer = function()
    return game:GetService("Players").LocalPlayer
end

module.Players = function()
    return game:GetService("Players"):GetPlayers()
end

-- [ GameInfo Functions ] --
module.GameName = function()
    return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
end
