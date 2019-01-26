/// @description Insert description here
// You can write your code in this editor
cellSize = 32;

hCells = room_width div cellSize;
vCells = room_height div cellSize;

sb_grid_count = ds_grid_create(hCells, vCells);
sb_grid_velocity_x = ds_grid_create(hCells, vCells);
sb_grid_velocity_y = ds_grid_create(hCells, vCells);
sb_grid_center_x = ds_grid_create(hCells, vCells);
sb_grid_center_y = ds_grid_create(hCells, vCells);
sb_grid_ids = ds_grid_create(hCells, vCells);

ds_grid_clear(sb_grid_count, 0);
ds_grid_clear(sb_grid_velocity_x, 0);
ds_grid_clear(sb_grid_velocity_y, 0);
ds_grid_clear(sb_grid_center_x, 0);
ds_grid_clear(sb_grid_center_y, 0);
ds_grid_clear(sb_grid_ids, 0);

//Add collision objects to avoid
//mp_grid_add_instances(grid, obj_breakableParent, false);
//mp_grid_add_instances(grid, obj_solidParent, false);

refresh = room_speed*2;
maxRefresh = refresh;