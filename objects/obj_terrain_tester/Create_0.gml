/// @description Create Tilemap
/*
global.ground_layer = layer_create(-1);
global.ground_tilemap_grass = layer_tilemap_create(global.ground_layer, 0, 0, tset_Prototype, room_width, room_height);
*/

var lay_id = layer_get_id("bg_Grass");
Layer = layer_tilemap_get_id(lay_id);
TilemapWidth = tilemap_get_width(Layer);
TilemapHeight = tilemap_get_height(Layer);
//TilesPlaced = 0;
//TilesToPlace = 500;

//TileChecker = 0;

var lay_id2 = layer_get_id("bg_Dirt");
Layer2 = layer_tilemap_get_id(lay_id2);
TilemapWidth2 = tilemap_get_width(Layer2);
TilemapHeight2 = tilemap_get_height(Layer2);
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

roomx = (room_width/32);
roomy = (room_height/32);


for (i = 0; i < roomx; i++)
	{
		for (j = 0; j < roomy; j++)
			{
				Tilemap = tilemap_get(Layer, i, j);
				coin = choose(0, 1, 2, 3);
				if (coin == 1)
					{
						TileToPlace = tile_set_index(Tilemap, choose(random_range(45, 48), random_range(60, 63), random_range(75, 78)));
						tilemap_set(Layer, TileToPlace, i, j);
					}
					
				Tilemap2 = tilemap_get(Layer2, i, j);
				if (Tilemap2 == 136)
					{
						coin = choose(0, 1, 2, 3);
						if (coin == 1)
							{
								TileToPlace2 = tile_set_index(Tilemap2, choose(random_range(121, 124), random_range(136, 139), random_range(151, 154)));
								tilemap_set(Layer2, TileToPlace2, i, j);
								//tilemap_set(Layer, TilesToPlace, room_width, room_height);
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