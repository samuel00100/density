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
    TriggerEvent('chat:addSuggestion', '/density', '0.0 = none; 1.0 = max', {
        { name="0.0", help="none" },
        { name="1.0", help="max" }
    })
    dens = args[1]
    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {"Density: ", dens}
      })
      
end)    


