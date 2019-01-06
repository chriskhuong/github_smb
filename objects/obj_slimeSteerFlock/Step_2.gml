/// @description Insert description here
// You can write your code in this editor

script_execute(states_array[state]);

if (hp <= 0)
    {
		if (!once)
			{
				image_index = 0;
				once = true;
			}
        state = sDead;
    }