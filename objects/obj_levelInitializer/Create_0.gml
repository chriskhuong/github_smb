/// @description Insert description here
// You can write your code in this editor

roomW = room_width;
roomH = room_height;
global.levelNum = 0;

for (_r = 0; _r < 9; _r++)
{
	global.levelRoom[_r] = room_add();
	room_set_width(global.levelRoom[_r], roomW);
	room_set_height(global.levelRoom[_r], roomH);
	room_instance_add(global.levelRoom[_r], 0, 0, obj_levelCreator);
	//room_instance_add(roomLevel[_r], 0, 0, autoTiler);room
	//room_assign(rooms[_r], roomLevel[_r]);
}

room_instance_add(global.levelRoom[0], 0, 0, obj_Player1);

//rooms = array_length_1d(global.roomLevel);
room_goto_next();