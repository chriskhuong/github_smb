///scr_IK

var arm = argument0;
var xOff = argument1 * arm;
var yOff = argument2;
var xTarg = x + argument3;
var yTarg = y + argument4;

var b = 16, f = b; //b = the length of the arm bones.

//The anchored position, eg shoulder, hip
shoulder_x = x + xOff;
shoulder_y = y + yOff;

dist = min(round(point_distance(shoulder_x - xOff, shoulder_y + yOff, xTarg - xOff, yTarg + yOff))+(b/12), b*2); //Set the distance for the arm, limiting it to the max_dist. change the number in /12 to choose how far the arm can collapse
angle = round(point_direction(shoulder_x - xOff, shoulder_y + yOff, xTarg - xOff, yTarg + yOff)); //Set the angle
hand_x = x+lengthdir_x(dist,angle) + xOff;
hand_y = y+lengthdir_y(dist,angle) + yOff;

//The complicated maths bit
d = round(point_distance(shoulder_x, shoulder_y, hand_x, hand_y));
phi = arccos((d*d-b*b-f*f)/(-2*b*f));
theta = pi-phi;
omega = arcsin(f*sin(phi)/d);

//Setting up the draw varibles
bicep_x = shoulder_x;
bicep_y = shoulder_y;
bicep_angle = point_direction(shoulder_x, shoulder_y, hand_x, hand_y) + radtodeg(omega * sign(arm));
forearm_x = shoulder_x+lengthdir_x(b, bicep_angle);
forearm_y = shoulder_y+lengthdir_y(b, bicep_angle);
forearm_angle = bicep_angle - radtodeg(theta * sign(arm)); 

switch (arm)
	{
		case 1:
			shoulder_xr = shoulder_x;
			shoulder_yr = shoulder_y;
			forearm_xr = forearm_x;
			forearm_yr = forearm_y;
			bicep_angler = bicep_angle;
			forearm_angler = forearm_angle;
		break;
		
		case -1:
			shoulder_xl = shoulder_x;
			shoulder_yl = shoulder_y;
			forearm_xl = forearm_x;
			forearm_yl = forearm_y;
			bicep_anglel = bicep_angle;
			forearm_anglel = forearm_angle;
		break;
		default:
			shoulder_xr = shoulder_x;
			shoulder_yr = shoulder_y;
			forearm_xr = forearm_x;
			forearm_yr = forearm_y;
			bicep_angler = bicep_angle;
			forearm_angler = forearm_angle;
		break;
	}