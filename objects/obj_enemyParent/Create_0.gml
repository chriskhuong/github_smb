///Inherit obj_lifeFormParent events

event_inherited();
slow = false;
spd = random_range(.75, 1.5);
myOnce = false;
origSpd = spd;
tempSpd = spd/3;
hitStun = 0;
stunFlick = 6;
maxStunFlick = stunFlick;
stunFlash = false;
tag = "enemy";