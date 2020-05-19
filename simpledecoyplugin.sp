
 
#include <sourcemod>




public Plugin myinfo = {
  name = "CSGO Simple Infinite Decoys",
  author = "Diddley4209",
  description = "Gives infinite decoys",
  version = "1.0",
  url = "http://steamcommunity.com/id/diddley4209"
};



public void OnEntityCreated(int iEntity, const char[] szClassname)
{
	// Check if new entity is a decoy
	if (!StrEqual(szClassname, "decoy_projectile"))
		GivePlayerItem(iClient, "weapon_decoy");
		
	
}

