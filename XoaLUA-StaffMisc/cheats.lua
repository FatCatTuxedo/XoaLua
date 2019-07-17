function waterCheat()
    if (getTeamName(getPlayerTeam(localPlayer)) == "Administrative Staff") then
        setWorldSpecialPropertyEnabled("hovercars", not isWorldSpecialPropertyEnabled("hovercars"))
        outputChatBox("driving in water vehicle cheat is " .. (isWorldSpecialPropertyEnabled("hovercars") and "on" or "off") .. ".", 255, 180, 10, false)
    end
end
addCommandHandler("watercars", waterCheat)

function flyCheat()
    if (getTeamName(getPlayerTeam(localPlayer)) == "Administrative Staff") then
        setWorldSpecialPropertyEnabled("aircars", not isWorldSpecialPropertyEnabled("aircars"))
        outputChatBox("flying vehicle cheat is " .. (isWorldSpecialPropertyEnabled("aircars") and "on" or "off") .. ".", 255, 180, 10, false)
    end
end
addCommandHandler("aircars", flyCheat)