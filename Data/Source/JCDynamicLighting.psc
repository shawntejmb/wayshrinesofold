Scriptname JCDynamicLighting extends ObjectReference  

float Property LightsOffTime = 8.0 auto
{The time at which lights should be turned off}
float Property LightsOnTime = 18.0 auto
{The time at which lights should be turned on}
 
float Function GetCurrentHourOfDay() global
{Returns the current time of day in hours since midnight}
 
	float Time = Utility.GetCurrentGameTime()
	Time -= Math.Floor(Time) ; Remove "previous in-game days passed" bit
	Time *= 24 ; Convert from fraction of a day to number of hours
	Return Time
 
EndFunction
 
Function RegisterForSingleUpdateGameTimeAt(float GameTime)
{Registers for a single UpdateGameTime event at the next occurrence
of the specified GameTime (in hours since midnight)}
 
	float CurrentTime = GetCurrentHourOfDay()
	If (GameTime < CurrentTime)
		GameTime += 24
	EndIf
 
	RegisterForSingleUpdateGameTime(GameTime - CurrentTime)
 
EndFunction
 
Event OnInit()
 
	If (ShouldLightsBeOff())
		GoToState("LightsOff")
	Else
		GoToState("LightsOn")
	EndIf
 
EndEvent
 
State LightsOff
 
	Event OnBeginState()
		Disable()
		Daylight.Enable()
		RegisterForSingleUpdateGameTimeAt(LightsOnTime)
	EndEvent
 
	Event OnUpdateGameTime()
		If (ShouldLightsBeOff())
			RegisterForSingleUpdateGameTimeAt(LightsOnTime)
		Else
			GoToState("LightsOn")
		EndIf
	EndEvent
 
EndState
 
State LightsOn
 
	Event OnBeginState()
		Enable()
		Daylight.Disable()
		RegisterForSingleUpdateGameTimeAt(LightsOffTime)
	EndEvent
 
	Event OnUpdateGameTime()
		If (ShouldLightsBeOff())
			GoToState("LightsOff")
		Else
			RegisterForSingleUpdateGameTimeAt(LightsOffTime)
		EndIf
	EndEvent
 
EndState
 
bool Function ShouldLightsBeOff()
{Validate the light state based on current time of day}
 
		float CurrentTime = GetCurrentHourOfDay()
		If (CurrentTime >= LightsOffTime) && (CurrentTime < LightsOnTime)
			return true
		Else
			return false
		EndIf
 
EndFunction
ObjectReference Property Daylight  Auto  