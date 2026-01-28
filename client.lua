local isSmoking = false

RegisterNetEvent('vape:startPuff')
AddEventHandler('vape:startPuff', function()
    if isSmoking then return end
    isSmoking = true

    local playerPed = PlayerPedId()
    
    -- Charger l'animation
    RequestAnimDict("anim@heists@humane_labs@finale@keycards")
    while not HasAnimDictLoaded("anim@heists@humane_labs@finale@keycards") do Wait(10) end

    -- Jouer l'animation
    TaskPlayAnim(playerPed, "anim@heists@humane_labs@finale@keycards", "ped_a_intro_loop", 8.0, 8.0, 2000, 49, 0, false, false, false)
    
    Wait(2000) -- Temps de l'inspiration

    -- Effet de fumée
    local particleDict = "core"
    local particleName = "exp_grd_bzgas_smoke"
    RequestNamedPtfxAsset(particleDict)
    while not HasNamedPtfxAssetLoaded(particleDict) do Wait(10) end

    SetPtfxAssetNextCall(particleDict)
    local smoke = StartNetworkedParticleFxNonLoopedOnEntityBone(particleName, playerPed, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetPedBoneIndex(playerPed, 20279), 0.5, false, false, false)
    
    isSmoking = false
    TriggerEvent('chat:addMessage', {args = {"Puff", "Quelle saveur incroyable !"}})
end)