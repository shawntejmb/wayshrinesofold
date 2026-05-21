Scriptname JCSaveJournal extends ObjectReference  
Event OnActivate (ObjectReference akActionRef)
JournalEntry.Show()
Game.RequestSave()
EndEvent
Message Property JournalEntry  Auto  