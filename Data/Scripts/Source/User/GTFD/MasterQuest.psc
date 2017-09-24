Scriptname GTFD:MasterQuest extends Quest

Weapon Property GTFD_Rifle Auto Const Mandatory
ObjectMod[] Property Mods Auto Const Mandatory
Ammo Property GTFD_Ammo Auto Const Mandatory
Int Property StartingAmmoAmount = 10 Auto Const
ReferenceAlias Property RifleAlias Auto Const Mandatory

Function giveRifle()
	Actor aPlayer = Game.GetPlayer()	

	ObjectReference rifleRef = aPlayer.PlaceAtMe(GTFD_Rifle)
	Int iCounter = 0
	while (iCounter < Mods.Length)
		rifleRef.AttachMod(Mods[iCounter])
		iCounter += 1
	endwhile
	
	RifleAlias.ForceRefTo(rifleRef)

	aPlayer.AddItem(rifleRef)
EndFunction

Function giveAmmo()
	Game.GetPlayer().AddItem(GTFD_Ammo, StartingAmmoAmount)
EndFunction

Function giveItems()
	giveRifle()
	giveAmmo()
EndFunction

Function removeItems()
	Actor aPlayer = Game.GetPlayer()
	aPlayer.RemoveItem(GTFD_Rifle, -1, true)
	aPlayer.RemoveItem(GTFD_Ammo, -1, true)
EndFunction

Event OnQuestInit()
	giveItems()
EndEvent

Event OnQuestShutdown()
	removeItems()
EndEvent
