creator = noone;

xforce = 0;
yforce = 0;

z = -2;
zSpeed = 0;
grav = .25;

state = noone;

kaboom = true;

accel = 0.5;
max_speed = 3.5;

enum fire
	{
		falling,
		levitating
	}

if instance_exists(obj_tempPlayer2)
	{
		ran_num = 95;
		ran = random_range(-ran_num, ran_num);
		xAdd = obj_tempPlayer2.hspd * 70;
		yAdd = obj_tempPlayer2.vspd * 70;
		
		direction_to_player = point_direction(x, y, obj_tempPlayer2.x + ran + xAdd, obj_tempPlayer2.y + ran + yAdd);
	}

pointPlayer = false;

if (pointPlayer)
	{
		pointA = noone;
		var dir = point_direction(pointA.x, pointA.y, obj_tempPlayer2.x, obj_tempPlayer2.y);
	}

//phy_bullet = true;

//move_towards_point(obj_target.x, obj_target.y, 10)

show_debug_message(string(creator));