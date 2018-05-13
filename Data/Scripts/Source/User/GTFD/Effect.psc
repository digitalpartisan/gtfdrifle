Scriptname GTFD:Effect extends activemagiceffect

Spell Property TeleportInSpell Auto Const Mandatory

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Actor aPlayer = Game.GetPlayer()
	if (aPlayer == akCaster && !akTarget.IsHostileToActor(aPlayer))
		akTarget.AddSpell(TeleportInSpell)
		akTarget.MoveTo(aPlayer)
	endif
EndEvent
