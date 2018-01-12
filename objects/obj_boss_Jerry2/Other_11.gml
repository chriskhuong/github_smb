/// @description idle
//show_debug_message("Idle");
image_index = 1;

if (alarm[1] <= 0)
	{
	
		state = choose(jerry.earthquake,
						jerry.fireball);/*,
						jerry.firespin);*/
						
	if (state == jerry.earthquake)
		{
		
			alarm[2] = secondsPassed * 10;
			alarm[3] = -1;
			z = 0;
			zSpeed = -10.5;
			grav = 0.22;
		}
	
	if (state == jerry.fireball)
		{
			alarm[2] = secondsPassed * 8;
			alarm[3] = -1;
		}
/*		
	if (state == jerry.firespin)
		{
			alarm[2] = secondsPassed * 8;
			alarm[3] = -1;
			alarm[4] = -1;
		}
		*/
	}