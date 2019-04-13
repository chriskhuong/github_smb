#region Level Definitions
//Lets define the levels and their attributes.

var levelCount = 3;// This number will deal with how many levels we are going to have (This includes shops).
clusterCount = 4;
var level = 1;
levelName = [];
levelImage = [];
levelNum = [];
levelRoom = [];
levelNeeds = [];
levelXPos = [];
clusterXPos = [];
levelYPos = [];
biomeSprite = [spr_levelprogress_forest,spr_levelprogress_arctic,spr_levelprogress_industrial,spr_levelprogress_boss];
//space = false;
for(i = 0; i < clusterCount; i++)
{
	clusterXPos[i] = ((i-1) * (global.view_w/4)) + (global.view_w/4);
	levelYPos[i] = global.view_h/2;	
	levelImage[i] = i;
	for(f = 0; f < levelCount; f++)
	{
		levelName[f] = "Level " + string(f);
		levelNum[f] = level;
		levelNeeds[f] = f;
		levelXPos[f] = (f * 50) + clusterXPos[i];
		var newLevel = instance_create_depth(levelXPos[f],levelYPos[i],depth,obj_levels);
		newLevel.myIndex = levelImage[i];
		newLevel.levelRoom = global.levelRoom[f];
		newLevel.levelName = levelName[f];
		newLevel.levelNum = levelNum[f];
		newLevel.levelId = f;
		level++;
		show_debug_message("We made a level " + string(levelNum[f]));
		/*if(i == 0)
		{
			levelXPos[i] = ((i + 1) * 50);
		}
		else
		{
			//levelXPos[i] =  levelXPos[i - 1] + 50;
		}*/
	}
}


#endregion


//#region Level Layout
//for(j = 0; j < array_length_1d(levelName); j++) // loop for each level
//{
//	var newLevel = instance_create_depth(levelXPos[j],levelYPos[j],100,obj_levels);
//	newLevel.image_index = levelImage[j];
//	newLevel.levelName = levelName[j];
//	newLevel.levelId = j;
//	
//	show_debug_message("We made a level " + string(levelName[j]));
//	
//	
///*	with(newLevel)
//	{
//		for(h = 0; h < array_length_2d(other.levelNeeds,other.j); h+=1)
//		{
//			levelNeeds[h] = other.levelNeeds[other.j,h];
//			show_debug_message("Skill" + string(newLevel.levelName) + "needs " + string(levelNeeds[h]));
//			
//			if(levelNeeds[h] == -1)
//			{
//					status = 1;
//					lineToX[0] = obj_levelProgression.x;
//					lineToY[0] = obj_levelProgression.y;
//					needCount = 1;
//			}
//			else
//			{
//				lineToX[h] = other.levelXPos[levelNeeds[h]];	
//				lineToY[h] = other.levelYPos[levelNeeds[h]];
//				needCount++;
//			}
//		}
//	}*/
//}
//
//#endregion