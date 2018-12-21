/// @description Insert description here
// You can write your code in this editor

script_execute(states_array[state]);

myGunX = x + weaponArray[weapon, 6] - lengthdir_x(recoil, myGunAngle);
myGunY = y + weaponArray[weapon, 7] - lengthdir_y(recoil, myGunAngle);
myHeadXScale = image_xscale;
myHeadYScale = image_yscale;
if (image_xscale > 0)
	{
		myHeadXScale = 1;
		myHeadYScale = -1;
	}
else
	{
		myHeadXScale = 1;
		myHeadYScale = 1;
	}
scr_gunControl();
