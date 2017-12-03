
// Surfaces are volatile 
// Always check that they haven't been destroyed 
if (surface_exists(surf)) {
    surface_set_target(surf);

    // The following three lines set the 'dark' overlay
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(0, 0, room_width, room_height, false);

    // Setting the blend mode to 'subtract' is what allows us to "cut holes" out of the overlay
    draw_set_blend_mode(bm_subtract);
    draw_set_color(c_white);
	draw_set_alpha(1);
    

            
    with (obj_lifeFormParent)
		{
			if (tag == "player" || tag == "enemy")
				{
					draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 80 + random_range(-1, 1), false);
				}
		}
    
    // Reset all of your draw stuff
    draw_set_blend_mode(bm_normal);
    draw_set_alpha(1);
    surface_reset_target();
} else {
    // Again, surfaces can be a pain
    // Create a new one if there were issues
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}