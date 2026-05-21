Scriptname JCWTeleportActivate extends ObjectReference  

Message Property JCWMessage  Auto
Message Property JCWMessageMore  Auto  
Message Property JCWMessageUL  Auto  

ObjectReference Property Whiterun  Auto  
ObjectReference Property Markarth  Auto  
ObjectReference Property Morthal  Auto  
ObjectReference Property Riften  Auto  
ObjectReference Property Dawnstar  Auto  
ObjectReference Property Windhelm  Auto    
ObjectReference Property Winterhold  Auto  
ObjectReference Property Falkreath  Auto  
ObjectReference Property Solitude  Auto  
ObjectReference Property HighHrothgar  Auto  
ObjectReference Property RavenRock  Auto  
ObjectReference Property CastleVolkihar  Auto  
ObjectReference Property SkaalVillage  Auto  
ObjectReference Property DayspringCanyon  Auto  

int Button
int Button1
int Button2
int Button3
int Button4
int Button5
int Button6
int Button7

Event OnActivate(ObjectReference akActionRef)
    if akActionRef == Game.GetPlayer()
        button = JCWMessage.show()
	 if button == 0 ; Whiterun
        game.fasttravel(Whiterun)


  Elseif button == 1 ; Markarth
        game.fasttravel(Markarth)

            
        Elseif button == 2 ; Riften
       game.fasttravel(Riften)
            
        Elseif button == 3;Windhelm
        game.fasttravel(Windhelm)
        
        Elseif button == 4; Solitude
        game.fasttravel(Solitude)

        Elseif button == 5;Falkreath
        game.fasttravel(Falkreath)

	Elseif button == 6
	button6= JCWMessageMore.show()
        if button6 == 0; Morthal
        game.fasttravel(Morthal)

    Elseif button6 == 1; Dawnstar
        game.fasttravel(Dawnstar)

    Elseif button6 == 2; Winterhold
        game.fasttravel(Winterhold)

	Elseif button6 == 3
	button7= JCWMessageUL.show()
	If button7 == 0; High Hrothgar
       game.fasttravel(HighHrothgar)

    Elseif button7 == 1; Skaal Village
        game.fasttravel(SkaalVillage)

    Elseif button7 == 2; Raven Rock
        game.fasttravel(RavenRock)

    Elseif button7 == 3; Soul Cairn
        game.fasttravel(CastleVolkihar)

    Elseif button7 == 4; DaySpringCanyon
        game.fasttravel(DayspringCanyon)

        Endif
    EndIf
EndIf
EndIf
EndEvent




