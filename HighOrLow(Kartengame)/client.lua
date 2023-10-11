--[[
Erweiterung
else
    --Kartennummern
    ShowNotification('Die Karte ist eine ~p~Pick Dame') --Das in den Klammern in das umschreiben was ihr wollt.
--]]
RegisterCommand('hol',function(source, args, rawCommand)

    --txt
    ShowNotification('Es wird eine Karte gezogen...')
    
    --warten
    Citizen.Wait(3000)

    local randomNumber = math.random(1, 100)
    print(randomNumber)

    if randomNumber <= 30 then
        --kopf
        ShowNotification('Die Karte ist eine ~p~Pick 5')
    else
        --zahl
        ShowNotification('Die Karte ist eine ~p~Pick Dame')
    end
    --kopf/zahl

end)


function ShowNotification(text)
    SetNotificationTextEntry('STRING')
       AddTextComponentString(text)
    DrawNotification(false, true)
   end