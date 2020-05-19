/*  CS:GO Multi1v1: Dodgeball round addon
 *
 *  Copyright (C) 2018 Francisco 'Franc1sco' García
 * 
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation, either version 3 of the License, or (at your option) 
 * any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT 
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS 
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with 
 * this program. If not, see http://www.gnu.org/licenses/.
 */
 
 
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

