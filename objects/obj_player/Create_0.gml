///Instanciate the object

//Instance Variables
spd = 4;    //speed
image_speed = 0; //image_speed
scr_get_depth();
scr_get_input();

state = scr_move_state; //when assigning a script to a variable *DO NOT* use post "()"'s

//create target, will improve later. PROTOTYPING
instance_create_depth(x, y, depth, obj_target);
instance_create_depth(x - 5, y + 11, depth, obj_gun);

//CURRENT SPRITE
char = 1;
scr_get_char(char);

