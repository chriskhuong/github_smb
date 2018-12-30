/// @description Insert description here
// You can write your code in this editor

script_execute(states_array[state]);

myGunX = x + weaponArray[weapon, 6] - lengthdir_x(recoil, myGunAngle);
myGunY = y + weaponArray[weapon, 7] - lengthdir_y(recoil, myGunAngle);
	
scr_gunControlSimple();
