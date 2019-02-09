layerName = argument0;
layerFile = argument1;

gridSize = 32;

xTiles = room_width / gridSize;
yTiles = room_height / gridSize;

var lay_id1 = layer_get_id(layerName);
Layer = layer_tilemap_get_id(lay_id1);

var levelData = "";

for(_y = 0; _y < yTiles; _y++)
	{
		for(_x = 0; _x < xTiles; _x++)
			{
				Tilemap = tilemap_get(Layer, _x, _y);
				switch(Tilemap)
					{
						case 0:
							levelData += "0";
							break;
						case 15:
							levelData += "1";
							break;
					}
			}
	}

saveDir = get_save_filename(layerFile, room_get_name(room) + layerFile);

file = file_text_open_write(saveDir);
file_text_write_string(file, levelData);
file_text_close(file);
