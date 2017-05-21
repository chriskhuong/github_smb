///Initialize the player
maxHp = 5;
hp = maxHp;
maxStamina = 10;
stamina = maxStamina;
p_lives = 3;
expr = 0;
maxExpr = 3;
attack = 1; /**/
level = 1;
can_shoot = true;

view_zoom = 1;
view_maxZoom = 10;

draw_set_colour(c_white);

//randomize();
random_set_seed(random_range(0, 10));

//Save the player's starting position
if (instance_exists(obj_tempPlayer))
    {
        player_xstart = obj_tempPlayer.x;
        player_ystart = obj_tempPlayer.y;
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
