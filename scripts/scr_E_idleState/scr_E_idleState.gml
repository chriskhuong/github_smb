///@description idle_behavior()

//Behavior
myState = "Idle";
movement = IDLE;
counter += 1;

target = instance_nearest(x, y, obj_Player);
new_target = noone;

//Transition Triggers
if (counter >= room_speed * 1)
	{
		var change = choose(0, 1);
		switch(change)
			{
				case 0: state = sMove;
				case 1: counter = 0;
				break;
			}
	}
/*
if (instance_exists(target) && target.alive == true)
    {
        var dis = point_distance(x, y, target.x, target.y)
        if (dis < sight)
            {
                state = sChase;
                targetx = target.x;
                targety = target.y;
            }		
	}
*/	
//Sprite
//sprite_index = spr_enemy_idle;
sprite_index = sprite[character, movement];