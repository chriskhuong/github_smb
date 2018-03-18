///scr_playerSelectState()

var unchosen = .25;
var chosen = 1;
	
facing = DOWN;
myTargetX = x + 40;
myTargetY = y

creator.xaim = 0;
creator.yaim = 0;

if (obj_lobby.ready && confirmed && creator.pause_key)
	{
		room_goto(rm_SurvivalMode);
	}
	
if (room != New_Testing_Room)
	{
		if (confirmed)
		{
			if(instance_exists(obj_spawnZone))
				{
					x = irandom_range(obj_spawnZone.x-obj_spawnZone.sprite_width/2, obj_spawnZone.x+obj_spawnZone.sprite_width/2);
					y = irandom_range(obj_spawnZone.y-obj_spawnZone.sprite_height/2, obj_spawnZone.y+obj_spawnZone.sprite_height/2);
				}
			state = scr_moveState2;
		}
		else
			{
				instance_destroy();
			}
	}

if (confirmed == false)
{
	if (creator.switch_char_up)
	    {
	        if (character < 4)
	            {
	                character++;
	            }
	        else
	            {
	                character = 0;
	            }
	    }
	else if (creator.switch_char_down)
	    {
	        if (character > 0)
	            {
	                character--;
	            }
	        else
	            {
	                character = 4;
	            }
	    }
}

if (creator.attack_key && obj_lobby.can_do && !confirmed)
	{
		scr_characterData(character);
		scr_weaponArray1(character);
		confirmed = true;
		myCounter = instance_create_depth(x, y, depth, obj_counter);
		image_speed = chosen;
		myStats.maxHp = hp;
		myStats.hp = myStats.maxHp;
	}

if (creator.cancel && confirmed)
	{
		confirmed = false;
		if (instance_exists(myCounter))
			{
				with(myCounter)
					{
						instance_destroy();
					}
			}
		image_speed = unchosen;
	}