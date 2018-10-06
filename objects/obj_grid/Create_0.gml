/// @description Insert description here
// You can write your code in this editor
var cellWidth = 16;
var cellHeight = cellWidth;

var hCells = room_width div cellWidth;
var vCells = room_height div cellHeight;

draw = false;

grid = mp_grid_create(0, 0, hCells, vCells, cellWidth, cellHeight);

//Add collision objects to avoid
mp_grid_add_instances(grid, obj_breakableParent, false);
mp_grid_add_instances(grid, obj_solidParent, false);