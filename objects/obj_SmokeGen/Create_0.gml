/// @description init 
/*

x = obj_ExplosionGen.x; 
y = obj_ExplosionGen.y; 

//initiates particle sytem
particle_Explosion_system = part_system_create(); 

//creates fire particle
particle_Explosion = part_type_create(); 

//fire settings
part_type_sprite(particle_Explosion_system, spr_effect_Fire, 0, 0, 1); 
part_type_size(particle_Explosion_system, 0.2, 0.6, 0, 0); 
part_type_colour2(particle_Explosion_system, c_orange, c_red); 
part_type_alpha3(particle_Explosion_system, 1, 1, 0); 
part_type_speed(particle_Explosion_system, 0.2, 0.3, 0, 0); 
part_type_direction(particle_Explosion_system, 0, 359, 0, 10); 
part_type_orientation(particle_Explosion_system, 0, 359, 0, 0, 0); 
part_type_life(particle_Explosion_system, 4, 25); //smoke like delay
part_type_blend(particle_Explosion_system, 1); 

particle_Explosion_emit = part_emitter_create(particle_Explosion_system); 
part_emitter_region(particle_Explosion_system, particle_Explosion_emit, x - 2, x + 2, y - 2, y + 2, ps_shape_ellipse, ps_distr_linear); 

//nice blinding light
//shimmer
/*
particle_Shimmer = part_type_create(); 
part_type_shape(particle_Shimmer, pt_shape_flare); 
part_type_size(particle_Shimmer, 1, 4, 0, 0); 
part_type_colour2(particle_Shimmer, c_orange, c_red); 
part_type_alpha3(particle_Shimmer, 0.4, 1, 0); 
part_type_speed(particle_Shimmer, 0.1, 1, 0, 0); 
part_type_direction(particle_Shimmer, 85, 95, 0, 0); 
part_type_blend(particle_Shimmer, 1); 
part_type_life(particle_Shimmer, 10, 15); 

