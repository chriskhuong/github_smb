//Generate Border for room!
layer_create(200, "Tiles_1");
layer_create(100, "Tiles_2");
lay_id1 = layer_get_id("Tiles_1");
lay_id2 = layer_get_id("Tiles_2");
tilemap_1 = layer_tilemap_create(lay_id1, 0, 0, tileset_Sakura_Ocean2, room_width, room_height);
tilemap_2 = layer_tilemap_create(lay_id2, 0, 0, tileset_Sakura_Terrain2, room_width, room_height);

for (_i = 0; _i < roomW; _i += gridSize)
	{
		tilemap_set_at_pixel(tilemap_1, 0, _i, 0);
		tilemap_set_at_pixel(tilemap_1, 0, _i, roomH - gridSize);
	}

for (_i = gridSize; _i < roomH - gridSize; _i += gridSize)
	{
		tilemap_set_at_pixel(tilemap_1, 0, 0, _i);
		tilemap_set_at_pixel(tilemap_1, 0, roomW - gridSize, _i);
	}

var sectionStringData = "";
var sectionStringData2 = "";
var Num = floor(random(ds_list_size(sectionLRList1)));

for (_y = 0; _y < ySections; _y++)
	{
		for (_x = 0; _x < xSections; _x++)
			{
				sectionStringData = scr_loadRandomSection1(sections[_x, _y], sectionLRList1, sectionLBRList1, sectionLTRList1, Num);
				sectionStringData2 = scr_loadRandomSection1(sections[_x, _y], sectionLRList2, sectionLBRList2, sectionLTRList2, Num);
				
				//show_message(sectionStringData);
				
				scr_createTileFromString(_x, _y, sectionStringData, tilemap_1, "Tiles_1");
				scr_createTileFromString(_x, _y, sectionStringData2, tilemap_2, "Tiles_2");
			}
	}

scr_autoTile1(_x, _y, tileset_Sakura_Ocean2, tilemap_1, "Tiles_1");
scr_autoTile1(_x, _y, tileset_Sakura_Terrain2, tilemap_2, "Tiles_2");