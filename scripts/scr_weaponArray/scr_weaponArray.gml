///scr_weaponArray(character)

argument0 = character;

/*
[i, 0] = Name
[i, 1] = Sprite Index
[i, 2] = Sprite Index
[i, 3] = Rate of Fire
[i, 4] = Gun Specific Script
[i, 5] = Muzzle Offset (for bullet creation)
[i, 6] = x Offset (for gun placement)
[i, 7] = y Offset (for gun placement)
[i, 8] = ClipAmmo
[i, 9] = Reload
[i, 10] = MaxAmmo
[i, 12] = MaxTake
[i, 11] = ClipTake
*/

//Set up the empty array
for (i = 0; i < obj_tempPlayer.weapons; i++)
    {
        for (j = 0; j < 7; j++)
            {
                obj_tempPlayer.weaponArray[i, j] = 0;
            }
    }

//Pistol
obj_tempPlayer.weaponArray[0, 0] = "Pistol"; //Name
obj_tempPlayer.weaponArray[0, 1] = spr_side_shoot_pistol; //Sprite Index
obj_tempPlayer.weaponArray[0, 2] = spr_down_shoot_pistol; //Sprite Index
obj_tempPlayer.weaponArray[0, 3] = 10; //Rate of Fire
obj_tempPlayer.weaponArray[0, 4] = scr_pistol;
obj_tempPlayer.weaponArray[0, 5] = 6; //Muzzle Offset //(for bullet creation)
obj_tempPlayer.weaponArray[0, 6] = 50; //x Offset //(for gun placement)
obj_tempPlayer.weaponArray[0, 7] = -15; //y Offset //(for gun placement)
obj_tempPlayer.weaponArray[0, 8] = 12;  //ClipAmmo I'm about to duplicate this shit
obj_tempPlayer.weaponArray[0, 9] = 12;  //Reload
obj_tempPlayer.weaponArray[0, 10] = 24  //MaxAmmo
obj_tempPlayer.weaponArray[0, 11] = 12; //ClipAmmo TAKE
obj_tempPlayer.weaponArray[0, 12] = 24  //MaxAmmo TAKE
//obj_tempPlayer.weaponArray[0, 13] = scr_grenade();
obj_tempPlayer.weaponArray[0, 14] = noone; // the item
obj_tempPlayer.weaponArray[0, 15] = noone; // the script for the item


//obj_tempPlayer.weaponArray[0, 8] = 1; //Damage output
/*Temporary
obj_tempPlayer.weaponArray[0, 4] = obj_tempBullet;
*/

