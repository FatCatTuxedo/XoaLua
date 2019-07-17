local data = {}
local disappearTime = 10000
function tocomma(number)
	while true do  
		number, k = string.gsub(number, "^(-?%d+)(%d%d%d)", '%1,%2')
		if (k == 0) then
			break
		end
	end
	return number
end

function mathround(number, decimals, method)
    decimals = decimals or 0
    local factor = 10 ^ decimals
    if (method == "ceil" or method == "floor") then return math[method](number * factor) / factor
    else return tonumber(("%."..decimals.."f"):format(number)) end
end

function PlayerMoneyChanged(playerMoney, newMoney)
		
	-- Determine if the player lost, or gained money (little things like calculating the difference on the client save the server a lot of CPU)
	if (tonumber(newMoney) and tonumber(playerMoney))then
		if (newMoney > playerMoney) then
			local difference = playerMoney - newMoney
			table.insert(data, {newMoney, playerMoney, tick})
		else
			local difference = newMoney - playerMoney
			table.insert(data, {newMoney, playerMoney, tick})
		end
	else
		return
	end
	
	local sign, r, g, b
	if (newMoney > playerMoney) then
		sign = "+$"
		r, g, b = 0, 255, 0
	else
		sign = "-$"
		r, g, b = 255, 0, 0
	end
	exports.XoaLuadx:add("XoaLuamoneyChange", sign..tostring(tocomma(math.abs(newMoney - playerMoney))), r, g, b)
	Timer(
		function () 
			exports.XoaLuadx:del("XoaLuamoneyChange") 
		end, disappearTime, 1
	)
end
addEvent("XoaLuadx.moneychange", true)
addEventHandler("XoaLuadx.moneychange", root, PlayerMoneyChanged)
