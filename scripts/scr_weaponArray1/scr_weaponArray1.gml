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
for (i = 0; i < weapons; i++)
    {
        for (j = 0; j < 7; j++)
            {
                weaponArray[i, j] = 0;
            }
    }

//Pistol
weaponArray[0, 0] = "Pistol"; //Name
weaponArray[0, 1] = spr_side_shoot_pistol; //Sprite Index
weaponArray[0, 2] = spr_down_shoot_pistol; //Sprite Index
weaponArray[0, 3] = 10; //Rate of Fire
weaponArray[0, 4] = scr_pistol;
weaponArray[0, 5] = 6; //Muzzle Offset //(for bullet creation)
weaponArray[0, 6] = 50; //x Offset //(for gun placement)
weaponArray[0, 7] = -15; //y Offset //(for gun placement)
weaponArray[0, 8] = 12;  //ClipAmmo I'm about to duplicate this shit
weaponArray[0, 9] = 12;  //Reload
weaponArray[0, 10] = 24  //MaxAmmo
weaponArray[0, 11] = 12; //ClipAmmo TAKE
weaponArray[0, 12] = 24  //MaxAmmo TAKE
//obj_tempPlayer1.weaponArray[0, 13] = scr_grenade();
weaponArray[0, 15] = noone; // the item
weaponArray[0, 16] = noone; // the script for the item
weaponArray[0, 13] = -6;	//LenX
weaponArray[0, 14] = 0;	//LenY


//obj_tempPlayer1.weaponArray[0, 8] = 1; //Damage output
/*Temporary
obj_tempPlayer1.weaponArray[0, 4] = obj_tempBullet;
*/

