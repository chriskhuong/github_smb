/// @description Create Tilemap
/*
global.ground_layer = layer_create(-1);
global.ground_tilemap_grass = layer_tilemap_create(global.ground_layer, 0, 0, tset_Prototype, room_width, room_height);
*/


//TilemapWidth3 = tilemap_get_width(Layer3); 
//TilemapHeight3 = tilemap_get_height(Layer3); 

//TilesPlaced2 = 0;
//TilesToPlace2 = 1;

//TileChecker2 = 0;

//while(TilesPlaced < TilesToPlace)
//	{
//		Tilemap = tilemap_get(Layer, random_range(0, TilemapWidth), random_range(0 ,TilemapHeight));
//		/*if (tilemap_get(Layer, random_range(0, TilemapWidth), random_range(0 ,TilemapHeight)) == 136)
//			{
//				TileToPlace = tile_set_index(Tilemap, choose(random_range(121, 124), random_range(136, 139), random_range(151, 154)));
//				tilemap_set(Layer, TileToPlace, random_range(0, (room_width/32)), random_range(0, (room_height/32)));
//				//tilemap_set(Layer, TilesToPlace, room_width, room_height);
//			}*/
//		/*else
//			{
//				TileToPlace = tile_set_index(Tilemap, choose(random_range(45, 48), random_range(60, 63), random_range(75, 78)));
//				tilemap_set(Layer, TileToPlace, random_range(0, (room_width/32)), random_range(0, (room_height/32)));
//				//tilemap_set(Layer, TilesToPlace, room_width, room_height);
//			}*/
//		TileToPlace = tile_set_index(Tilemap, choose(random_range(45, 48), random_range(60, 63), random_range(75, 78)));
//		tilemap_set(Layer, TileToPlace, random_range(0, (room_width/32)), random_range(0, (room_height/32)));
//		//tilemap_set(Layer, TilesToPlace, room_width, room_height);
//		TilesPlaced++;
//	}
//TilesPlaced = 0;
//TilesToPlace = 500;

//TileChecker = 0;



//level list, faster load 
//checks for current room

if (room == 
	rm_SurvivalMode ||
	rm_SurvivalMode2
	)
	{
		room_type = 0;
	}
if (room == 
	rm_Arctic_Test
	)
	{
		room_type = 1;
	}

/*sakura map type = 0; 
arctic map type = 1; 
desert map type = 2; 
urbanmap type = 3;*/

