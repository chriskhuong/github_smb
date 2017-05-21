///Starting game position

cam_scale = 1;
max_scale = 2;
cam_distance = 96;
x = obj_player.x
y = obj_player.y + 32
shake = 0;

//get inputs for camera movement
spd = obj_player.spd * 2;
scr_get_input();
target_state = scr_mouseTargeting_state;

