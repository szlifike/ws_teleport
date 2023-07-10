Core = nil

if Config.Framework:upper() == 'NEW_ESX' then
    
    Core = exports['es_extended']:getSharedObject()

elseif Config.Framework:upper() == 'OLD_ESX' then

    Core = Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(0)
        end
    end)

elseif Config.Framework:upper() == 'QBCORE' then
    Core = exports['qb-core']:GetCoreObject()
end