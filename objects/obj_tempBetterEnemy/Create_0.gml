///Initialize the slime

event_inherited();  //allows the object to inherit the create event of the parent
image_speed = .1;
hp = 6;
spd = 2;
state = scr_enemy_idleState;
alarm[0] = room_speed * irandom_range(2, 5);    //grants enemy stop and go wandering
sight = 128;    //enemy sight range
xaxis = 0;    //points in a direction
yaxis = 0;
