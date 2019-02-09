var _currentXSection = argument0;
var _currentYSection = argument1;
var _tileSet = argument2;
var _tileLayer = argument3;
var _layerName = argument4;

roomx = (room_width/gridSize);
roomy = (room_height/gridSize);

//butts = image[_currentXSection, _currentYSection];
//tileX = (_currentXSection * sectionWidth) + (((_c - 1)mod sectionTilesX) * gridSize) + gridSize;
//tileY = (_currentYSection * sectionHeight) + (floor((_c - 1) / sectionTilesX) * gridSize) + gridSize;
//tilemap_set_at_pixel(_tileLayer, image[_currentXSection, _currentYSection], _currentXSection, _currentYSection);
//image[_currentXSection, _currentYSection] = "";
		
for (i = 0; i < roomx; ++i)
	{
		for (j = 0; j < roomy; ++j)
			{
				image[i, j] = 0
				TilemapXU = tilemap_get(_tileLayer, i, j-1);
				TilemapXR = tilemap_get(_tileLayer, i+1, j);
				TilemapXD = tilemap_get(_tileLayer, i, j+1);
				TilemapXL = tilemap_get(_tileLayer, i-1, j);
				TilemapX = tilemap_get(_tileLayer, i, j);
					if (TilemapX == 15)
					{
						if (TilemapXU == 15)
							{
								image[i, j] += 1;
							}
						if (TilemapXR == 15)
							{
								image[i, j] += 2;
							}
						if (TilemapXD == 15)
							{
								image[i, j] += 4;
							}
						if (TilemapXL == 15)
							{
								image[i, j] += 8;
							}
					}
					//show_debug_message(string(image[i, j]) + " " + string(i) + " " + string(j));
			}
	}

for (i = 0; i < roomx; ++i)
	{
		for (j = 0; j < roomy; ++j)
			{
				TilemapX = tilemap_get(_tileLayer, i, j);
				TileToPlaceX = tile_set_index(TilemapX, image[i, j]);
				tilemap_set(_tileLayer, TileToPlaceX, i, j);	
				image[i, j] = "";
			}
	}