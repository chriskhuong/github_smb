///Remember the player's room start position
if (room == rm_pause)
    {
        exit;
    }

switch (room_start_action)
    {
        case RETURN:
            break;
            
        case NEW_ROOM:
        default:
            if (instance_exists(obj_tempPlayer2))
                {
                    player_xstart = obj_tempPlayer2.x;
                    player_ystart = obj_tempPlayer2.y;
                }
            break;
            
        case LOAD:
            scr_loadGame();
            break;
    }

room_persistent = false;

room_start_action = NEW_ROOM;

//Create the input object
//instance_create_depth(0, 0, depth, obj_input);



