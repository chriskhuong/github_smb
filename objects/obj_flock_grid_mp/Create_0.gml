/// @description Insert description here
// You can write your code in this editor
var cellSize = 16;

var hCells = (room_width div cellSize)+1;
var vCells = (room_height div cellSize)+1;

grid = mp_grid_create(0, 0, hCells, vCells, cellSize, cellSize);

//Add collision objects to avoid
mp_grid_add_instances(grid, obj_breakableParent, false);
mp_grid_add_instances(grid, obj_solidParent, false);