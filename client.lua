local QBCore = exports['qb-core']:GetCoreObject()
local cars = {'police', 'police2'} -- سيارات التي يتم حمايتهم 
local ped = PlayerPedId()

CreateThread(function()
    while true do
        Wait(1)
        local vehicle = GetVehiclePedIsUsing(ped, false)
        local Player = QBCore.Functions.GetPlayerData()
        local jobName = Player.job.name
        if jobName ~= 'police' then 
        if IsPedInAnyVehicle(ped, false) then
            
            for _, v in pairs(cars) do
                if GetHashKey(v) == GetEntityModel(vehicle) then
        
       
                    Wait(100)
                    TaskLeaveVehicle(ped, vehicle, 0)
            
                  
        end
            end        end 
    end
        
    end
end)