/*#region Level Definitions
//Lets define the levels and their attributes.

var levelCount = 12; // This number will deal with how many levels we are going to have (This includes shops).
levelName = [];
levelImage = [];
levelNeeds = [];
levelXPos = [];
levelYPos = [];
space = false;
for(i = 0; i < levelCount; i++)
{
	levelName[i] = "Level " + string(i);
	levelImage[i] = i;
	levelNeeds[i] = i;
	if(i == 0)
	{
		levelXPos[i] = ((i + 1) * 50);
		//levelNeeds[i] = -1;
	}
	else
	{
		if(i == 3 || i == 6 || i == 9)
		{
			levelXPos[i] =  levelXPos[i - 1] + 100;
		}
		else
		{
			levelXPos[i] =  levelXPos[i - 1] + 50;
		}
		//levelNeeds[i] = levelNeeds[i] + 1;
	}
	levelYPos[i] = 230;
}
	

#endregion


#region Level Layout
for(j = 0; j < array_length_1d(levelName); j++) // loop for each level
{
	var newLevel = instance_create_depth(levelXPos[j],levelYPos[j],100,obj_levels);
	newLevel.image_index = levelImage[j];
	newLevel.levelName = levelName[j];
	newLevel.levelId = j;
	
	show_debug_message("We made a level " + string(levelName[j]));
	
	
/*	with(newLevel)
	{
		for(h = 0; h < array_length_2d(other.levelNeeds,other.j); h+=1)
		{
			levelNeeds[h] = other.levelNeeds[other.j,h];
			show_debug_message("Skill" + string(newLevel.levelName) + "needs " + string(levelNeeds[h]));
			
			if(levelNeeds[h] == -1)
			{
					status = 1;
					lineToX[0] = obj_levelProgression.x;
					lineToY[0] = obj_levelProgression.y;
					needCount = 1;
			}
			else
			{
				lineToX[h] = other.levelXPos[levelNeeds[h]];	
				lineToY[h] = other.levelYPos[levelNeeds[h]];
				needCount++;
			}
		}
	}
}

#endregion
*/
#region Level Definitions
//Lets define the levels and their attributes.

var levelCount = 3;// This number will deal with how many levels we are going to have (This includes shops).
var clusterCount = 4;
levelName = [];
levelImage = [];
levelNeeds = [];
levelXPos = [];
clusterXPos = [];
levelYPos = [];
space = false;
for(i = 0; i < clusterCount; i++)
{
	clusterXPos[i] = (i * 150) + 100;
	levelYPos[i] = 230;
	levelImage[i] = i;
	for(f = 0; f < levelCount; f++)
	{
		levelName[f] = "Level " + string(f);
		levelNeeds[f] = f;
		levelXPos[f] = (f * 25) + clusterXPos[i];
		var newLevel = instance_create_depth(levelXPos[f],levelYPos[i],100,obj_levels);
		newLevel.myIndex = levelImage[i];
		newLevel.levelName = levelName[f];
		newLevel.levelId = f;
		
		show_debug_message("We made a level " + string(levelName[f]));
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