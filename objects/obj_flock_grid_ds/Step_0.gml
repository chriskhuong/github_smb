/// @description Insert description here
// You can write your code in this editor

//Scan count grid as nothing necessary for empty cells
//Go along the grid
for(i = 0; i < hCells; i++)
	{//Go down the grid
		for(j = 0; j < vCells; j++)
			{	//If there is somthing in the grid
				sb_grid_center_x[#i, j] /= sb_grid_count[#i, j];	//Divide total X and Y values by the number of entities
				sb_grid_center_y[#i, j] /= sb_grid_count[#i, j];	//finds average XY location of all entities in a given cell
			}
	}
	