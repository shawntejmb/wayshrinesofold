Scriptname JCStudyTome extends ObjectReference  

Message Property JournalEntry  Auto  

Event OnActivate (ObjectReference akActionRef)
JournalEntry.Show()
Game.RequestSave()
EndEvent