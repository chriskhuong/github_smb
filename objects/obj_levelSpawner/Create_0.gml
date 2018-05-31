/// @description Map Data

#region Level Placement

var l = 0	//to increment the level ID's

levelName[l] = "a";	//the name of the level
levelColor[l] = c_blue;		//the color of the level
levelNeeds[l, 0] = -1;		//what the level needs to be available, -1 means always available
levelX[l] = 64;
levelY[l] = 160;
levelRoom[l] = rm_characterSelect;
l++;

levelName[l] = "b";
levelColor[l] = c_red;
levelNeeds[l, 0] = 0;	
levelX[l] = 200;
levelY[l] = 64;
l++;

levelName[l] = "c";
levelColor[l] = c_yellow;
levelNeeds[l, 0] = 1;	
levelX[l] = 200;
levelY[l] = 160;
l++;

levelName[l] = "d";
levelColor[l] = c_orange;
levelNeeds[l, 0] = 1;	
levelX[l] = 250;
levelY[l] = 160;
l++;

levelName[l] = "c";
levelColor[l] = c_purple;
levelNeeds[l, 0] = 2;
levelNeeds[l, 1] = 3;
levelX[l] = 230;
levelY[l] = 230;
l++;

/*
levelName[l] = "c";
levelColor[l] = c_green;
levelNeeds[l, 0] = 1;
levelNeeds[l, 1] = 3;
levelNeeds[l, 2] = 4;
levelX[l] = 330;
levelY[l] = 160;
l++;
*/
#endregion,

#region Layout the levels

for (i = 0; i < array_length_1d(levelName); i++)
	{
	
		var newLevel = instance_create_depth(levelX[i], levelY[i], depth, obj_level);
		//newLevel.image_index = image_index;
		newLevel.image_blend = levelColor[i];
		newLevel.levelName = levelName[i];
		newLevel.levelID = i;
		
		show_debug_message("We have made level " + string(levelName[i]));
		
		with (newLevel) //cache all the lines that this level is connected to
			{
				for (j = 0; j < array_length_2d(other.levelNeeds, other.i); j += 1) //loop through all the levels in the game
					{
					
						levelNeeds[j] = other.levelNeeds[other.i, j]
						show_debug_message("Level " + string(newLevel.levelName) + " needs " + string(levelNeeds[j]))
						
						if (levelNeeds[j] == -1)	//this level is always available
							{
								status = 1;
								lineToX[0] = obj_levelSpawner.x;
								lineToY[0] = obj_levelSpawner.y;
								needCount = 1;
							}
						else	//cache where the lines should be drawn so it doesn't have to be looked up every frame
							{
								lineToX[j] = other.levelX[levelNeeds[j]];
								lineToY[j] = other.levelY[levelNeeds[j]];
								
								needCount++;
							}
					}
			}
	
	}
	
#endregion

#region delete object now that we have the data //HOLD OFF ON DELETING THIS YET
//instance_destroy();
#endregion