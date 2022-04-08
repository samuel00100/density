dens = 0.5
Citizen.CreateThread (function()
    while true do
        Citizen.Wait(0)
        SetParkedVehicleDensityMultiplierThisFrame (dens)
        SetVehicleDensityMultiplierThisFrame (dens)
        SetRandomVehicleDensityMultiplierThisFrame(dens)
        SetPedDensityMultiplierThisFrame(dens)
        SetScenarioPedDensityMultiplierThisFrame(dens)
    end
end)

RegisterCommand("density", function(source, args, rawCommand)
    dens = args[1]
    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {tostring(args[1]), dens}
      })
      
end)    
