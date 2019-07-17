local sX, sY = guiGetScreenSize()

local Shout = {
	enabled = true,
	scale = 2.5,
	life = 2500,
	extralife = 150,
	color = {255, 140, 0},
	uppercase = false,
	font = "default-bold",
	entries = {}
}

addEventHandler("onClientRender", root,
	function ()
		for i, v in ipairs(Shout.entries) do
			if (i ~= 1) then Shout.entries[i][2] = getTickCount() return end -- draw one only, others delayed
			local scale = Shout.scale
			local tX, tY = (sX - dxGetTextWidth(v[1], scale, Shout.font)) / 2, sY - dxGetFontHeight(scale, Shout.font)
			while (tX <= 0) do
				scale = scale - 0.01
				tX, tY = (sX - dxGetTextWidth(v[1], scale, Shout.font)) / 2, sY - dxGetFontHeight(scale, Shout.font)
			end
			local alpha = (((Shout.life + (#v[1] * Shout.extralife)) - (getTickCount() - v[2])) / (Shout.life + (#v[1] * Shout.extralife))) * 255
			-- idk how did i do all of this math but it works :D
			dxDrawText(v[1], tX + 1, tY + 1, _, _, tocolor(0, 0, 0, alpha), scale, Shout.font, _, _, _, _, true)
			dxDrawText(v[1], tX + 1, tY + 1, _, _, tocolor(0, 0, 0, alpha), scale, Shout.font, _, _, _, _, true)
			dxDrawText(v[1], tX - 1, tY - 1, _, _, tocolor(0, 0, 0, alpha), scale, Shout.font, _, _, _, _, true)
			dxDrawText(v[1], tX - 1, tY - 1, _, _, tocolor(0, 0, 0, alpha), scale, Shout.font, _, _, _, _, true)
			dxDrawText(v[1], tX, tY, _, _, tocolor(v[3], v[4], v[5], alpha), scale, Shout.font, _, _, _, _, true)
			if ((getTickCount() - v[2]) > (Shout.life + (#v[1] * Shout.extralife))) then
				table.remove(Shout.entries, i)
			end
		end
	end
)

function shout(text, r, g, b)
	if (not text or not tostring(text)) then return false, "text missing" end
	if (not Shout.enabled) then new(text, 255, 0, 0) return false, "dx instead" end
	if (Shout.uppercase) then text = text:upper() end
	table.insert(Shout.entries, {text, getTickCount(), r, g, b})
end
addEvent("XoaLuadx.shout", true)
addEventHandler("XoaLuadx.shout", resourceRoot, shout)