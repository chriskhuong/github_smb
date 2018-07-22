/// Draw the shot
draw_set_blend_mode(bm_add);
draw_set_alpha(image_alpha);
draw_line_width_colour(start_x, start_y, x, y, 4, c_blue, c_white);
draw_set_blend_mode(bm_normal);
draw_set_alpha(1);

