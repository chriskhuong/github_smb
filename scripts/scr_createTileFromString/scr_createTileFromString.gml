var _currentXSection = argument0;
var _currentYSection = argument1;
var _sectionStringData = argument2;
var _tileLayer = argument3;
var _layerName = argument4;
var typeOfTile;

for (_c = 1; _c < string_length(_sectionStringData) + 1; _c++)
	{
		switch (string_char_at(_sectionStringData, _c))
						{
							case "0":
							typeOfTile = 0;
							break;
							
							case "1":
							typeOfTile = 15;
							break;
						}			
		//draw_tile(typeOfTile, _tileLayer, 0, (_currentXSection * sectionWidth) + (((_c - 1)mod sectionTilesX) * gridSize) + gridSize,
								 //(_currentYSection * sectionHeight) + (floor((_c - 1) / sectionTilesX) * gridSize) + gridSize);
		tileX = (_currentXSection * sectionWidth) + (((_c - 1)mod sectionTilesX) * gridSize) + gridSize;
		tileY = (_currentYSection * sectionHeight) + (floor((_c - 1) / sectionTilesX) * gridSize) + gridSize;
		tilemap_set_at_pixel(_tileLayer, typeOfTile, tileX, tileY);
	}
