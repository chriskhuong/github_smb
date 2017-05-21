/// @description Tile Create 

//init
global.ground_layer = layer_create(-1); 

//specify location(s)
global.ground_tilemap_dirt = layer_tilemap_create(global.ground_layer, 0, 0, tset_Prototype, room_width, room_height); 

//create tiles from tileset
var random_tile = irandom_range(121, 124); 
tilemap_set_at_pixel(global.ground_tilemap_dirt, random_tile, x, y)

/*
var layer_id = layer_tilemap_get_id("tilemap_Dirt"); 
var tile_id = layer_tilemap_get_id(layer_id); 
layer_tilemap_destroy(tile_id); 

//if layer_tile_exists(layer_id, global.)

Layer = layer_tilemap_get_id("tilemap_Dirt")
TilemapWidth = tilemap_get_width(Layer)
TilemapHeight = tilemap_get_height(Layer)
TilesPlaced = 0
TilesToPlace = 20
while TilesPlaced < TilesToPlace {
    Tilemap = tilemap_get(Layer,random_range(0,TilemapWidth),random_range(0,TilemapHeight))
    TileToPlace = tile_set_index(Tilemap,random_range(1,5))
    tilemap_set(Layer,TileToPlace,random_range(0,12),random_range(0,9))
    TilesPlaced++
}