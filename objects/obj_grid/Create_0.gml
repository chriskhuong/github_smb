/// @description Insert description here
// You can write your code in this editor
var cellWidth = 32;
var cellHeight = 32;

var hCells = room_width div cellWidth;
var vCells = room_height div cellHeight;

grid = mp_grid_create(0, 0, hCells, vCells, cellWidth, cellHeight);

//Add collision objects to avoid
mp_grid_add_instances(grid, obj_breakable_parent, false);
mp_grid_add_instances(grid, obj_solidParent, false);