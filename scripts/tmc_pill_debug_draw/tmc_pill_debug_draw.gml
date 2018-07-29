/// @description tmc_pill_debug_draw(tmc_pill,y,x)
/// @param tmc_pill
/// @param y
/// @param x
var pill = argument0;
var p1 = tmc_segment_p1(pill[0]);
var p2 = tmc_segment_p2(pill[0]);
var angle = tmc_segment_dir2d(pill[0]);
var xx = argument1;
var yy = argument2;

draw_line_colour(xx+p1[1],yy+p1[2],xx+p2[1],yy+p2[2],c_blue,c_blue);
draw_circle_colour(xx+p1[1],yy+p1[2],pill[1],c_red,c_red,1);
draw_circle_colour(xx+p2[1],yy+p2[2],pill[1],c_red,c_red,1);
draw_line_colour(xx+p1[1]+lengthdir_x(pill[1],angle+90),yy+p1[2]+lengthdir_y(pill[1],angle+90),xx+p2[1]+lengthdir_x(pill[1],angle+90),yy+p2[2]+lengthdir_y(pill[1],angle+90),c_red,c_red);
draw_line_colour(xx+p1[1]+lengthdir_x(pill[1],angle-90),yy+p1[2]+lengthdir_y(pill[1],angle-90),xx+p2[1]+lengthdir_x(pill[1],angle-90),yy+p2[2]+lengthdir_y(pill[1],angle-90),c_red,c_red);


draw_circle_colour(xx+p1[1],yy+p1[2],pill[2],c_lime,c_lime,1);
draw_circle_colour(xx+p2[1],yy+p2[2],pill[2],c_lime,c_lime,1);
draw_line_colour(xx+p1[1]+lengthdir_x(pill[2],angle+90),yy+p1[2]+lengthdir_y(pill[2],angle+90),xx+p2[1]+lengthdir_x(pill[2],angle+90),yy+p2[2]+lengthdir_y(pill[2],angle+90),c_lime,c_lime);
draw_line_colour(xx+p1[1]+lengthdir_x(pill[2],angle-90),yy+p1[2]+lengthdir_y(pill[2],angle-90),xx+p2[1]+lengthdir_x(pill[2],angle-90),yy+p2[2]+lengthdir_y(pill[2],angle-90),c_lime,c_lime);