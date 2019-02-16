/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Find grid cell it occupies
grid_x = x div cellSize;
grid_y = y div cellSize;

//Pass information to grid controller
with(grid_controller) {
    //Make local variable as these will be used more than once each
    var _grid_x = other.grid_x;
    var _grid_y = other.grid_y;
    sb_grid_count[#_grid_x,_grid_y]+=1; //In the grid, add 1.
    //Adding velocities together gives the desired result,
    //No averaging or extra calculating is needed.
    sb_grid_velocity_x[#_grid_x,_grid_y] += other.velocity[1];
    sb_grid_velocity_y[#_grid_x,_grid_y] += other.velocity[2];
    //Positions get averaged by the grid controller itself,
    //so these can purely be added together.
    sb_grid_center_x[#_grid_x,_grid_y] += other.position[1];
    sb_grid_center_y[#_grid_x,_grid_y] += other.position[2];    
}

myHeadYScale = -sign(image_xscale);
myGunYScale = myHeadYScale;

if (myGunAngle >= 135 && myGunAngle <= 225 || myGunAngle >= 0 && myGunAngle <= 45 || myGunAngle >= 315 && myGunAngle <= 360)
	{
		myHeadAngle = myGunAngle;
	}
if (myGunAngle >= 45 && myGunAngle <= 90)
	{
		myHeadAngle = 45;
	}
else if (myGunAngle >= 90 && myGunAngle <= 135)
	{
		myHeadAngle = 135;
	}
else if (myGunAngle >= 225 && myGunAngle <= 270)
	{
		myHeadAngle = 225;
	}
else if (myGunAngle >= 270 && myGunAngle <= 315)
	{
		myHeadAngle = 315;
	}