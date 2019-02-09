/// @description Initialize the rom
randomize();

gridSize = 32;	//size of the tiles in the rooms

switch(global.roomNum)
	{
		case 1:
			xSections = choose(2, 3);
			ySections = choose(2, 3);
			break;
		case 2:
			xSections = choose(2, 3);
			ySections = choose(2, 3);
			break;
		case 3:
			xSections = choose(2, 2, 3, 4);
			ySections = choose(2, 2, 3, 4);
			break;
		case 4:
			xSections = choose(2, 3, 4);
			ySections = choose(2, 3, 4);
			break;
		case 5:
			xSections = choose(2, 3, 3, 4);
			ySections = choose(2, 3, 3, 4);
			break;
		case 6:
			xSections = choose(3, 3, 4);
			ySections = choose(3, 3, 4);
			break;
		case 7:
			xSections = choose(3, 4);
			ySections = choose(3, 4);
			break;
		case 8:
			xSections = choose(3, 4, 4);
			ySections = choose(3, 4, 4);
			break;
		case 9:
			xSections = 4;
			ySections = 4;
			break;
	}

sections = [];

sectionTilesX = 38;	//how many gridspaces wide a room is
sectionTilesY = 24;	//how many gridspaces tall a room is

sectionWidth = sectionTilesX * gridSize;
sectionHeight = sectionTilesY * gridSize;

roomW = (sectionWidth * xSections) + (gridSize * 2);
roomH = (sectionHeight * ySections) + (gridSize * 2);

room_width = roomW;
room_height = roomH;

for (_y = 0; _y < ySections; _y++)
	{
		for (_x = 0; _x < xSections; _x++)
			{
				sections[_x, _y] = 0
			}
	}

//Create Main Path
scr_createMainPath();

//Initializing the sections (loading sections as strings into memory)
scr_initializeAllSections();

//Create our level
scr_generateLevel();

//clean up memory
ds_list_destroy(sectionLRList1);
ds_list_destroy(sectionLRList2);
ds_list_destroy(sectionLTRList1);
ds_list_destroy(sectionLTRList2);
ds_list_destroy(sectionLBRList1);
ds_list_destroy(sectionLBRList2);
