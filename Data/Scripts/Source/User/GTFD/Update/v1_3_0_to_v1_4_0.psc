Scriptname GTFD:Update:v1_3_0_to_v1_4_0 extends chronicle:package:update

Ammo Property GTFD_Ammo Auto Const Mandatory
Ammo Property GTFD_Ammo_Alien Auto Const Mandatory
Ammo Property GTFD_Ammo_Deliverer Auto Const Mandatory
Ammo Property GTFD_Gauss_Ammo Auto Const Mandatory
Ammo Property GTFD_SubmachineGun_Ammo Auto Const Mandatory

GTFD:WeaponManager Property GTFD_WeaponManager Auto Const Mandatory
Weapon Property GTFD_AlienBlaster Auto Const Mandatory

Function updateLogic()
	Actor player = Game.GetPlayer()
	
	player.RemoveItem(GTFD_Ammo, -1, true)
	player.RemoveItem(GTFD_Ammo_Alien, -1, true)
	player.RemoveItem(GTFD_Ammo_Deliverer, -1, true)
	player.RemoveItem(GTFD_Gauss_Ammo, -1, true)
	player.RemoveItem(GTFD_SubmachineGun_Ammo, -1, true)
	
	sendSuccess()
	
	if (GTFD_WeaponManager.getReference().getBaseObject() == GTFD_AlienBlaster)
		GTFD_WeaponManager.useSniper()
	endif
EndFunction
