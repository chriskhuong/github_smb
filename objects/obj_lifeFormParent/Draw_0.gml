///Draw the Shadow
//*****NOTE******
//Draws in reverse order, what ever's drawn first will be on the bottom.
draw_sprite_ext(sprite_index, image_index, x, y +(start_height - (start_yoffset / 2)), image_xscale, (image_yscale * -.5), 0, (c_black), .5);
draw_self();

/* */
/*  */
