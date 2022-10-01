RegisterNetEvent("rz-notification")
AddEventHandler("rz-notification", function(title, text, color, duration)
    SendNUIMessage({
        text = text ~= nil and text or "nitros",
        title = title ~= nil and title or "lifezone",
        color = color,
        duration = duration ~= nil and duration or 5000
    })
end)

RegisterNetEvent("rz-notify")
AddEventHandler("rz-notify", function(title, text, color, duration)
    SendNUIMessage({
        text = text ~= nil and text or "nitros",
        title = title ~= nil and title or "lifezone",
        color = color,
        duration = duration ~= nil and duration or 5000
    })
end)

exports("rz-notify", function(title, text, color, duration)
    SendNUIMessage({
        text = text ~= nil and text or "nitros",
        title = title ~= nil and title or "lifezone",
        color = color,
        duration = duration ~= nil and duration or 5000
    })
end)