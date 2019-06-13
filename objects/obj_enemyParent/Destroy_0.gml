/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_SurvivalController))
	{
		if (instance_number(obj_enemyParent) <= 1)
			{
				with (obj_SurvivalController)
					{
						event_user(1);
					}
			}
	}