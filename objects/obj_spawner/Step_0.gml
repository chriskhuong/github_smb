/// @description Insert description here
// You can write your code in this editor
//if the enemies number is 0 or less then it will make 1 instance of it so it can trigger out of this
// and set the alarm back to trigger and the alarm event will take over.
// Since the alarm is only called after 2 seconds if player hasn't killed the enemies within that time
// if this were in the alram event it wouldn't work since it can no longer have a check.

dist = 400;

if(instance_number(obj_enemyParent) < 1)
	{
		if (wave <= 3)
			{
				for (var i = 0; i < enemiesNum; i++)
					{
						//with (instance_create_depth(x + (dist*cos(random(pi*2))), y + (dist*sin(random(pi*2))), depth, obj_orcSteerFlock))
							{
								while (!place_free(x, y))
									{
										x = x + (cos(random(pi*2)));
										y = y + (sin(random(pi*2)));
									}
							}
					}
			}
		/*else
			{
				for (var i = 0; i < enemiesNum; i++)
					{
						instance_create_depth(x + lengthdir_x(dist, random_range(0, 360)), y + lengthdir_y(dist, random_range(0, 360)), depth, choose(obj_slime, obj_tempBetterEnemy, obj_tempBetterEnemy));
					}
			}
		*/
		wave += 1;
		enemiesNum *= (wave/4);
		floor(enemiesNum);
	}