///scr_loadGame
var file = file_text_open_read(working_directory + "mysavegame.txt");
var save_string = file_text_read_string(file);
file_text_close(file);
save_string = base64_decode(save_string);
var save_data = json_decode(save_string);

var save_room = save_data[? "room"];
if (room != save_room)
    {
        room_goto(save_room);
    }

with(obj_playerStats)
    {
        player_xstart = save_data[? "x"];
        player_ystart = save_data[? "y"];
        if (instance_exists(obj_tempPlayer))
            {
                obj_tempPlayer.x = player_xstart;
                obj_tempPlayer.y = player_ystart;
                obj_tempPlayer.phy_position_x = player_xstart;
                obj_tempPlayer.phy_position_y = player_ystart;
            }
        else
            {
                instance_create_depth(player_xstart, player_ystart, depth, obj_tempPlayer);
            }
        hp = save_data[? "hp"];
        maxHp = save_data[? "maxHp"];
        stamina = save_data[? "stamina"];
        maxStamina = save_data[? "maxStamina"];
        expr = save_data[? "expr"];
        maxExpr = save_data[? "maxExpr"];
        attack = save_data[? "attack"];
        level = save_data[? "level"];
    }

ds_map_destroy(save_data);
