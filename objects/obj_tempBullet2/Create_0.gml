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

if instance_exists(obj_Player)
	{
		ran_num = 95;
		ran = random_range(-ran_num, ran_num);
		xAdd = obj_Player.hspd * 70;
		yAdd = obj_Player.vspd * 70;
		
		direction_to_player = point_direction(x, y, obj_Player.x + ran + xAdd, obj_Player.y + ran + yAdd);
	}

pointPlayer = false;

if (pointPlayer)
	{
		pointA = noone;
		var dir = point_direction(pointA.x, pointA.y, obj_Player.x, obj_Player.y);
	}

//phy_bullet = true;

//move_towards_point(obj_target.x, obj_target.y, 10)

show_debug_message(string(creator));