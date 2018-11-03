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
var neighbors = ds_grid_get_disk_sum(sb_grid_controller.sb_grid_count, x div cellSize, y div cellSize, alignRadius);

if(neighbors > 1)
	{//has neighbors
		var alignedVelocity = vect2(0, 0);
		
		//Add all velocities together
		alignedVelocity[@1] = ds_grid_get_disk_sum(sb_grid_controller.sb_grid_velocity_x, x div cellSize, y div cellSize, alignRadius);
		alignedVelocity[@2] = ds_grid_get_disk_sum(sb_grid_controller.sb_grid_velocity_y, x div cellSize, y div cellSize, alignRadius);
		
		//return aligned velocity
		return (vect_multr(vect_norm(alignedVelocity), weight));
	}
else
	{//no neighbors
		return vect2(0, 0);
	}