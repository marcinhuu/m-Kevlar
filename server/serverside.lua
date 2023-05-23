if Config.Settings.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Settings.Framework == "esx" then
    ESX = exports['es_extended']:getSharedObject()
end

if Config.Settings.Framework == "qb" then
    QBCore.Functions.CreateUseableItem(Config.Vests.Lightvest.Item, function(source, item)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if Player.Functions.RemoveItem(Config.Vests.Lightvest.Item, 1) then
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Vests.Lightvest.Item], "remove", 1)
            TriggerClientEvent("m-Kevlar:Client:WearingVest", src, "lightvest")
        end
    end)
    QBCore.Functions.CreateUseableItem(Config.Vests.Mediumvest.Item, function(source, item)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if Player.Functions.RemoveItem(Config.Vests.Mediumvest.Item, 1) then
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Vests.Mediumvest.Item], "remove", 1)
            TriggerClientEvent("m-Kevlar:Client:WearingVest", src, "mediumvest")
        end
    end)
    QBCore.Functions.CreateUseableItem(Config.Vests.Heavyvest.Item, function(source, item)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if Player.Functions.RemoveItem(Config.Vests.Heavyvest.Item, 1) then
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Vests.Heavyvest.Item], "remove", 1)
            TriggerClientEvent("m-Kevlar:Client:WearingVest", src, "heavyvest")
        end
    end)
elseif Config.Settings.Framework == "esx" then
    ESX.RegisterUsableItem(Config.Vests.Lightvest.Item, function(source, item) 
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(Config.Vests.Lightvest.Item, 1)
        TriggerClientEvent("m-Kevlar:Client:WearingVest", src, "lightvest")
    end)
    ESX.RegisterUsableItem(Config.Vests.Mediumvest.Item, function(source, item) 
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(Config.Vests.Mediumvest.Item, 1)
        TriggerClientEvent("m-Kevlar:Client:WearingVest", src, "lightvest")
    end)
    ESX.RegisterUsableItem(Config.Vests.Heavyvest.Item, function(source, item) 
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(Config.Vests.Heavyvest.Item, 1)
        TriggerClientEvent("m-Kevlar:Client:WearingVest", src, "lightvest")
    end)
end