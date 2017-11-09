/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

// Initialize some things we will overwrite in obj_levelSpawner
levelName = 0;	//could be drawn next to or on hover or something, just in case
levelID = 0;	//unique level ID
levelNeeds = -1;//array holding the unique ID of any necessary levels before this one
needCount = 0;	//holds array_length_1d(levelNeeds)

lineToX[0] = 0;	//array of where to draw every ling coming from it
lineToY[0] = 0;

status = 0;	//0 not_available, 1 = available, 2 = completed