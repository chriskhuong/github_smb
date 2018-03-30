///Inherit obj_lifeFormParent events

event_inherited();
slow = false;
spd = 1;
origSpd = spd;
tempSpd = spd/3;

tag = "enemy";

num = irandom_range(50, 90);

alarm[11] = room_speed*num;