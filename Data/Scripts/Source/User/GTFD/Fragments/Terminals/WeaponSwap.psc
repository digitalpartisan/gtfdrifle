;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname GTFD:Fragments:Terminals:WeaponSwap Extends Terminal Hidden Const

;BEGIN FRAGMENT Fragment_Terminal_01
Function Fragment_Terminal_01(ObjectReference akTerminalRef)
;BEGIN CODE
GTFD_WeaponManager.setWeapon(GTFD_Weapon_Sniper)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_02
Function Fragment_Terminal_02(ObjectReference akTerminalRef)
;BEGIN CODE
GTFD_WeaponManager.setWeapon(GTFD_Weapon_Gauss)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_03
Function Fragment_Terminal_03(ObjectReference akTerminalRef)
;BEGIN CODE
GTFD_WeaponManager.setWeapon(GTFD_Weapon_Submachine)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_05
Function Fragment_Terminal_05(ObjectReference akTerminalRef)
;BEGIN CODE
GTFD_WeaponManager.setWeapon(GTFD_Weapon_Deliverer)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_Terminal_06
Function Fragment_Terminal_06(ObjectReference akTerminalRef)
;BEGIN CODE
GTFD_WeaponManager.setWeapon(GTFD_Weapon_AlienBlaster)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GTFD:WeaponManager Property GTFD_WeaponManager Auto Const

GTFD:WeaponBuilder Property GTFD_Weapon_Sniper Auto Const

GTFD:WeaponBuilder Property GTFD_Weapon_Gauss Auto Const

GTFD:WeaponBuilder Property GTFD_Weapon_Submachine Auto Const

GTFD:WeaponBuilder Property GTFD_Weapon_Deliverer Auto Const

GTFD:WeaponBuilder Property GTFD_Weapon_AlienBlaster Auto Const
