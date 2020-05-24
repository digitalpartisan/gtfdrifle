;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname GTFD:Fragments:Terminals:Main Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_02
Function Fragment_Terminal_02(ObjectReference akTerminalRef)
;BEGIN CODE
GTFD_EngineDetails.refreshStatus()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Chronicle:Engine:Handler Property GTFD_EngineDetails Auto Const Mandatory
