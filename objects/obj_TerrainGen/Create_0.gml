///@description Tile Create 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//ON GAME START, CREATE 1 RANDOM TILE 
/*
//init
global.ground_layer = layer_create(-1); 
var random_tile = irandom_range(121, 124);

//specify location(s)
global.ground_tilemap_dirt = layer_tilemap_create(global.ground_layer, 0, 0, tset_Prototype, room_width, room_height); 

//create tiles from tileset
tilemap_set_at_pixel(global.ground_tilemap_dirt, random_tile, x, y);
*/


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//NO IDEA, THIS DOES NOTHING SO FAR... 
/*
layer_tilemap_get_id("bg_Decals"); 
//layer_tilemap_create(layer_id, x, y, tilset resource ID, width in cells, height in cells); 
//tilemap_clear(tilemap ID); 

//Create a layer and a tilemap with a specific tileset

/*
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
*/



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//TRIED TO CREATE AN IF STATEMENT TO CHECK FOR TILES, BUT FOR WHATEVER REASON, the DEBUG MESSAGE ONLY WORKS
//WITH !layer_tile_exists... so statement is wrong...  because tilemap does exist... :\
/*
//init
global.dirt_layer = layer_create(-1); 
var lay_id = layer_get_id("bg_Dirt"); 

//specify location(s)
var map_id = layer_tilemap_get_id(lay_id); 
var data = tilemap_get_at_pixel(map_id, 0, 0); 
data = tile_set_flip(data, true); 
global.dirt_tilemap = tilemap_set_at_pixel(map_id, data, 0, 0); 
						//= layer_tilemap_create(global.dirt_layer, 0, 0, tset_Prototype, room_width, room_height); 


//check for tilesets
if layer_tile_exists(lay_id, global.dirt_tilemap) //136 or 123
	{
		
		//tilemap_set_at_pixel(dirt_tilemap, random_tile, i*32, j*32); 
		//var random_tile = irandom_range(121, 124); 
		//layer_tilemap_destroy(global.dirt_tilemap); 
		
		show_message("omg it works!"); //apparently !layer_tile_exists doesn't really exist... that's why it isn't working :\
		
		
		//tilemap_set_at_pixel(global.dirt_tilemap, random_tile, x, y); 
	}

*/




/*
var testmap = layer_get_id("bg_Decals");  //chooses specific gms2 layer in room
tilemap = layer_tilemap_get_id(testmap); 

//check statement?
var testmap2 = tilemap_get_at_pixel(testmap, x, y); 



//sprite_info, bounding box collision
//sprite_Terrain1 = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index)


*/


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//THIS ONE WORKS... EXCEPT NO CHECK STATEMENT STILL...
//https://www.reddit.com/r/gamemaker/comments/63eyt3/gms2_randomly_placing_tiles_in_a_room/


Layer = layer_tilemap_get_id("bg_Dirt"); 
TilemapWidth = tilemap_get_width(Layer); 
TilemapHeight = tilemap_get_height(Layer); 
TilesPlaced = 0; 
TilesToPlace = 6000; 
while TilesPlaced < TilesToPlace
	{
    Tilemap = tilemap_get(Layer,random_range(0,TilemapWidth),random_range(0,TilemapHeight))
    TileToPlace = tile_set_index(Tilemap,random_range(121,124))
    //TileToPlace = tile_set_rotate(TileToPlace, true)
    tilemap_set(Layer,TileToPlace,random_range(0,64),random_range(0,1024))
    TilesPlaced++
	}



dirt_layer = layer_create(-1); 
dirt_tilemap = layer_tilemap_create(dirt_layer, 0, 0, tset_Prototype, room_width, room_height); 


for (i = 0; i <= room_width/32; i += 1)
{
    for (j = 0; j <= room_height/32; j += 1)
    {
        //This function allows to position in the tilemap
        //a specific tile defined by its "data" (its number) in the associated tilemap.
        //The "data" value can be found in the room editor section, with the tile brush selected
		var random_tile = irandom_range(121, 124); 
        tilemap_set_at_pixel(dirt_tilemap, random_tile, i*32, j*32); 

    }
}



/*
global.tilelayer = ("bg_Dirt"); 
if layer_exists(global.tilelayer)
	{
	show_message("layer exists!"); 
	}
*/

/*
global.dirttile = tset_Prototype; 
var layer_id = layer_get_id("bg_Decals"); 
 
	
if layer_tilemap_exists(layer_id, global.dirttile)
	{
	//layer_tilemap_destroy(layer_id, global.dirttile); 
	show_message("layer tile map exists!"); 
	}




















