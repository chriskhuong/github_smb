/// @description Insert description here
// You can write your code in this editor
//if the enemies number is 0 or less then it will make 1 instance of it so it can trigger out of this
// and set the alarm back to trigger and the alarm event will take over.
// Since the alarm is only called after 2 seconds if player hasn't killed the enemies within that time
// if this were in the alram event it wouldn't work since it can no longer have a check.

if (instance_exists(obj_SurvivalController))
	{
		playerCount = obj_SurvivalController.playerCount;
	}

for (var i = 0; i < enemiesNum; i++)
					{
						randomize();
						
						var spawnDistX = random_range(250, 400);
						var spawnDistY = random_range(250, 420);
						var angle = random_range(0, 360);
						var xPos = x + (cos(angle)*spawnDistX);// - ((dist/2)*cos(random(pi*2))));
						var yPos = y + (sin(angle)*spawnDistY);// - ((dist/2)*sin(random(pi*2))));
						
						var enemy = instance_create_depth(xPos, yPos, depth, obj_slimeSteerFlock);
						
						with (enemy)
							{
								while (!place_free(x, y))
									{
										x = x + (cos(random(pi*2)));
										y = y + (sin(random(pi*2)));
									}
							}
					}
if (wave < 10)
	{
		wave += 1;
		enemiesNum *= wave;
		floor(enemiesNum);
	}
//dist = 400;

//if(instance_number(obj_enemyParent) < 1)
//	{
//		/*
//		if (!once)
//			{
//				instance_create_depth(x, y, depth, obj_waveNum);
//				once = true;
//			}
//		*/
//		if (wave <= 3)
//			{
//				for (var i = 0; i < enemiesNum; i++)
//					{
//						with (instance_create_depth(x + (dist*cos(random(pi*2))), y + (dist*sin(random(pi*2))), depth, obj_slimeSteerFlock))
//							{
//								while (!place_free(x, y))
//									{
//										x = x + (cos(random(pi*2)));
//										y = y + (sin(random(pi*2)));
//									}
//							}
//					}
//			}
//		/*else
//			{
//				for (var i = 0; i < enemiesNum; i++)
//					{
//						instance_create_depth(x + lengthdir_x(dist, random_range(0, 360)), y + lengthdir_y(dist, random_range(0, 360)), depth, choose(obj_slime, obj_tempBetterEnemy, obj_tempBetterEnemy));
//					}
//			}
//		*/
//		wave += 1;
//		enemiesNum *= (wave/4);
//		floor(enemiesNum);
//	}