if (room_type == 0)
{
	var lay_id = layer_get_id("bg_Grass"); //assigns to Room Editor Layers
	Layer = layer_tilemap_get_id(lay_id);
	TilemapWidth = tilemap_get_width(Layer);
	TilemapHeight = tilemap_get_height(Layer);

	var lay_id2 = layer_get_id("bg_Cliff");
	Layer2 = layer_tilemap_get_id(lay_id2);
	TilemapWidth2 = tilemap_get_width(Layer2);
	TilemapHeight2 = tilemap_get_height(Layer2);

	var lay_id3 = layer_get_id("bg_Dirt"); 
	Layer3 = layer_tilemap_get_id(lay_id3); 
	TilemapWidth3 = tilemap_get_width(Layer3);
	TilemapHeight3 = tilemap_get_height(Layer3);

	var lay_id4 = layer_get_id("bg_Hillside"); 
	Layer4 = layer_tilemap_get_id(lay_id4); 
	TilemapWidth4 = tilemap_get_width(Layer4);
	TilemapHeight4 = tilemap_get_height(Layer4);

	var lay_id5 = layer_get_id("bg_Cliff"); 
	Layer5 = layer_tilemap_get_id(lay_id5); 
	TilemapWidth5 = tilemap_get_width(Layer5);
	TilemapHeight5 = tilemap_get_height(Layer5);

	var lay_id6 = layer_get_id("bg_River"); //replaces animated water with other animated water... fucking amazing
	Layer6 = layer_tilemap_get_id(lay_id6); 
	TilemapWidth6 = tilemap_get_width(Layer6);
	TilemapHeight6 = tilemap_get_height(Layer6);

	var lay_id7 = layer_get_id("bg_Hill"); 
	Layer7 = layer_tilemap_get_id(lay_id7); 
	TilemapWidth7 = tilemap_get_width(Layer7);
	TilemapHeight7 = tilemap_get_height(Layer7);

	var lay_id8 = layer_get_id("bg_Shallow"); 
	Layer8 = layer_tilemap_get_id(lay_id8); 
	TilemapWidth8 = tilemap_get_width(Layer8);
	TilemapHeight8 = tilemap_get_height(Layer8);

	roomx = (room_width/32);
	roomy = (room_height/32);

	for (i = 0; i < roomx; i++)
		{
			for (j = 0; j < roomy; j++)
				{
					//Grass base
					Tilemap = tilemap_get(Layer, i, j);
					coin = choose(0, 1, 2, 3);
					if (Tilemap == 35)
					{
						if (coin == 1)
							{
								TileToPlace = tile_set_index(Tilemap, choose(random_range(25, 27), random_range(50, 52), random_range(75, 77), random_range(100, 102)));
								tilemap_set(Layer, TileToPlace, i, j);
							}
					}
					//Ocean Cliff side base
					Tilemap2 = tilemap_get(Layer2, i, j);
					if (Tilemap2 == 45)
						{
							coin = choose(0, 1, 2, 3);
							if (coin == 1)
								{
									TileToPlace2 = tile_set_index(Tilemap2, choose(random_range(25, 29), random_range(42, 46)));
									tilemap_set(Layer2, TileToPlace2, i, j);
								}
						}
					//Dirt base
					Tilemap3 = tilemap_get(Layer3, i, j);
				
					if (Tilemap3 == 192)
					{
						coin = choose(0, 1, 2, 3);
						if (coin == 1)
							{
								TileToPlace3 = tile_set_index(Tilemap3, choose(random_range(190, 193), random_range(215, 218), random_range(240, 243)));
								tilemap_set(Layer3, TileToPlace3, i, j);
							}
					}
					//Hillside base
					Tilemap4 = tilemap_get(Layer4, i, j);
					if (Tilemap4 == 176)
						{
							coin = choose(0, 1, 2, 3);
							if (coin == 1)
								{
									TileToPlace4 = tile_set_index(Tilemap4, choose(random_range(176, 178)));
									tilemap_set(Layer4, TileToPlace4, i, j);
								}
						}
					
					//Grass cliff bottom
					Tilemap5 = tilemap_get(Layer5, i, j);
					if (Tilemap5 == 85)
						{
							coin = choose(0, 1, 2, 3);
							if (coin == 1)
								{
									TileToPlace5 = tile_set_index(Tilemap5, choose(random_range(85, 89)));
									tilemap_set(Layer5, TileToPlace5, i, j);
									//tilemap_set(Layer, TilesToPlace, room_width, room_height);
								}
						}
					//River 
					//water bottom, land top
					Tilemap6 = tilemap_get(Layer6, i, j);
					if (Tilemap6 == 7)
						{
							coin = choose(0, 1);
							if (coin == 1)
								{
									TileToPlace6 = tile_set_index(Tilemap6, choose(random_range(8, 9)));
									tilemap_set(Layer6, TileToPlace6, i, j);
									//tilemap_set(Layer, TilesToPlace, room_width, room_height);
								}
						}
					if (Tilemap6 == 27)
						{
							coin = choose(0, 1);
							if (coin == 1)
								{
									TileToPlace6 = tile_set_index(Tilemap6, choose(random_range(18, 20), random_range(29, 31)));
									tilemap_set(Layer6, TileToPlace6, i, j);
									//tilemap_set(Layer, TilesToPlace, room_width, room_height);
								}
						}
					//water top, land bottom
					if (Tilemap6 == 41)
						{
							coin = choose(0, 1);
							if (coin == 1)  
								{
									TileToPlace6 = tile_set_index(Tilemap6, choose(random_range(40, 42)));
									tilemap_set(Layer6, TileToPlace6, i, j);
									//tilemap_set(Layer, TilesToPlace, room_width, room_height);
								}
						}
					//water left, land right
					if (Tilemap6 == 32)
						{
							coin = choose(0, 1);
							if (coin == 1)  
								{
									TileToPlace6 = tile_set_index(Tilemap6, choose(random_range(32, 32), random_range(21, 21)));
									tilemap_set(Layer6, TileToPlace6, i, j);
									//tilemap_set(Layer, TilesToPlace, room_width, room_height);
								}
						}
					//water right, land left
					if (Tilemap6 == 14)
						{
							coin = choose(0, 1);
							if (coin == 1)  
								{
									TileToPlace6 = tile_set_index(Tilemap6, choose(random_range(17, 17), random_range(28, 28)));
									tilemap_set(Layer6, TileToPlace6, i, j);
									//tilemap_set(Layer, TilesToPlace, room_width, room_height);
								}
						}
					//Hill base
					Tilemap7 = tilemap_get(Layer7, i, j);
					coin = choose(0, 1);
					if (Tilemap7 == 208)
					{
						if (coin == 1)
							{
								TileToPlace7 = tile_set_index(Tilemap7, choose(random_range(182, 185), random_range(207, 210), random_range(232, 235)));
								tilemap_set(Layer7, TileToPlace7, i, j);
							}
					}
					//Shallow water base
					Tilemap8 = tilemap_get(Layer8, i, j);
					coin = choose(0, 1);
					if (Tilemap8 == 53)
					{
						if (coin == 1)
							{
								TileToPlace8 = tile_set_index(Tilemap8, choose(random_range(52, 54), random_range(69, 71)));
								tilemap_set(Layer8, TileToPlace8, i, j);
							}
					}
				}
		}
		
}  //end sakura tile gen




