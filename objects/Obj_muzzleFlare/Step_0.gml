/// @description Insert description here
// You can write your code in this editor
x = (creator.myGunX + ran) + lengthdir_x(creator.myGunLenX + 10, creator.myGunAngle) - lengthdir_y(creator.myGunLenY, creator.myGunAngle);
y = (creator.myGunY + ran) + lengthdir_y(creator.myGunLenX + 10, creator.myGunAngle) + lengthdir_x(creator.myGunLenY, creator.myGunAngle);

life--;
if (life < 0)
	{
		instance_destroy();
	}