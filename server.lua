server.lua

local puffData = {} -- Stockage temporaire (à lier à une DB pour du persistant)

RegisterCommand('usepuff', function(source)
    local xPlayer = source -- Si tu utilises ESX ou QB-Core, récupère l'objet joueur ici
    
    if not puffData[source] then
        puffData[source] = 10 -- Limite de 10 taffes par exemple
    end

    if puffData[source] > 0 then
        puffData[source] = puffData[source] - 1
        TriggerClientEvent('vape:startPuff', source)
        print("Taffes restantes : " .. puffData[source])
    else
        TriggerClientEvent('chat:addMessage', source, {args = {"Puff", "Ta puff est cramée (0 taffes)."}})
    end
end)