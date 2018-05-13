Scriptname GTFD:WeaponBuilder extends Quest

Weapon Property BaseForm Auto Const Mandatory
ObjectMod[] Property Mods Auto Const

ObjectReference Function getReference()
	ObjectReference weaponRef = Game.GetPlayer().PlaceAtMe(BaseForm)
	
	if (Mods)
		Int iCounter = 0
		while (iCounter < Mods.Length)
			weaponRef.AttachMod(Mods[iCounter])
			iCounter += 1
		endwhile
	endif
	
	return weaponRef
EndFunction
