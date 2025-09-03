RegisterCommand("pileouface", function(source, args, rawCommand)
    local src = source
    local players = GetPlayers()


    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)

    local closestPlayer, closestDist
    closestDist = Config.distance
    closestPlayer = nil

    for _, pid in pairs(players) do
        pid = tonumber(pid)
        if pid ~= src then
            local ped2 = GetPlayerPed(pid)
            local coords2 = GetEntityCoords(ped2)
            local dist = #(coords - coords2)
            if dist < closestDist then
                closestPlayer = pid
                closestDist = dist
            end
        end
    end


    local resultat = math.random(0, 1) == 0 and "pile" or "face"


    TriggerClientEvent("old_piece:show", src, resultat, true)


    if closestPlayer then
        TriggerClientEvent("old_piece:show", closestPlayer, resultat, false)
    end
end, false)
