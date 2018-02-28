/// @description hit/hurtbox
// You can write your code in this editor
/*
with (hurtbox)
	{
		x = other.x + xOffset;
		y = other.y + yOffset;
	}
	
//hitbox
if (hitbox != -1)
	{
		with(hitbox)
			{
				x = other.x + xOffset;
				y = other.y + yOffset;
			}
	}
*/

//goes under hurtbox whenever I get it working
if(hit)
	{
		//hspd = 15;//hitBy.xHit
		len = knockback;//hitBy.yHit
		hit = false;
		state = scr_hitStun;
	}
