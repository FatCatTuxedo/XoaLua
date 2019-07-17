local playerStinger = {}
function onCreateStinger(x, y, z, rx, ry, rz)
	if not ( playerStinger[source] ) then
		local stinger = createObject(2899, x, y, z+0.1, rx, ry, rz)
		playerStinger[source] = stinger
		triggerClientEvent( "onCreateStinger", getRootElement(), x, y, z)
		stingerPlant(source)
	else
		destroyElement(playerStinger[source])
		local stinger = createObject(2899, x, y, z+0.1, rx, ry, rz)
		playerStinger[source] = stinger
		triggerClientEvent( "onCreateStinger", getRootElement(), x, y, z)
		stingerPlant(source)
	end
end
addEvent( "onCreateStinger", true )
addEventHandler( "onCreateStinger", getRootElement(), onCreateStinger)

function stingerPlant(player)
	setPedAnimation(player, "BOMBER", "BOM_plant", 3000, false, false, false)
	setTimer(setPedAnimation, 2000, 1, player)
end

function onDestroyStinger(sting)
	if (sting and isElement(sting)) then
		destroyElement(sting)
	end
end
addEvent( "onDestroyStinger", true )
addEventHandler( "onDestroyStinger", getRootElement(), onDestroyStinger)