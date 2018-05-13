Scriptname GTFD:WeaponManager extends Quest

ReferenceAlias Property WeaponAlias Auto Const Mandatory
GTFD:WeaponBuilder Property DefaultWeapon Auto Const Mandatory
Int Property AddAmmoAmount = 9999 Auto Const

ObjectReference Function getReference()
	return WeaponAlias.GetReference()
EndFunction

Form Function getBaseObject()
	ObjectReference weaponRef = getReference()
	if (!weaponRef)
		return None
	endif

	return weaponRef.GetBaseObject()
EndFunction

Ammo Function getWeaponAmmo()
	Weapon wForm = getBaseObject() as Weapon
	if (!wForm)
		return None
	endif

	return wForm.GetAmmo()
EndFunction

Function takeAmmo()
	Ammo aForm = getWeaponAmmo()
	if (aForm)
		Game.GetPlayer().RemoveItem(aForm, -1, true)
	endif
EndFunction

Function addAmmo()
	Ammo aForm = getWeaponAmmo()
	if (aForm)
		takeAmmo() ; so this script doesn't infinitely add this ammo
		Game.GetPlayer().AddItem(aForm, AddAmmoAmount, true)
	endif
EndFunction

Function takeWeapon()
	ObjectReference weaponRef = getReference()
	if (weaponRef)
		takeAmmo()
		WeaponAlias.TryToClear()
		Game.GetPlayer().RemoveItem(weaponRef)
	endif
EndFunction

Function setWeapon(GTFD:WeaponBuilder newWeapon)
	Actor aPlayer = Game.GetPlayer()
	takeWeapon()

	ObjectReference newWeaponRef = newWeapon.getReference()

	WeaponAlias.ForceRefTo(newWeaponRef)
	Game.GetPlayer().AddItem(newWeaponRef)
	aPlayer.AddItem(getWeaponAmmo(), AddAmmoAmount, true)
EndFunction

Function setDefaultWeapon()
	setWeapon(DefaultWeapon)
EndFunction

Event Actor.OnItemEquipped(Actor akSender, Form akBaseObject, ObjectReference akReference)
	if (Game.GetPlayer() == akSender && getReference() == akReference)
		addAmmo()
	endif
EndEvent

Event OnQuestInit()
	setDefaultWeapon()
	RegisterForRemoteEvent(Game.GetPlayer(), "OnItemEquipped")
EndEvent

Event OnQuestShutdown()
	takeWeapon()
	UnregisterForRemoteEvent(Game.GetPlayer(), "OnItemEquipped")
EndEvent
