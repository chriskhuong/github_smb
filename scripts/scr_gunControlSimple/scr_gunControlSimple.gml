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
        facing = DOWN;
        gunOver = true;
    }
else if (myGunAngle < 225 && myGunAngle > 135)
    {
        facing = LEFT;
		gunOver = true;
    }
else if (myGunAngle < 135 && myGunAngle > 45)
    {
        facing = UP;
        gunOver = false;
    }
else
    {
        facing = RIGHT;
		gunOver = true;
    }