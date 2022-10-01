local Cam = nil
RZ = RZ or {}
TriggerEvent('RZ:GetFramework', function(object)
    RZ = object
end)

RegisterNetEvent("rz-dialog:UpdateInfo")
AddEventHandler("rz-dialog:UpdateInfo", function(userName, uuid, date, asd)
	print('rz-dialog', userName, uuid)
	SendNUIMessage({
		action = "update",
		username = userName,
		id = uuid,
		date = date,
		asd = asd
	})
end)


