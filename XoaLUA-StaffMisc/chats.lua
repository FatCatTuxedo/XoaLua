function clear(player)
    if (getTeamName(getPlayerTeam(player)) == "Administrative Staff") then
    for i=1,30 do 
        outputChatBox(" ") 
    end 
          outputChatBox("#137504Staff Member#137504#FFFFFF"..getPlayerName(player).."#FF0000 Has Cleared The Chat.",root,255,12,15, true) 
     else 
          outputChatBox ("ClearChat: Access denied", player, 100, 0, 0) 
     end
end
addCommandHandler("cchat", clear)

function Pclear(player)
    for i=1,30 do 
        outputChatBox(" ", player) 
    end 
          outputChatBox("Chat has been cleared successfully",player,255,12,15, true) 
     end
addCommandHandler("clearmychat", Pclear)