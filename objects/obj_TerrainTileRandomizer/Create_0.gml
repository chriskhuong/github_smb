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

var lay_id4 = layer_get_id("bg_Hillside"); 
Layer4 = layer_tilemap_get_id(lay_id4); 

var lay_id5 = layer_get_id("bg_Cliff"); 
Layer5 = layer_tilemap_get_id(lay_id5); 

var lay_id6 = layer_get_id("bg_River"); //replaces animated water with other animated water... fucking amazing
Layer6 = layer_tilemap_get_id(lay_id6); 

var lay_id7 = layer_get_id("bg_Hill"); 
Layer7 = layer_tilemap_get_id(lay_id7); 

var lay_id8 = layer_get_id("bg_Shallow"); 
Layer8 = layer_tilemap_get_id(lay_id8); 

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
		
/*else
	{
		TileToPlace = tile_set_index(Tilemap, choose(random_range(45, 48), random_range(60, 63), random_range(75, 78)));
		tilemap_set(Layer, TileToPlace, random_range(0, (room_width/32)), random_range(0, (room_height/32)));
		//tilemap_set(Layer, TilesToPlace, room_width, room_height);
	}*/

	

/*
for(TilesPlaced2 = 0; TilesPlaced2 < TilesToPlace2; TilesPlaced2++)
	{
		if (tilemap_get(Layer2, random_range(0, TilemapWidth2), random_range(0 ,TilemapHeight2)) == 136)
			{
				Tilemap2 = tilemap_get(Layer2, random_range(0, TilemapWidth2), random_range(0 ,TilemapHeight2));
				TileToPlace2 = tile_set_index(Tilemap2, choose(random_range(121, 124), random_range(136, 139), random_range(151, 154)));
				tilemap_set(Layer2, TileToPlace2, random_range(0, (room_width/32)), random_range(0, (room_height/32)));
				//tilemap_set(Layer, TilesToPlace, room_width, room_height);
			}
		else if (tilemap_get(Layer2, random_range(0, TilemapWidth2), random_range(0 ,TilemapHeight2)) == noone)
			{
				continue;
			}
	}
*/



/*
var lay_id = layer_get_id("bg_Snowfloor"); //assigns to Room Editor Layers
Layer = layer_tilemap_get_id(lay_id8);
TilemapWidth = tilemap_get_width(Layer);
TilemapHeight = tilemap_get_height(Layer);

var lay_id2 = layer_get_id("bg_Cliff");
Layer2 = layer_tilemap_get_id(lay_id2);
TilemapWidth2 = tilemap_get_width(Layer2);
TilemapHeight2 = tilemap_get_height(Layer2);

var lay_id3 = layer_get_id("bg_Dirt"); 
Layer3 = layer_tilemap_get_id(lay_id3); 

var lay_id4 = layer_get_id("bg_Hillside"); 
Layer4 = layer_tilemap_get_id(lay_id4); 

var lay_id5 = layer_get_id("bg_Cliff"); 
Layer5 = layer_tilemap_get_id(lay_id5); 

var lay_id6 = layer_get_id("bg_River"); //replaces animated water with other animated water... fucking amazing
Layer6 = layer_tilemap_get_id(lay_id6); 

var lay_id7 = layer_get_id("bg_Hill"); 
Layer7 = layer_tilemap_get_id(lay_id7); 











var lay_id8 = layer_get_id("bg_Shallow"); 
Layer8 = layer_tilemap_get_id(lay_id8);


*/