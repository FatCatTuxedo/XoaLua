function replaceskin()
	txd = engineLoadTXD ( "s211.txd" )
	engineImportTXD ( txd, 211)
	dff = engineLoadDFF ( "s211.dff", 211)
	engineReplaceModel ( dff, 211)
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceskin)