///Initialize the slime
event_inherited();  //allows the object to inherit the create event of the parent

shadow_var = 2;

image_speed = .1;
spd = 1;
state = scr_enemy_idleState;
alarm[0] = room_speed * irandom_range(2, 5);    //grants enemy stop and go wandering
sight = 128;    //enemy sight range
targetx = 0;    //enemy target x position
targety = 0;    //enemy target y position

