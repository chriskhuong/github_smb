///Initialize the teatime object


//removed transparency - chris
//image_alpha = 0.8;

//image was too large, scaled down - chris
image_xscale = 0.6; 
image_yscale = 0.6;
image_alpha = 0.5; 
instance_create(obj_teatime.x, obj_teatime.y, obj_teatime_particles); 

//playspeed too slow, was = 1; 
spd = 4;

creator = noone;    //noone is GameMaker specific keyword for no object

//alarm[0] = room_speed * 2;
alarm[0] = room_speed * 4;
