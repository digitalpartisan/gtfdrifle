Scriptname GTFD:CoreCustomizations extends Chronicle:Package:CustomBehavior

Vault111ExitDetector Property GTFD_Vault111ExitDetector Auto Const Mandatory
GTFD:MasterQuest Property GTFD_MasterQuest Auto Const Mandatory
GTFD:WeaponManager Property GTFD_WeaponManager Auto Const Mandatory

Bool Function installBehavior()
{Retrofitting from old non-Chronicle version.}
	if (GTFD_MasterQuest.IsStarting() || GTFD_MasterQuest.IsRunning())
		; case one: existing install, player left Vault 111.  Stop old master quest and give the holotape again (since master quest stopping took it)
		GTFD_MasterQuest.Stop()
		Utility.Wait(1) ; filthy hack to make sure the stopping holotape retainer and starting retainer don't collide and refuse to give the holotape again
		GTFD_WeaponManager.Start()
	elseif (!GTFD_Vault111ExitDetector.IsStarting() && !GTFD_Vault111ExitDetector.IsRunning())
		; cases three: old "master quest" not running and neither is the Vault 111 exit detector, so this is a clean install.  Start the exit detector.
		GTFD_Vault111ExitDetector.Start()
	endif
	
	; case two is an existing installation where the player hasn't left the vault, so the exit detector is running.  Since it's been refitted to point away
	; from the old master quest, it can stay running.  No action to take, so no case in the logic branches.

	return true
EndFunction

Bool Function uninstallBehavior()
	GTFD_Vault111ExitDetector.Stop()
	GTFD_WeaponManager.Stop()
	
	return true
EndFunction
