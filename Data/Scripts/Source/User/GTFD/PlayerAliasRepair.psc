Scriptname GTFD:PlayerAliasRepair extends Quest

Chronicle:Engine Property GTFD_Engine Auto Const Mandatory
ReferenceAlias Property PlayerAlias Auto Const Mandatory

Event OnInit()
	if (GTFD_Engine.IsRunning() && !PlayerAlias.GetReference())
		PlayerAlias.ForceRefTo(Game.GetPlayer())
		GTFD_Engine.gameLoaded()
	endif
	
	Stop()
EndEvent
