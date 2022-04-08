dens = 0.5
zero = true

RegisterCommand("density", function(source, args, rawCommand)
    TriggerEvent('chat:addSuggestion', '/density', '0.0 = none; 1.0 = max', {
        { name="0.0 - 1.0", help="none - max" }
    })
    dens = args[1]
    if args[1] == 0.0 then
        zero = false
    end
    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {"Density: ", dens}
      })
      
end)    

Citizen.CreateThread (function()
    while true do
        Citizen.Wait(0)
        SetParkedVehicleDensityMultiplierThisFrame (dens)
        SetVehicleDensityMultiplierThisFrame (dens)
        SetRandomVehicleDensityMultiplierThisFrame(dens)
        SetPedDensityMultiplierThisFrame(dens)
        SetScenarioPedDensityMultiplierThisFrame(dens)
        SetCreateRandomCops(zero)
		SetCreateRandomCopsNotOnScenarios(zero)
		SetCreateRandomCopsOnScenarios(zero)
		SetGarbageTrucks(zero)
		SetRandomBoats(zero)
    end
end)