if Config.Settings.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Settings.Framework == "esx" then
    ESX = exports['es_extended']:getSharedObject()
end

RegisterNetEvent('m-Kevlar:Client:WearingVest', function(type)
    if Config.Settings.Framework == "qb" then
        local playerPed = PlayerPedId()
        if CheckPlayer() then
            if GetPedArmour(PlayerPedId()) == 100 then Notify("Your armour is full!", "error", 5000) return end
            if type == "lightvest" then
                QBCore.Functions.Progressbar("WearingVest", Config.Vests.Lightvest.Text, Config.Vests.Lightvest.Time, false, true, {
                    disableMovement = false, 
                    disableCarMovement = false, 
                    disableMouse = false, 
                    disableCombat = true, 
                }, {
                    animDict = Config.Vests.Lightvest.animDict, 
                    anim = Config.Vests.Lightvest.anim, 
                    flags = 16, }, 
                {}, {}, function()
                    local armour = GetPedArmour(playerPed)
                    AddArmourToPed(playerPed, armour + Config.Vests.Lightvest.Armour)
                    Notify("+ "..Config.Vests.Lightvest.Armour.."% Armour", "success", 5000)
                end, function()
                    ClearPedTasks(playerPed)
                end)
            elseif type == "mediumvest" then
                if GetPedArmour(PlayerPedId()) == 100 then Notify("Your armour is full!", "error", 5000) return end
                QBCore.Functions.Progressbar("WearingVest", Config.Vests.Mediumvest.Text, Config.Vests.Mediumvest.Time, false, true, {
                    disableMovement = false, 
                    disableCarMovement = false, 
                    disableMouse = false, 
                    disableCombat = true, 
                }, {
                    animDict = Config.Vests.Mediumvest.animDict, 
                    anim = Config.Vests.Mediumvest.anim, 
                    flags = 16, }, 
                {}, {}, function()
                    local armour = GetPedArmour(playerPed)
                    AddArmourToPed(playerPed, armour + Config.Vests.Mediumvest.Armour)
                    Notify("+ "..Config.Vests.Mediumvest.Armour.."% Armour", "success", 5000)
                end, function()
                    ClearPedTasks(playerPed)
                end)
            elseif type == "heavyvest" then
                if GetPedArmour(PlayerPedId()) == 100 then Notify("Your armour is full!", "error", 5000) return end
                QBCore.Functions.Progressbar("WearingVest", Config.Vests.Heavyvest.Text, Config.Vests.Heavyvest.Time, false, true, {
                    disableMovement = false, 
                    disableCarMovement = false, 
                    disableMouse = false, 
                    disableCombat = true, 
                }, {
                    animDict = Config.Vests.Heavyvest.animDict, 
                    anim = Config.Vests.Heavyvest.anim, 
                    flags = 16, }, 
                {}, {}, function()
                    local armour = GetPedArmour(playerPed)
                    AddArmourToPed(playerPed, armour + Config.Vests.Heavyvest.Armour)
                    Notify("+ "..Config.Vests.Heavyvest.Armour.."% Armour", "success", 5000)
                end, function()
                    ClearPedTasks(playerPed)
                end)
            end
        end
    elseif Config.Settings.Framework == "esx" then
        local playerPed = PlayerPedId()
        if type == "lightvest" then
            if GetPedArmour(PlayerPedId()) == 100 then Notify("Your armour is full!", "error", 5000) return end
            lib.progressBar({
                duration = Config.Vests.Lightvest.Time,
                label = Config.Vests.Lightvest.Text,
                useWhileDead = false,
                canCancel = true,
                disable = {
                    car = true,
                    move = true,
                    cobat = true,
                },
                anim = {
                    dict = Config.Vests.Lightvest.animDict,
                    clip = Config.Vests.Lightvest.anim,
                },
            }) 
            local armour = GetPedArmour(playerPed)
            AddArmourToPed(playerPed, armour + Config.Vests.Lightvest.Armour)
            Notify("+ "..Config.Vests.Lightvest.Armour.."% Armour", "success", 5000)
        elseif type == "mediumvest" then
            if GetPedArmour(PlayerPedId()) == 100 then Notify("Your armour is full!", "error", 5000) return end
            lib.progressBar({
                duration = Config.Vests.Mediumvest.Time,
                label = Config.Vests.Mediumvest.Text,
                useWhileDead = false,
                canCancel = true,
                disable = {
                    car = true,
                    move = true,
                    cobat = true,
                },
                anim = {
                    dict = Config.Vests.Mediumvest.animDict,
                    clip = Config.Vests.Mediumvest.anim,
                },
            }) 
            local armour = GetPedArmour(playerPed)
            AddArmourToPed(playerPed, armour + Config.Vests.Mediumvest.Armour)
            Notify("+ "..Config.Vests.Mediumvest.Armour.."% Armour", "success", 5000)
        elseif type == "heavyvest" then
            if GetPedArmour(PlayerPedId()) == 100 then Notify("Your armour is full!", "error", 5000) return end
            lib.progressBar({
                duration = Config.Vests.Heavyvest.Time,
                label = Config.Vests.Heavyvest.Text,
                useWhileDead = false,
                canCancel = true,
                disable = {
                    car = true,
                    move = true,
                    cobat = true,
                },
                anim = {
                    dict = Config.Vests.Heavyvest.animDict,
                    clip = Config.Vests.Heavyvest.anim,
                },
            }) 
            local armour = GetPedArmour(playerPed)
            AddArmourToPed(playerPed, armour + Config.Vests.Heavyvest.Armour)
            Notify("+ "..Config.Vests.Heavyvest.Armour.."% Armour", "success", 5000)
        end
    end
end)