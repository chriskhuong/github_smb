///Control the Menu
if (alarm[0] <= 0)
    {
        if (obj_input.down_key || obj_input.yaxis > 0.5)
            {
                if (menu_index < array_length_1d(option) - 1)//make sure that our index is less than the total length of the array
                    {
                        menu_index++;
                    }
                else
                    {
                        menu_index = 0;
                    }
                alarm[0] = room_speed/6;
            }
        if (obj_input.up_key || obj_input.yaxis < -0.5)
            {
                if (menu_index > 0)
                    {
                        menu_index--;
                    }
                else
                    {
                        menu_index = array_length_1d(option) - 1;
                    }
                alarm[0] = room_speed/6;
            }
        if (obj_input.dash_key)
            {
                switch(menu_index)
                    {
                        case 0:
                            room_start_action = RETURN;
                            room_goto(obj_playerStats.previous_room);
                            break;
                            
                        case 1:
                            scr_saveGame()
                            break;
                            
                        case 2:
                            obj_playerStats.room_start_action = LOAD;
                            room_goto(obj_playerStats.previous_room);
                            break;
                        
                        case 3:
                            game_end();
                            break;
                        
                        default:
                            break;
                    }
                obj_input.dash_key = false;
            }
    }

