Scriptname GTFD:EngineDetails extends Quest Conditional

Chronicle:Engine Property GTFD_Engine Auto Const Mandatory

Bool bCanUninstall = false Conditional

Chronicle:Engine Function getEngine()
	return GTFD_Engine
EndFunction

Function refreshState()
	bCanUninstall = getEngine().canUninstall()
EndFunction

Function uninstall()
	getEngine().uninstall()
	refreshState()
EndFunction
