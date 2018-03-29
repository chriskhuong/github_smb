///@description scr_gunControl()
//sets all the gun data from what was previously stored in the end step of the gun object

myGunX = x + weaponArray[weapon, 6];
myGunY = y + weaponArray[weapon, 7];

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
        //myGunIndex = 0;
    }
else if (myGunAngle < 225 && myGunAngle > 135)
    {
        myGunSprite = weaponArray[weapon, 1];
        facing = LEFT;
		myGunXScale = 1;
		myGunYScale = -1;
		gunOver = true;
        //myGunIndex = 0;
    }
else if (myGunAngle < 135 && myGunAngle > 45)
    {
        myGunSprite = weaponArray[weapon, 2];
        facing = UP;
		myGunXScale = 1;
		myGunYScale = -1;
        gunOver = false;
        //myGunIndex = 0;
    }
else
    {
        myGunSprite = weaponArray[weapon, 1];
        facing = RIGHT;
		myGunXScale = 1;
		myGunYScale = 1;
		gunOver = true;
        //myGunIndex = 0;
    }