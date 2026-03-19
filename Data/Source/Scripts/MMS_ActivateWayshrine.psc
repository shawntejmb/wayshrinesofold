Scriptname MMS_ActivateWayshrine extends ObjectReference  

FormList Property WayshrineVanLocs auto

Event OnActivate(ObjectReference akActionRef)
	Debug.Trace("Wayshrine activated by Player" + akActionRef)

	Int iIndex = WayshrineVanLocs.GetSize()
	While iIndex
		iIndex -=1
			ObjectReference MapMarkers = WayshrineVanLocs.GetAt(iIndex) As ObjectReference
				MapMarkers.Disable() ; Disable Vanilla Map Markers
	EndWhile
		UI.InvokeString("MapMenu", "_global.skse.OpenMenu", "MapMenu")
		Input.TapKey(Input.GetMappedKey("Quick Map")) ; Open Map using SKSE Functions 
EndEvent

