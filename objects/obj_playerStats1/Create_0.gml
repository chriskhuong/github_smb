///Initialize the player
creator = noone;
//Get Real Stats
maxHp = obj_tempPlayer1.hp;
hp = maxHp;
maxStamina = 10;
stamina = maxStamina;
p_lives = 3;
expr = 0;
maxExpr = 3;
attack = 1; /**/
level = 1;
can_shoot = true;
num = 0


view_zoom = 1;
view_maxZoom = 10;


draw_set_colour(c_white);

//randomize();
random_set_seed(random_range(0, 10));

//Save the player's starting position
if (instance_exists(obj_tempPlayer1))
    {
        player_xstart = obj_tempPlayer1.x;
        player_ystart = obj_tempPlayer1.y;
    }
else
    {
        player_xstart = 0;
        player_ystart = 0;
    }

//Save the previous room
previous_room = room;

room_start_action = NEW_ROOM;


/* */
/*  */
