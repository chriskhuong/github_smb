/// @description sb_alignment_grid(radiusm grid controller, weight)
/// @param radius
/// @param grid controller
/// @param weight
///return vector2 for aligning velocity with given object in given radius
///uses sb_collision_circle_list from GMLscripts.com

var alignRadius=  argument[0];
var sb_grid_controller = argument[1];
var weight = argument[2]

//find total number of neighbors in a given radius
var neighborCell = ds_grid_get_disk_max(sb_grid_controller.sb_grid_count, x div cellSize, y div cellSize, alignRadius);

if(neighborCell > 1)
	{//has neighbors
		//Find actual cell has the maximum
		var neighborCellX = ds_grid_value_disk_x(sb_grid_controller.sb_grid_count, x div cellSize, y div cellSize, alignRadius, neighborCell);
		var neighborCellY = ds_grid_value_disk_y(sb_grid_controller.sb_grid_count, x div cellSize, y div cellSize, alignRadius, neighborCell);
		
		var massX = sb_grid_controller.sb_grid_center_x[#neighborCellX, neighborCellY]/sb_grid_controller.sb_grid_count[#neighborCellX, neighborCellY];
		var massY = sb_grid_controller.sb_grid_center_y[#neighborCellX, neighborCellY]/sb_grid_controller.sb_grid_count[#neighborCellX, neighborCellY];
		
		var alignedPosition = vect2(massX, massY);
		
		//return aligned velocity
		return (vect_multr(vect_norm(vect_subtract(alignedPosition, position)), weight));
	}
else
	{//no neighbors
		return vect2(0, 0);
	}