switch(character){
    case BRITNEY:
        ///////BRITNEY
        
        //Assault
        obj_tempPlayer.weaponArray[1, 0] = "Assault Rifle"; //Name
        obj_tempPlayer.weaponArray[1, 1] = spr_side_shoot_assault; //Sprite Index
        obj_tempPlayer.weaponArray[1, 2] = spr_down_shoot_assault; //Sprite Index
        obj_tempPlayer.weaponArray[1, 3] = 5; //Rate of Fire
        obj_tempPlayer.weaponArray[1, 4] = scr_assault; //Ammo Index
        obj_tempPlayer.weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        obj_tempPlayer.weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        obj_tempPlayer.weaponArray[1, 7] = -15; //y Offset //(for gun placement)
        obj_tempPlayer.weaponArray[1, 8] = 24;  //ClipAmmo
        obj_tempPlayer.weaponArray[1, 9] = 24;  //Reload
        obj_tempPlayer.weaponArray[1, 10] = 72;  //MaxAmmo
        obj_tempPlayer.weaponArray[1, 11] = 24;  //ClipAmmo TAKE
        obj_tempPlayer.weaponArray[1, 12] = 72;  //MaxAmmo TAKE
        obj_tempPlayer.weaponArray[1, 13] = 3;  //Grenade Ammo
        obj_tempPlayer.weaponArray[1, 14] = 3;  //Grenade Max        
        //obj_tempPlayer.weaponArray[0, 8] = 2; //Damage output
        break;
        
    case JO:
        //////JO
        
        //DualPistol
        obj_tempPlayer.weaponArray[1, 0] = "Dual Pistols"; //Name
        obj_tempPlayer.weaponArray[1, 1] = spr_side_shoot_dual; //Sprite Index
        obj_tempPlayer.weaponArray[1, 2] = spr_down_shoot_dual; //Sprite Index
        obj_tempPlayer.weaponArray[1, 3] = 5; //Rate of Fire
        obj_tempPlayer.weaponArray[1, 4] = scr_pistol; //Ammo Index
        obj_tempPlayer.weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        obj_tempPlayer.weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        obj_tempPlayer.weaponArray[1, 7] = -15; //y Offset //(for gun placement)
        obj_tempPlayer.weaponArray[1, 8] = 24;  //ClipAmmo
        obj_tempPlayer.weaponArray[1, 9] = 24;  //Reload
        obj_tempPlayer.weaponArray[1, 10] = 48;  //MaxAmmo
        obj_tempPlayer.weaponArray[1, 11] = 24;  //ClipAmmo TAKE
        obj_tempPlayer.weaponArray[1, 12] = 48;  //MaxAmmo TAKE
        obj_tempPlayer.weaponArray[1, 13] = 5;  //Grenade Ammo
        obj_tempPlayer.weaponArray[1, 14] = 5;  //Grenade Max    
        //obj_tempPlayer.weaponArray[0, 8] = 1; //Damage output
        break;

    case MIO:
        //////MIO
        
        //SMG
        obj_tempPlayer.weaponArray[1, 0] = "Sub Machine Gun"; //Name
        obj_tempPlayer.weaponArray[1, 1] = spr_side_shoot_smg; //Sprite Index
        obj_tempPlayer.weaponArray[1, 2] = spr_down_shoot_smg; //Sprite Index
        obj_tempPlayer.weaponArray[1, 3] = 1; //Rate of Fire
        obj_tempPlayer.weaponArray[1, 4] = scr_smg; //Ammo Index
        obj_tempPlayer.weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        obj_tempPlayer.weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        obj_tempPlayer.weaponArray[1, 7] = -15; //y Offset //(for gun placement)
        obj_tempPlayer.weaponArray[1, 8] = 32;  //ClipAmmo
        obj_tempPlayer.weaponArray[1, 9] = 32;  //Reload
        obj_tempPlayer.weaponArray[1, 10] = 96;  //MaxAmmo
        obj_tempPlayer.weaponArray[1, 11] = 32;  //ClipAmmo TAKE
        obj_tempPlayer.weaponArray[1, 12] = 96;  //MaxAmmo TAKE
        obj_tempPlayer.weaponArray[1, 13] = 0;  //Grenade Ammo
        obj_tempPlayer.weaponArray[1, 14] = 0;  //Grenade Max    
        //obj_tempPlayer.weaponArray[0, 8] = 2; //Damage output
        break;
        
    case ANNA:
        //////ANNA
        
        //Sniper
        obj_tempPlayer.weaponArray[1, 0] = "Sniper Rifle"; //Name
        obj_tempPlayer.weaponArray[1, 1] = spr_side_shoot_sniper; //Sprite Index
        obj_tempPlayer.weaponArray[1, 2] = spr_down_shoot_sniper; //Sprite Index
        obj_tempPlayer.weaponArray[1, 3] = 30; //Rate of Fire
        obj_tempPlayer.weaponArray[1, 4] = scr_sniperHitScan; //Ammo Index
        obj_tempPlayer.weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        obj_tempPlayer.weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        obj_tempPlayer.weaponArray[1, 7] = -15; //y Offset //(for gun placement)
        obj_tempPlayer.weaponArray[1, 8] = 4;  //ClipAmmo
        obj_tempPlayer.weaponArray[1, 9] = 4;  //Reload
        obj_tempPlayer.weaponArray[1, 10] = 16;  //MaxAmmo
        obj_tempPlayer.weaponArray[1, 11] = 4;  //ClipAmmo TAKE
        obj_tempPlayer.weaponArray[1, 12] = 16;  //MaxAmmo TAKE
        obj_tempPlayer.weaponArray[1, 13] = 0;  //Grenade Ammo
        obj_tempPlayer.weaponArray[1, 14] = 0;  //Grenade Max    
        //obj_tempPlayer.weaponArray[0, 8] = 5; //Damage output
        break;
    
    case SEBASTIAN:
        //////SEBASTIAN
        
        //Shotgun
        obj_tempPlayer.weaponArray[1, 0] = "Shotgun"; //Name
        obj_tempPlayer.weaponArray[1, 1] = spr_side_shoot_shotgun; //Sprite Index
        obj_tempPlayer.weaponArray[1, 2] = spr_down_shoot_shotgun; //Sprite Index
        obj_tempPlayer.weaponArray[1, 3] = 20; //Rate of Fire
        obj_tempPlayer.weaponArray[1, 4] = scr_shotgun; //Ammo Index
        obj_tempPlayer.weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        obj_tempPlayer.weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        obj_tempPlayer.weaponArray[1, 7] = -15; //y Offset //(for gun placement)
        obj_tempPlayer.weaponArray[1, 8] = 12;  //ClipAmmo
        obj_tempPlayer.weaponArray[1, 9] = 1;  //Reload
        obj_tempPlayer.weaponArray[1, 10] = 24;  //MaxAmmo
        obj_tempPlayer.weaponArray[1, 11] = 12;  //ClipAmmo TAKE
        obj_tempPlayer.weaponArray[1, 12] = 24;  //MaxAmmo TAKE
        obj_tempPlayer.weaponArray[1, 13] = 2;  //Grenade Ammo
        obj_tempPlayer.weaponArray[1, 14] = 2;  //Grenade Max    
        //obj_tempPlayer.weaponArray[0, 8] = 3; //Damage output
        break;
        
    default:
    break;
    }
