function moneyText(p, money, newMoney)
	if (not money or not newMoney or not p or not isElement(p) or (p.type ~= "player" and p ~= root)) then return end
	triggerClientEvent(p, "XoaLuadx.moneychange", resourceRoot, money, newMoney)
end