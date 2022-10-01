AddEventHandler("playerConnecting", function(name)

    local player = source
    local steamIdentifier
    local identifiers = GetPlayerIdentifiers(player)

    for _, v in pairs(identifiers) do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
          steamid = v
        elseif string.sub(v, 1, string.len("license:")) == "license:" then
          license = v
        elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
          xbl  = v
        elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
          ip = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
          discord = v
        elseif string.sub(v, 1, string.len("live:")) == "live:" then
          liveid = v
        end
    end

    local array = {
        steamid = steamid,
        license = license,
        xbl = xbl,
        ip = ip,
        discord = discord,
        liveid = liveid
    }


    exports.mongodb:findOne({ collection="rzban", query ={ ["$or"] = { {licence= license}, {discord= discord}, {ip= ip}, {liveid= liveid} } } }, function(sucess, result) 
        if not sucess then
            return
        end
        if not result[1] then
            exports.mongodb:insertOne({ collection="rzban", document = {steam = steam, license = license, xbl = xbl, ip = ip, discord = discord, liveid = liveid } }, function (sucess, result, insertedIds)
                if not success then
                    return
                end
                print('[RZBAN] New user')
            end)
        elseif result[1] then
            exports.mongodb:updateOne({ collection="rzban", query ={ ["$or"] = { {licence= license}, {discord= discord}, {ip= ip}, {liveid= liveid} }} , update = { ["$set"] = { steam = steam, license = license, xbl = xbl, ip = ip, discord = discord, live = live } } }, function(sucess, result)
                if not sucess then
                    return
                end
                print('[RZBAN] Find user')
            end)
        end
    end)

end)