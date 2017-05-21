global.ps = part_system_create();

global.pt_bullet = part_type_create();

var pt = global.pt_bullet;

part_type_sprite(pt, spr_bulletdrop_pistol, 1, 0, 0);
part_type_speed(pt, 2, 4, 0, 0);
part_type_direction(pt, 0, 90, 0, 0);
part_type_gravity(pt, 0.2, 270);
part_type_orientation(pt, 0, 359, 0, 20, 1);
part_type_life(pt, 15, 30);

