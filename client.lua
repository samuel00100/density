local playerPed = GetPlayerPed(-1)
local playerLocalisation = GetEntityCoords(playerPed)

Citizen.CreateThread (function()
    while true do
        Citizen.Wait(0)
        SetParkedVehicleDensityMultiplierThisFrame (0.0)
        SetVehicleDensityMultiplierThisFrame (0.0)
        SetRandomVehicleDensityMultiplierThisFrame(0.0)
        SetPedDensityMultiplierThisFrame(0.0)
        SetScenarioPedDensityMultiplierThisFrame(0.0)
        SetCreateRandomCops(false)
		SetCreateRandomCopsNotOnScenarios(false)
		SetCreateRandomCopsOnScenarios(false)
		SetGarbageTrucks(false)
		SetRandomBoats(false)
        ClearArea(playerLocalisation.x, playerLocalisation.y, playerLocalisation.z, 1000.0, true, false, false, false)
    end
end)