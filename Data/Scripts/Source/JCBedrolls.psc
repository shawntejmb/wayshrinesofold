Scriptname JCBedrolls extends ObjectReference  

ObjectReference Property Fire  Auto  

Event OnActivate(ObjectReference akActionRef)
If Fire.IsEnabled()
	Fire.Disable(True)
Else
	Fire.Enable(True)
EndIf
EndEvent