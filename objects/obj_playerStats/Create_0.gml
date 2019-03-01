///Initialize the player
//var state = [playerJoinState, playerSelectState,playerInfoState, playerLoadOutInfo, playerAbilityInfo];
coolDown = false;
cooltime = 0;
creator = noone;
rCoolDown = false;
rCoolTime = 0;
//False Stats
maxHp = obj_Player.hp;
hp = maxHp;
maxStamina = 10;
stamina = maxStamina;
p_lives = 3;
expr = 0;
maxExpr = 3;
attack = 1; /**/
level = 1;
can_shoot = true;
num = 0;
alive = true;
//depth = -500000;
alarm[11] = 1;


view_zoom = 1;
view_maxZoom = 10;


draw_set_colour(c_white);

//randomize();
random_set_seed(random_range(0, 10));

//Save the player's starting position
if (instance_exists(obj_Player))
    {
        player_xstart = obj_Player.x;
        player_ystart = obj_Player.y;
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
xCam = 0;
yCam = 0;

show_debug_message("Stats: " + string(num));
