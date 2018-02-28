///@description scr_hitboxCreate()

/// @param xScale
/// @param  yScale
/// @param  xOffset
/// @param  yOffset
/// @param  life
/// @param  xHit
/// @param  yHit
/// @param  hitStun

_hitbox = instance_create_layer(x, y, "spawn", obj_hitbox);
_hitbox.owner = id;
_hitbox.image_xscale = argument0;
_hitbox.image_yscale = argument1;
_hitbox.xOffset = argument2;
_hitbox.yOffset = argument3;
_hitbox.life = argument4;
_hitbox.xHit = argument5;
_hitbox.yHit = argument6;
_hitbox.hitStun = argument7;

return _hitbox;