//Arctic Tileset Gen
if (room_type == 1)
{
	var lay_id_ArcticOcean = layer_get_id("bg_Arctic_Ocean"); //assigns to Room Editor Layers
	Layer9 = layer_tilemap_get_id(lay_id_ArcticOcean);
	TilemapWidth9 = tilemap_get_width(Layer9);
	TilemapHeight9 = tilemap_get_height(Layer9);

	var lay_id_Snowfloor = layer_get_id("bg_Snow_Floor"); //arctic base lol
	Layer10 = layer_tilemap_get_id(lay_id_Snowfloor);
	TilemapWidth10 = tilemap_get_width(Layer10);
	TilemapHeight10 = tilemap_get_height(Layer10);

	var lay_id_Arctic_River = layer_get_id("bg_Arctic_River"); 
	Layer11 = layer_tilemap_get_id(lay_id_Arctic_River); 
	TilemapWidth11 = tilemap_get_width(Layer11); 
	TilemapHeight11 = tilemap_get_height(Layer11);

	var lay_id_Frozen_Water = layer_get_id("bg_Frozen_Water"); 
	Layer12 = layer_tilemap_get_id(lay_id_Frozen_Water); 
	TilemapWidth12 = tilemap_get_width(Layer12); 
	TilemapHeight12 = tilemap_get_height(Layer12);

	var lay_id_Arctic_Hillside = layer_get_id("bg_Arctic_Hillside"); 
	Layer13 = layer_tilemap_get_id(lay_id_Arctic_Hillside); 
	TilemapWidth13 = tilemap_get_width(Layer13); 
	TilemapHeight13 = tilemap_get_height(Layer13);

	var lay_id_Arctic_Hill = layer_get_id("bg_Arctic_Hill");
	Layer14 = layer_tilemap_get_id(lay_id_Arctic_Hill); 
	TilemapWidth14 = tilemap_get_width(Layer14); 
	//TilemapHeight14 = tilemap_get_height(Layer14);

	var lay_id_Arctic_Decals = layer_get_id("bg_Arctic_Decals"); 
	Layer15 = layer_tilemap_get_id(lay_id_Arctic_Decals); 
	TilemapWidth15 = tilemap_get_width(Layer15); 
	TilemapHeight15 = tilemap_get_height(Layer15);
	
	roomx = (room_width/32);
	roomy = (room_height/32);

	for (i = 0; i < roomx; i++)
		{
			for (j = 0; j < roomy; j++)
				{
					//Arctic Ocean
					Tilemap9 = tilemap_get(Layer9, i, j);
					if (Tilemap9 == 60)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
							{
								TileToPlace9 = tile_set_index(Tilemap9, choose(random_range(61, 64), random_range(72, 76), random_range(84, 88), random_range(96, 100)));
								tilemap_set(Layer9, TileToPlace9, i, j);
							}
					}
				
					//Snowfloor Base
					Tilemap10 = tilemap_get(Layer10, i, j);
					if (Tilemap10 == 14)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
							{
								TileToPlace10 = tile_set_index(Tilemap10, choose(random_range(14, 17), random_range(26, 29), random_range(38, 41)));
								tilemap_set(Layer10, TileToPlace10, i, j);
							}
					}
					//Snowfloor Top
					if (Tilemap10 == 2)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
							{
								TileToPlace10 = tile_set_index(Tilemap10, choose(random_range(2, 5)));
								tilemap_set(Layer10, TileToPlace10, i, j);
							}
					}
					//Snowfloor Bottom
					if (Tilemap10 == 50)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
							{
								TileToPlace10 = tile_set_index(Tilemap10, choose(random_range(50, 53)));
								tilemap_set(Layer10, TileToPlace10, i, j);
							}
					}
					//Snowfloor Rightside
					if (Tilemap10 == 18)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
							{
								TileToPlace10 = tile_set_index(Tilemap10, choose(18, 30, 42));
								tilemap_set(Layer10, TileToPlace10, i, j);
							}
					}
					//Snowfloor Leftside
					if (Tilemap10 == 13)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
							{
								TileToPlace10 = tile_set_index(Tilemap10, choose(13, 25, 37));
								tilemap_set(Layer10, TileToPlace10, i, j);
							}
					}
					//Arctic River
					Tilemap11 = tilemap_get(Layer11, i, j);
					if (Tilemap11 == 169)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace11 = tile_set_index(Tilemap11, choose(random_range(169, 172), random_range(181, 184), random_range(193, 196)));
							tilemap_set(Layer11, TileToPlace11, i, j); 
						}
					}
					//top arctic river
					if (Tilemap11 == 157)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace11 = tile_set_index(Tilemap11, choose(random_range(157, 160)));
							tilemap_set(Layer11, TileToPlace11, i, j); 
						}
					}
					//bottom arctic river
					if (Tilemap11 == 205)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace11 = tile_set_index(Tilemap11, choose(random_range(205, 208)));
							tilemap_set(Layer11, TileToPlace11, i, j); 
						}
					}
					//left arctic river
					if (Tilemap11 == 168)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace11 = tile_set_index(Tilemap11, choose(168, 180, 192));
							tilemap_set(Layer11, TileToPlace11, i, j); 
						}
					}
					//right arctic river
					if (Tilemap11 == 173)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace11 = tile_set_index(Tilemap11, choose(173, 185, 197));
							tilemap_set(Layer11, TileToPlace11, i, j); 
						}
					}
					//frozen water
					Tilemap12 = tilemap_get(Layer12, i, j);
					coin = 1; //choose(0, 1);
					if (Tilemap12 == 121)
					{
						coin = choose(0, 1);
						if (coin == 1)
						{
							TileToPlace12 = tile_set_index(Tilemap12, choose(random_range(121, 123), random_range(133,135)));
							tilemap_set(Layer12, TileToPlace12, i, j); 
						}
					}
					//frozen water top
					if (Tilemap12 == 109)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace12 = tile_set_index(Tilemap12, choose(random_range(109,111)));
							tilemap_set(Layer12, TileToPlace12, i, j); 
						}
					}
					//frozen water bottom
					if (Tilemap12 == 145)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace12 = tile_set_index(Tilemap12, choose(random_range(145,147)));
							tilemap_set(Layer12, TileToPlace12, i, j); 
						}
					}
					//frozen water right
					if (Tilemap12 == 124)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace12 = tile_set_index(Tilemap12, choose(124, 136));
							tilemap_set(Layer12, TileToPlace12, i, j); 
						}
					}
					//frozen water left
					if (Tilemap12 == 120)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace12 = tile_set_index(Tilemap12, choose(120, 132));
							tilemap_set(Layer12, TileToPlace12, i, j); 
						}
					}
					Tilemap13 = tilemap_get(Layer13, i, j);
					//arctic hillside base
					if (Tilemap13 == 104)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace13 = tile_set_index(Tilemap13, choose(random_range(104, 106)));
							tilemap_set(Layer13, TileToPlace13, i, j); 
						}
					}
					//arctic hillside top
					if (Tilemap13 == 92)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace13 = tile_set_index(Tilemap13, choose(random_range(92, 94)));
							tilemap_set(Layer13, TileToPlace13, i, j); 
						}
					}
					//arctic hillside bottom
					if (Tilemap13 == 116)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace13 = tile_set_index(Tilemap13, choose(random_range(116, 118)));
							tilemap_set(Layer13, TileToPlace13, i, j); 
						}
					}
					Tilemap14 = tilemap_get(Layer14, i, j);
					//arctic hill
					if (Tilemap14 == 56)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace14 = tile_set_index(Tilemap14, choose(random_range(56, 58), random_range(68,70)));
							tilemap_set(Layer14, TileToPlace14, i, j); 
						}
					}
					//arctic hill top
					if (Tilemap14 == 44)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace14 = tile_set_index(Tilemap14, choose(random_range(44, 46)));
							tilemap_set(Layer14, TileToPlace14, i, j); 
						}
					}
					//arctic hill bottom
					if (Tilemap14 == 80)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace14 = tile_set_index(Tilemap14, choose(random_range(80, 82)));
							tilemap_set(Layer14, TileToPlace14, i, j); 
						}
					}
					//arctic hill left
					if (Tilemap14 == 55)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace14 = tile_set_index(Tilemap14, choose(55, 67));
							tilemap_set(Layer14, TileToPlace14, i, j); 
						}
					}
					//arctic hill right
					if (Tilemap14 == 59)
					{
						coin = 1; //choose(0, 1);
						if (coin == 1)
						{
							TileToPlace14 = tile_set_index(Tilemap14, choose(59, 71));
							tilemap_set(Layer14, TileToPlace14, i, j); 
						}
					}
				}
		}
} //end arctic tile gen






