/// @description Insert description here
// You can write your code in this editor
var cellSize = 16;

var hCells = room_width div cellSize;
var vCells = room_height div cellSize;

draw = false;

grid = mp_grid_create(0, 0, hCells, vCells, cellSize, cellSize);

//Add collision objects to avoid
mp_grid_add_instances(grid, obj_breakableParent, false);
mp_grid_add_instances(grid, obj_solidParent, false);

//adding tiles to that grid
collisionLayerID = layer_tilemap_get_id("Tile_Collision");
for (var i = 0; i < hCells; i++)
	{
		for (var j = 0; j < vCells; j++)
			{
				var tileFound = tilemap_get_at_pixel(collisionLayerID, i*cellSize, j*cellSize);
				
				if(tileFound)
					{
						mp_grid_add_cell(grid, i, j);
					}
			}
	}