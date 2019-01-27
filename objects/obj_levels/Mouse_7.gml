/// @description Insert description here
// You can write your code in this editor

if (status == 1)	//can only select skill if it is available
	{
		//add any additional code here for selecting the level, i.e. you have to pay for the level or something
		
		status = 2; //set the level to being selected
		
		with (obj_level)	//go through all levels and see if they should now be set to available
			{
				
				//set levels I connect to as available
				for (i = 0; i < needCount; i++)
					{
						if (levelNeeds[i] == other.levelID)
							{
								if (status == 0) //don't overwrite id they have already beat level
									{
										status = 1;	//this level is next to me on the tree and can now be available
									}
							}
					}
					
				//set levels that link to me as available
				for (i = 0; i < other.needCount; i++)	//go backwards back down the tree
					{
						if(other.levelNeeds[i] == levelID)
							{
								if (status == 0) //don't overwrite if they have already beat level
									{
										status = 1; //this level is next to me on the tree and can now be available
									}
							}
					}
					
				// add any code here to save the changes
			}
	}