///@description scr_gunControl()
//sets all the gun data from what was previously stored in the end step of the gun object

myGunX = x + weaponArray[weapon, 6] - lengthdir_x(recoil, myGunAngle);
myGunY = y + weaponArray[weapon, 7] - lengthdir_y(recoil, myGunAngle);

myGunLenX = -weaponArray[weapon, 13];
myGunLenY = -weaponArray[weapon, 14];
//creator.movement = MOVE;

myGunDir = point_direction(myGunX, myGunY, myTargetX, myTargetY);
myGunAngle = myGunDir;

if (myGunAngle < 315 && myGunAngle > 225)
    {
        myGunSprite = weaponArray[weapon, 2];
        facing = DOWN;
		myGunXScale = 1;
		myGunYScale = 1;
        gunOver = true;
		scr_IK(-1, 13, 10, weaponArray[weapon, 6] + (lengthdir_x((myGunLenX-recoil) - 12, myGunAngle) - lengthdir_y((myGunLenY-recoil), myGunAngle)), weaponArray[weapon, 7] + (lengthdir_y(((myGunLenX-recoil)-recoil) - 12, myGunAngle) + lengthdir_x((myGunLenY-recoil), myGunAngle)), -1);
		scr_IK(1, 13, 10, weaponArray[weapon, 6] + (lengthdir_x((myGunLenX-recoil) - 18, myGunAngle) - lengthdir_y((myGunLenY-recoil), myGunAngle)), weaponArray[weapon, 7] + (lengthdir_y(((myGunLenX-recoil)-recoil) - 18, myGunAngle) + lengthdir_x((myGunLenY-recoil), myGunAngle)), 1);
        //myGunIndex = 0;
    }
else if (myGunAngle < 225 && myGunAngle > 135)
    {
        myGunSprite = weaponArray[weapon, 1];
        facing = LEFT;
		myGunXScale = 1;
		myGunYScale = -1;
		gunOver = true;
		scr_IK(1, -10, 10, weaponArray[weapon, 6] + (lengthdir_x((myGunLenX-recoil) - 12, myGunAngle) - lengthdir_y((myGunLenY-recoil)-5, myGunAngle)), weaponArray[weapon, 7] + (lengthdir_y((myGunLenX-recoil) - 12, myGunAngle) + lengthdir_x((myGunLenY-recoil)-5, myGunAngle)), -1);
		scr_IK(1, 10, 10, weaponArray[weapon, 6] + (lengthdir_x((myGunLenX-recoil) - 18, myGunAngle) - lengthdir_y((myGunLenY-recoil)-5, myGunAngle)), weaponArray[weapon, 7] + (lengthdir_y((myGunLenX-recoil) - 18, myGunAngle) + lengthdir_x((myGunLenY-recoil)-5, myGunAngle)), 1);
        //myGunIndex = 0;
    }
else if (myGunAngle < 135 && myGunAngle > 45)
    {
        myGunSprite = weaponArray[weapon, 2];
        facing = UP;
		myGunXScale = 1;
		myGunYScale = -1;
        gunOver = false;
		scr_IK(1, -13, 10, weaponArray[weapon, 6] + (lengthdir_x((myGunLenX-recoil) - 12, myGunAngle) - lengthdir_y((myGunLenY-recoil), myGunAngle)), weaponArray[weapon, 7] + (lengthdir_y((myGunLenX-recoil) - 12, myGunAngle) + lengthdir_x((myGunLenY-recoil), myGunAngle)), -1);
		scr_IK(-1, -13, 10, weaponArray[weapon, 6] + (lengthdir_x((myGunLenX-recoil) - 18, myGunAngle) - lengthdir_y((myGunLenY-recoil), myGunAngle)), weaponArray[weapon, 7] + (lengthdir_y((myGunLenX-recoil) - 18, myGunAngle) + lengthdir_x((myGunLenY-recoil), myGunAngle)), 1);
        //myGunIndex = 0;
    }
else
    {
        myGunSprite = weaponArray[weapon, 1];
        facing = RIGHT;
		myGunXScale = 1;
		myGunYScale = 1;
		gunOver = true;
		scr_IK(-1, 10, 10, weaponArray[weapon, 6] + (lengthdir_x((myGunLenX-recoil) - 12, myGunAngle) - lengthdir_y((myGunLenY-recoil)+5, myGunAngle)), weaponArray[weapon, 7] + (lengthdir_y((myGunLenX-recoil) - 12, myGunAngle) + lengthdir_x((myGunLenY-recoil)+5, myGunAngle)), -1);
		scr_IK(-1, -10, 10, weaponArray[weapon, 6] + (lengthdir_x((myGunLenX-recoil) - 18, myGunAngle) - lengthdir_y((myGunLenY-recoil)+5, myGunAngle)), weaponArray[weapon, 7] + (lengthdir_y((myGunLenX-recoil) - 18, myGunAngle) + lengthdir_x((myGunLenY-recoil)+5, myGunAngle)), 1);
        //myGunIndex = 0;
    }