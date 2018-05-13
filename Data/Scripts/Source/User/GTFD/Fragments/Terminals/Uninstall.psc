;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname GTFD:Fragments:Terminals:Uninstall Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_01
Function Fragment_Terminal_01(ObjectReference akTerminalRef)
;BEGIN CODE
GTFD_WeaponManager.takeWeapon()
GTFD_EngineDetails.uninstall()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GTFD:EngineDetails Property GTFD_EngineDetails Auto Const

GTFD:WeaponManager Property GTFD_WeaponManager Auto Const