switch(character){
    case BRITNEY:
        ///////BRITNEY
        
        //Assault
        weaponArray[1, 0] = "Assault Rifle"; //Name
        weaponArray[1, 1] = spr_side_shoot_assault; //Sprite Index
        weaponArray[1, 2] = spr_down_shoot_assault; //Sprite Index
        weaponArray[1, 3] = 5; //Rate of Fire
        weaponArray[1, 4] = scr_assault; //Ammo Index
        weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        weaponArray[1, 7] = -15; //y Offset //(for gun placement)
        weaponArray[1, 8] = 24;  //ClipAmmo
        weaponArray[1, 9] = 24;  //Reload
        weaponArray[1, 10] = 72;  //MaxAmmo
        weaponArray[1, 11] = 24;  //ClipAmmo TAKE
        weaponArray[1, 12] = 72;  //MaxAmmo TAKE
        weaponArray[1, 15] = 3;  //Grenade Ammo
        weaponArray[1, 16] = 3;  //Grenade Max 
		weaponArray[1, 13] = -18;	//LenX
		weaponArray[1, 14] = 0;	//LenY       
        //obj_tempPlayer1.weaponArray[0, 8] = 2; //Damage output
        break;
        
    case JO:
        //////JO
        
        //DualPistol
        weaponArray[1, 0] = "Dual Pistols"; //Name
        weaponArray[1, 1] = spr_side_shoot_dual; //Sprite Index
        weaponArray[1, 2] = spr_down_shoot_dual; //Sprite Index
        weaponArray[1, 3] = 5; //Rate of Fire
        weaponArray[1, 4] = scr_pistol; //Ammo Index
        weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        weaponArray[1, 7] = -15; //y Offset //(for gun placement)
        weaponArray[1, 8] = 24;  //ClipAmmo
        weaponArray[1, 9] = 24;  //Reload
        weaponArray[1, 10] = 48;  //MaxAmmo
        weaponArray[1, 11] = 24;  //ClipAmmo TAKE
        weaponArray[1, 12] = 48;  //MaxAmmo TAKE
        weaponArray[1, 15] = 5;  //Grenade Ammo
        weaponArray[1, 16] = 5;  //Grenade Max
		weaponArray[1, 13] = -6;	//LenX
		weaponArray[1, 14] = 0;	//LenY    
        //obj_tempPlayer1.weaponArray[0, 8] = 1; //Damage output
        break;

    case MIO:
        //////MIO
        
        //SMG
        obj_tempPlayer1.weaponArray[1, 0] = "Sub Machine Gun"; //Name
        obj_tempPlayer1.weaponArray[1, 1] = spr_side_shoot_smg; //Sprite Index
        obj_tempPlayer1.weaponArray[1, 2] = spr_down_shoot_smg; //Sprite Index
        obj_tempPlayer1.weaponArray[1, 3] = 1; //Rate of Fire
        obj_tempPlayer1.weaponArray[1, 4] = scr_smg; //Ammo Index
        obj_tempPlayer1.weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        obj_tempPlayer1.weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        obj_tempPlayer1.weaponArray[1, 7] = -15; //y Offset //(for gun placement)
        obj_tempPlayer1.weaponArray[1, 8] = 32;  //ClipAmmo
        obj_tempPlayer1.weaponArray[1, 9] = 32;  //Reload
        obj_tempPlayer1.weaponArray[1, 10] = 96;  //MaxAmmo
        obj_tempPlayer1.weaponArray[1, 11] = 32;  //ClipAmmo TAKE
        obj_tempPlayer1.weaponArray[1, 12] = 96;  //MaxAmmo TAKE
        obj_tempPlayer1.weaponArray[1, 15] = 0;  //Grenade Ammo
        obj_tempPlayer1.weaponArray[1, 16] = 0;  //Grenade Max
		obj_tempPlayer1.weaponArray[1, 13] = -18;	//LenX
		obj_tempPlayer1.weaponArray[1, 14] = 0;	//LenY
        //obj_tempPlayer1.weaponArray[0, 8] = 2; //Damage output
        break;
        
    case ANNA:
        //////ANNA
        
        //Sniper
        weaponArray[1, 0] = "Sniper Rifle"; //Name
        weaponArray[1, 1] = spr_side_shoot_sniper; //Sprite Index
        weaponArray[1, 2] = spr_down_shoot_sniper; //Sprite Index
        weaponArray[1, 3] = 30; //Rate of Fire
        weaponArray[1, 4] = scr_sniperHitScan; //Ammo Index
        weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        weaponArray[1, 7] = -15; //y Offset //(for gun placement)
        weaponArray[1, 8] = 4;  //ClipAmmo
        weaponArray[1, 9] = 4;  //Reload
        weaponArray[1, 10] = 16;  //MaxAmmo
        weaponArray[1, 11] = 4;  //ClipAmmo TAKE
        weaponArray[1, 12] = 16;  //MaxAmmo TAKE
        weaponArray[1, 15] = 0;  //Grenade Ammo
        weaponArray[1, 16] = 0;  //Grenade Max    
		weaponArray[1, 13] = -20;	//LenX
        weaponArray[1, 14] = 0;	//LenY//obj_tempPlayer1.weaponArray[0, 8] = 5; //Damage output
        break;
    
    case SEBASTIAN:
        //////SEBASTIAN
        
        //Shotgun
        weaponArray[1, 0] = "Shotgun"; //Name
        weaponArray[1, 1] = spr_side_shoot_shotgun; //Sprite Index
        weaponArray[1, 2] = spr_down_shoot_shotgun; //Sprite Index
        weaponArray[1, 3] = 20; //Rate of Fire
        weaponArray[1, 4] = scr_shotgun; //Ammo Index
        weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        weaponArray[1, 7] = -15; //y Offset //(for gun placement)
        weaponArray[1, 8] = 12;  //ClipAmmo
        weaponArray[1, 9] = 1;  //Reload
        weaponArray[1, 10] = 24;  //MaxAmmo
        weaponArray[1, 11] = 12;  //ClipAmmo TAKE
        weaponArray[1, 12] = 24;  //MaxAmmo TAKE
        weaponArray[1, 15] = 2;  //Grenade Ammo
        weaponArray[1, 16] = 2;  //Grenade Max
		weaponArray[1, 13] = -34;	//LenX
		weaponArray[1, 14] = 0;	//LenY
        //obj_tempPlayer1.weaponArray[0, 8] = 3; //Damage output
        break;
        
    default:
    break;
    }
