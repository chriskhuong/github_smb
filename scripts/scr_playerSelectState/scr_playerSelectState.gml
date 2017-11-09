///scr_playerSelectState()

var unchosen = .25;
var chosen = 1;
	
facing = DOWN;

if (obj_lobby.ready && creator.pause_key)
	{
		room_goto(rm_SurvivalMode);
	}
	
if (room != New_Testing_Room)
	{
		if(instance_exists(obj_spawnZone))
			{
				x = irandom_range(obj_spawnZone.x-obj_spawnZone.sprite_width/2, obj_spawnZone.x+obj_spawnZone.sprite_width/2);
				y = irandom_range(obj_spawnZone.y-obj_spawnZone.sprite_height/2, obj_spawnZone.y+obj_spawnZone.sprite_height/2);
			}
		state = scr_moveState1;
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
	        scr_weaponArray1(character);
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
	        scr_weaponArray1(character);
	    }
}

if (creator.attack_key && !confirmed)
	{
		confirmed = true;
		myCounter = instance_create_depth(x, y, depth, obj_counter);
		image_speed = chosen;
		myStats.maxHp = hp;
		myStats.hp = myStats.maxHp;
	}

if (creator.temp_back && confirmed)
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