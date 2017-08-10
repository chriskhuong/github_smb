/// @description init

//spawn particle at position
/*
x = obj_view.x; 
y = obj_view.y; 
*/

x = obj_FireGen.x; 
y = obj_FireGen.y; 

//initiates particle sytem
particle_Fire_system = part_system_create(); 

//creates fire particle
particle_Fire = part_type_create(); 

//fire settings
part_type_sprite(particle_Fire_system, spr_effect_Fire, 0, 0, 1); 
part_type_size(particle_Fire_system, 0.2, 0.4, 0, 0); 
part_type_colour2(particle_Fire, c_orange, c_red); 
part_type_alpha3(particle_Fire, 1, 1, 0); 
part_type_speed(particle_Fire, 0.1, 1, 0, 0); 
part_type_direction(particle_Fire, 85, 95, 0, 10); 
part_type_orientation(particle_Fire, 0, 359, 0, 0, 0); 
part_type_life(particle_Fire, 10, 15); 
part_type_blend(particle_Fire, 1); 

//cinder
/*
particle_Cinder = part_type_create(); 
part_type_shape(particle_Cinder, pt_shape_flare); 
part_type_size(particle_Cinder, 0.5, 0.5, 0, 0); 
part_type_colour2(particle_Cinder, c_orange, c_red); 
part_type_alpha3(particle_Cinder, 0.8, 1, 0); 
part_type_speed(particle_Cinder, 0.1, 1, 0, 0); 
part_type_direction(particle_Cinder, 85, 95, 0, 0); 
part_type_blend(particle_Cinder, 1); 
part_type_life(particle_Cinder, 15, 18); 
*/

//particles emitter
particle_Fire_emit = part_emitter_create(particle_Fire_system); 
part_emitter_region(particle_Fire_system, particle_Fire_emit, x - 2, x + 2, y - 2, y + 2, ps_shape_ellipse, ps_distr_linear); 
