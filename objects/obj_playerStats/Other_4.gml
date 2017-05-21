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
            if (instance_exists(obj_tempPlayer))
                {
                    player_xstart = obj_tempPlayer.x;
                    player_ystart = obj_tempPlayer.y;
                }
            break;
            
        case LOAD:
            scr_loadGame();
            break;
    }

room_persistent = false;

room_start_action = NEW_ROOM;

//Create the input object
instance_create(0, 0, obj_input);



