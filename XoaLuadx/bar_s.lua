function add(plr, key, text, red, green, blue, ind)
	return triggerLatentClientEvent(plr, "XoaLuadx.bar:add", plr, key, text, red, green, blue, ind)
end

function del(plr, key)
	return triggerLatentClientEvent(plr, "XoaLuadx.bar:del", plr, key)
end
