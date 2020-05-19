#include <sourcemod>
#include <sdktools>
#include <sdkhooks>

public Plugin myinfo = {
  name = "CSGO Simple Infinite Decoys",
  author = "FateCS",
  description = "Gives infinite decoys",
  version = "1.0",
  url = "http://steamcommunity.com/id/diddley4209"
};

public void OnEntityCreated(int entity, const char[] classname)
{
    if(StrEqual(classname, "decoy_projectile"))
        RequestFrame(RefillOwner, EntIndexToEntRef(entity));
}

void RefillOwner(int entref)
{
    int entity = EntRefToEntIndex(entref);
    if(entity == INVALID_ENT_REFERENCE)
        return;

    int client = GetEntPropEnt(entity, Prop_Data, "m_hOwnerEntity");
    if(!IsValidClient(client))
        return;

    GivePlayerItem(client, "weapon_decoy");
}

stock bool IsValidClient(int client)
{
    return 0 < client <= MaxClients && IsClientInGame(client);
}
 
