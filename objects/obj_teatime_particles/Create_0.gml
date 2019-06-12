/// @description Insert description here
// You can write your code in this editor
particle_system = part_system_create(); 
particle_emitter = part_emitter_create(particle_system); 
particle_type = part_type_create(); 
choose(image_index); 
//LIGHT RAYS 
//particle shape
part_type_sprite(particle_type, spr_effect_Wave, false, false, true); 
//part_type_shape(particle_type, ps_shape_ellipse); 

//particle appearance
//part_type_color3(particle_type, c_white, c_aqua, c_white); 
part_type_alpha3(particle_type, 0, .7, 0);
part_type_size(particle_type, .1, .1, .01, 0); 
//particle motion
part_type_speed(particle_type, .002, .003, -10, 0);
//particle angle
part_type_direction(particle_type, 0, 360, 0, 0); 
part_type_orientation(particle_type, 5, 90, 0, 0, true);

//particle behavior
part_type_life(particle_type, 25, 125);

alarm[0] = room_speed * 4;
