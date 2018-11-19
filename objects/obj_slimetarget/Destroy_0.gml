/// @description Insert description here
// You can write your code in this editor
//alarm[0] = 100; 

//instance_create(obj_slimetargetSpawner.x, obj_slimetargetSpawner.y, obj_slimetarget);  //this one works... 
//sort of

//instance_create(776, (choose = 314, 285, 260), obj_slimetarget); 

with(obj_slimeTargetManager)
	{
		currentX = other.x; 
		currentY = other.y;
		alarm[0] = room_speed;
	}