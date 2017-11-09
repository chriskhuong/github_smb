/// @description Insert description here
// You can write your code in this editor
//if the enemies number is 0 or less then it will make 1 instance of it so it can trigger out of this
// and set the alarm back to trigger and the alarm event will take over.
// Since the alarm is only called after 2 seconds if player hasn't killed the enemies within that time
// if this were in the alram event it wouldn't work since it can no longer have a check.
if(instance_number(obj_tempEnemy) < 1)
{
	instance_create_depth(random(room_width -64),(room_height -64),-10,obj_tempEnemy);
	alarm[0] = spawnRate;
}