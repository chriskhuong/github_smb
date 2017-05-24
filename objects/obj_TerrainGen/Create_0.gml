///@description Tile Create 

//init
//global.ground_layer = layer_create(-1); 
//var random_tile = irandom_range(121, 124);
//specify location(s)
//global.ground_tilemap_dirt = layer_tilemap_create(global.ground_layer, 0, 0, tset_Prototype, room_width, room_height); 

//create tiles from tileset
//tilemap_set_at_pixel(global.ground_tilemap_dirt, random_tile, x, y);


layer_tilemap_get_id("bg_Decals"); 
//layer_tilemap_create(layer_id, x, y, tilset resource ID, width in cells, height in cells); 
//tilemap_clear(tilemap ID); 

//Create a layer and a tilemap with a specific tileset

sand_layer = layer_create(-1); 
sand_tilemap = layer_tilemap_create(sand_layer, 0, 0, tset_Prototype, room_width, room_height); 

//For each 32*32 cell in the room we set a specific tile from the tileset of the layer just create
for (i = 0; i <= room_width/32; i += 1)
{
    for (j = 0; j <= room_height/32; j += 1)
    {
        //This function allows to position in the tilemap
        //a specific tile defined by its "data" (its number) in the associated tilemap.
        //The "data" value can be found in the room editor section, with the tile brush selected
		var random_tile = irandom_range(121, 124); 
        tilemap_set_at_pixel(sand_tilemap, random_tile, i*32, j*32); 

    }
}






/*
var testmap = layer_get_id("bg_Decals");  //chooses specific gms2 layer in room
tilemap = layer_tilemap_get_id(testmap); 

//check statement?
var testmap2 = tilemap_get_at_pixel(testmap, x, y); 
*


//sprite_info, bounding box collision
//sprite_Terrain1 = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index)


/*
Layer = layer_tilemap_get_id("bg_Decals")
TilemapWidth = tilemap_get_width(Layer)
TilemapHeight = tilemap_get_height(Layer)
TilesPlaced = 0
TilesToPlace = 20
while TilesPlaced < TilesToPlace 
	{
    Tilemap = tilemap_get(Layer,random_range(0,TilemapWidth),random_range(0,TilemapHeight))
    TileToPlace = tile_set_index(Tilemap,random_range(1,5))
    TileToPlace = tile_set_rotate(TileToPlace, true)
    tilemap_set(Layer,TileToPlace,random_range(0,12),random_range(0,9))
    TilesPlaced++
	}
*/