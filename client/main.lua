local function playCoinAnim()
    local ped = PlayerPedId()
    local dict = "anim@mp_snowball"
    local anim = "pickup_snowball"

    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(0)
    end

    TaskPlayAnim(ped, dict, anim, 2.0, -2.0, 1000, 49, 0, false, false, false)

    Citizen.SetTimeout(1500, function()
        ClearPedTasks(ped)
    end)
end


RegisterNetEvent("old_piece:show")
AddEventHandler("old_piece:show", function(resultat, isThrower)
    if isThrower then
        playCoinAnim()
    end

    SendNUIMessage({
        action = "show_piece",
        resultat = resultat
    })

    if Config.ShowInChat then
        TriggerEvent('chat:addMessage', {
            color = { 255, 215, 0 },
            args = { "Pile ou Face", "La pièce est tombée sur : " .. resultat }
        })
    end
end)
