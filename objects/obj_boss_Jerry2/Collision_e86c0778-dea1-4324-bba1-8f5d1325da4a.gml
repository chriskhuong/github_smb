/// @description Insert description here
// You can write your code in this editor
 if (hp <= 0) exit;
 
 if (z = 0)
	{
		//invincible = true;
		alarm[0] = secondsPassed * .01; //1/4 of a second
		hp -= other.dmg;
		//state = enemy.hit;
		var knockback_direction = point_direction(other.x, other.y, x, y);
		//create_animation_effect(s_hit_effect, x, y - 8, 1, true);
		//set_movement(knockback_direction, other.knockback);
		//audio_effect(a_hit, 0, false);
		//screenshake(2, seconds_passed * .1);
		//sleep(other.sleep);
	}