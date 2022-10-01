RZUI = RZUI or {}
RZUI.Locations = {
    {
        title = "Los Santos",
        descrption = "Safe Zone de Los Santos",
        img = "https://media.discordapp.net/attachments/931630820865753188/959530180609712188/Screenshot_7.png?width=700&height=683",
        pos = { x = 15.15, y = -642.64, z = 16.09, h = 200 }
    },
    {
        title = "Front Post Los Santos",
        descrption = "Front Post Los Santos",
        img = "https://media.discordapp.net/attachments/931630820865753188/959530181398261810/Screenshot_8.png?width=700&height=683",
        pos = { x = -1071.14, y = -1669.36, z = 4.43, h = 200 }
    },
    {
        title = "Front Post Los Santos 2",
        descrption = "Front Post Los Santos 2",
        img = "https://media.discordapp.net/attachments/931630820865753188/959532033707753623/Screenshot_11.png?width=700&height=683",
        pos = { x = 1269.98, y = -2562.42, z = 42.94, h = 200 }
    },
    {
        title = "Safe City Blaine County",
        descrption = "Safe City Blaine County",
        img = "https://media.discordapp.net/attachments/931630820865753188/959532032277512272/Screenshot_10.png?width=700&height=683",
        pos = { x = 2714.94, y = 3488.27, z = 62.74, h = 200 }
    },
}

-- for test only
-- RegisterCommand("tpui", function()
--     TriggerEvent("RZ:OpenTpUI")
-- end)

RegisterNUICallback("RZUi:escapeTPUi", function()
    SendNUIMessage({
        event = "APP_HIDE",
    })
    SetNuiFocus(false, false)
end)

RegisterNUICallback("RZUi:TPToLoc", function(data)
    SendNUIMessage({
        event = "APP_HIDE",
    })
    SetNuiFocus(false, false)
    TriggerEvent("RZFramework:TPUi:TPToLoc", data)
end)

RegisterNetEvent("RZ:OpenTpUI")
AddEventHandler("RZ:OpenTpUI", function()
    SendNUIMessage({
        event = "APP_SHOW",
    })
    
    SendNUIMessage({
        event = "SHOW_TPUI",
    })

    SendNUIMessage({
        event = "LOCATIONS_DATA",
        data = RZUI.Locations
    })

    SetNuiFocus(true, true)
end)