///scr_weaponArray(character)

character = argument0;

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

if (character != SEBASTIAN)
	{
		weaponArray[0, 1] = spr_side_shoot_pistol; //Sprite Index
		weaponArray[0, 2] = spr_down_shoot_pistol; //Sprite Index
		weaponArray[0, 18] = spr_reload_pistol;
	}
else
	{
		weaponArray[0, 1] = spr_left_shoot_pistol_new; //Sprite Index
		weaponArray[0, 2] = spr_down_shoot_pistol_new; //Sprite Index
		weaponArray[0, 18] = spr_sebastian_reload_pistol;
	}
weaponArray[0, 3] = 10; //Rate of Fire
weaponArray[0, 4] = scr_pistol;
weaponArray[0, 5] = 6; //Muzzle Offset //(for bullet creation)
weaponArray[0, 6] = 0; //x Offset //(for gun placement)
weaponArray[0, 7] = 12; //y Offset //(for gun placement)
weaponArray[0, 8] = 12;  //ClipAmmo I'm about to duplicate this shit
weaponArray[0, 9] = 12;  //Reload
weaponArray[0, 10] = 24  //MaxAmmo
weaponArray[0, 11] = 12; //ClipAmmo MAX
weaponArray[0, 12] = 24  //MaxAmmo MAX
weaponArray[0, 13] = -15;	//LenX
weaponArray[0, 14] = 0;	//LenY
weaponArray[0, 15] = noone; // the item
weaponArray[0, 16] = noone; // the script for the item
weaponArray[0, 17] = 0;	//spr_guns gun_index
weaponArray[0, 18] = spr_reload_pistol;
weaponArray[0, 19] = spr_hud_pistol_reloadNEW;

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
        weaponArray[1, 7] = 12; //y Offset //(for gun placement)
        weaponArray[1, 8] = 24;  //ClipAmmo
        weaponArray[1, 9] = 24;  //Reload
        weaponArray[1, 10] = 72;  //MaxAmmo
        weaponArray[1, 11] = 24;  //ClipAmmo TAKE
        weaponArray[1, 12] = 72;  //MaxAmmo TAKE
		weaponArray[1, 13] = -18;	//LenX
		weaponArray[1, 14] = 0;	//LenY       
		weaponArray[1, 15] = 3;  //Grenade Ammo
        weaponArray[1, 16] = 3;  //Grenade Max
		weaponArray[1, 17] = 1;
		weaponArray[1, 18] = spr_reload_assault;
		weaponArray[1, 19] = spr_hud_assault_reloadNEW;
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
        weaponArray[1, 7] = 12; //y Offset //(for gun placement)
        weaponArray[1, 8] = 24;  //ClipAmmo
        weaponArray[1, 9] = 24;  //Reload
        weaponArray[1, 10] = 48;  //MaxAmmo
        weaponArray[1, 11] = 24;  //ClipAmmo TAKE
        weaponArray[1, 12] = 48;  //MaxAmmo TAKE
        weaponArray[1, 15] = 5;  //Grenade Ammo
        weaponArray[1, 16] = 5;  //Grenade Max
		weaponArray[1, 13] = -6;	//LenX
		weaponArray[1, 14] = 0;	//LenY
		weaponArray[1, 17] = 4;
		weaponArray[1, 18] = spr_reload_pistol2;
		weaponArray[1, 19] = spr_hud_pistol2_reloadNEW;
        //obj_tempPlayer1.weaponArray[0, 8] = 1; //Damage output
        break;

    case MIO:
        //////MIO
        
        //SMG
        weaponArray[1, 0] = "Sub Machine Gun"; //Name
        weaponArray[1, 1] = spr_side_shoot_smg; //Sprite Index
        weaponArray[1, 2] = spr_down_shoot_smg; //Sprite Index
        weaponArray[1, 3] = 1; //Rate of Fire
        weaponArray[1, 4] = scr_smg; //Ammo Index
        weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        weaponArray[1, 7] = 12; //y Offset //(for gun placement)
        weaponArray[1, 8] = 32;  //ClipAmmo
        weaponArray[1, 9] = 32;  //Reload
        weaponArray[1, 10] = 96;  //MaxAmmo
        weaponArray[1, 11] = 32;  //ClipAmmo TAKE
        weaponArray[1, 12] = 96;  //MaxAmmo TAKE
        weaponArray[1, 15] = 0;  //Grenade Ammo
        weaponArray[1, 16] = 0;  //Grenade Max
		weaponArray[1, 13] = -18;	//LenX
		weaponArray[1, 14] = 0;	//LenY
		weaponArray[1, 17] = 3;
		weaponArray[1, 18] = spr_reload_smg;
		weaponArray[1, 19] = spr_hud_smg_reloadNEW;
        //obj_tempPlayer1.weaponArray[0, 8] = 2; //Damage output
        break;
        
    case ANNA:
        //////ANNA
        //account for height difference
		weaponArray[0, 7] = 8; //y Offset //(for gun placement)
		
        //Sniper
        weaponArray[1, 0] = "Sniper Rifle"; //Name
        weaponArray[1, 1] = spr_side_shoot_sniper; //Sprite Index
        weaponArray[1, 2] = spr_down_shoot_sniper; //Sprite Index
        weaponArray[1, 3] = 30; //Rate of Fire
        weaponArray[1, 4] = scr_sniperHitScan; //Ammo Index
        weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        weaponArray[1, 7] = 8; //y Offset //(for gun placement)
        weaponArray[1, 8] = 4;  //ClipAmmo
        weaponArray[1, 9] = 4;  //Reload
        weaponArray[1, 10] = 16;  //MaxAmmo
        weaponArray[1, 11] = 4;  //ClipAmmo TAKE
        weaponArray[1, 12] = 16;  //MaxAmmo TAKE
		weaponArray[1, 13] = -20;	//LenX
        weaponArray[1, 14] = 0;	//LenY//obj_tempPlayer1.weaponArray[0, 8] = 5; //Damage output
        weaponArray[1, 15] = 0;  //Grenade Ammo
        weaponArray[1, 16] = 0;  //Grenade Max    
		weaponArray[1, 17] = 5;
		weaponArray[1, 18] = spr_reload_sniper;
		weaponArray[1, 19] = spr_hud_sniper_reloadNEW;
        break;
    
    case SEBASTIAN:
        //////SEBASTIAN
        
        //Shotgun
        weaponArray[1, 0] = "Shotgun"; //Name
        weaponArray[1, 1] = spr_side_shoot_shotgun_new; //Sprite Index
        weaponArray[1, 2] = spr_down_shoot_shotgun_new; //Sprite Index
        weaponArray[1, 3] = 20; //Rate of Fire
        weaponArray[1, 4] = scr_shotgun; //Ammo Index
        weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
        weaponArray[1, 6] = 0; //x Offset //(for gun placement)
        weaponArray[1, 7] = 10; //y Offset //(for gun placement)
        weaponArray[1, 8] = 12;  //ClipAmmo
        weaponArray[1, 9] = 1;  //Reload
        weaponArray[1, 10] = 24;  //MaxAmmo
        weaponArray[1, 11] = 12;  //ClipAmmo TAKE
        weaponArray[1, 12] = 24;  //MaxAmmo TAKE
        weaponArray[1, 15] = 2;  //Grenade Ammo
        weaponArray[1, 16] = 2;  //Grenade Max
		weaponArray[1, 13] = -34;	//LenX
		weaponArray[1, 14] = 0;	//LenY
		weaponArray[1, 17] = 2;
		weaponArray[1, 18] = spr_sebastian_reload_shotgun;
		weaponArray[1, 19] = 2; //left Arm xTargets
		weaponArray[1, 20] = -5; //left Arm yTargets
		weaponArray[1, 21] = 50; //rightArm xTargets
		weaponArray[1, 22] = 50; //rightArm yTargets
		weaponArray[0, 13] = -38;
		weaponArray[0, 1] = spr_left_shoot_pistol_new; //Sprite Index
		weaponArray[0, 2] = spr_down_shoot_pistol_new; //Sprite Index
		weaponArray[0, 18] = spr_sebastian_reload_pistol;
		weaponArray[1, 19] = spr_hud_shotgun_reloadNEW;
        //obj_tempPlayer1.weaponArray[0, 8] = 3; //Damage output
        break;
		
	case ORC:
		//Generic Gun
		weaponArray[1, 0] = "Gun"; //Name
		weaponArray[1, 1] = spr_orc_shootside; //Sprite Index
		weaponArray[1, 2] = spr_orc_shootdown; //Sprite Index
		weaponArray[1, 3] = 10; //Rate of Fire
		weaponArray[1, 4] = scr_pistol;
		weaponArray[1, 5] = 6; //Muzzle Offset //(for bullet creation)
		weaponArray[1, 6] = 0; //x Offset //(for gun placement)
		weaponArray[1, 7] = 0; //y Offset //(for gun placement)
		weaponArray[1, 13] = -15;	//LenX
		weaponArray[1, 14] = 0;	//LenY
		break;
        
    default:
    break;
    }
