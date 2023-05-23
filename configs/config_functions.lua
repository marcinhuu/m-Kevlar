if Config.Settings.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Settings.Framework == "esx" then
    ESX = exports['es_extended']:getSharedObject()
end

function Notify(msg, type, time)
    if Config.Settings.Notify == "qb" then
        if type == "primary" then
            QBCore.Functions.Notify(msg, "primary", time)
        end
        if type == "success" then
            QBCore.Functions.Notify(msg, "success", time)
        end
        if type == "error" then
            QBCore.Functions.Notify(msg, "error", time)
        end
    elseif Config.Settings.Notify == "okok" then
        if type == "primary" then 
            exports['okokNotify']:Alert('Beach Activities', msg, time, 'primary')
        end
        if type == "success" then
            exports['okokNotify']:Alert('Beach Activities', msg, time, 'success')
        end
        if type == "error" then
            exports['okokNotify']:Alert('Beach Activities', msg, time, 'error')
        end
    elseif Config.Settings.Notify == "ox" then
        if type == "primary" then
            lib.notify({ title = 'Notification', description = msg, type = 'inform' })
        elseif type == "error" then
            lib.notify({ title = 'Notification', description = msg, type = 'error' })
        elseif type == "success" then
           lib.notify({ title = 'Notification', description = msg, type = 'success' })
        end
    end
end

function CheckPlayer()
    local playerPed = PlayerPedId()
    if IsEntityDead(playerPed) or IsPedSwimming(playerPed) or IsPedSittingInAnyVehicle(playerPed) then
        return false
    else
        return true
    end
end
