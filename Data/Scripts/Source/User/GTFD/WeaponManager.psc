Scriptname GTFD:WeaponManager extends Quest

ReferenceAlias Property WeaponAlias Auto Const Mandatory

Group WeaponOptions
	GTFD:WeaponBuilder Property GTFD_Weapon_Sniper Auto Const Mandatory
	GTFD:WeaponBuilder Property GTFD_Weapon_Gauss Auto Const Mandatory
	GTFD:WeaponBuilder Property GTFD_Weapon_Submachine Auto Const Mandatory
	GTFD:WeaponBuilder Property GTFD_Weapon_Deliverer Auto Const Mandatory
	GTFD:WeaponBuilder Property GTFD_Weapon_AlienBlaster Auto Const Mandatory
EndGroup

ObjectReference Function getReference()
	return WeaponAlias.GetReference()
EndFunction

Function takeWeapon()
	ObjectReference weaponRef = getReference()
	if (weaponRef)
		WeaponAlias.TryToClear()
		Game.GetPlayer().RemoveItem(weaponRef)
	endif
EndFunction

Function setWeapon(GTFD:WeaponBuilder newWeapon)
	if (!newWeapon)
		Debug.MessageBox("BUSTED!")
		return
	endif

	takeWeapon()
	WeaponAlias.ForceRefTo(newWeapon.getReference())
	Game.GetPlayer().AddItem(getReference())
EndFunction

Function useSniper()
	setWeapon(GTFD_Weapon_Sniper)
EndFunction

Function useGauss()
	setWeapon(GTFD_Weapon_Gauss)
EndFunction

Function useSubmachine()
	setWeapon(GTFD_Weapon_Submachine)
EndFunction

Function useDeliverer()
	setWeapon(GTFD_Weapon_Deliverer)
EndFunction

Event OnQuestInit()
	useSniper()
EndEvent

Event OnQuestShutdown()
	takeWeapon()
EndEvent
