/// @description Insert description here
// You can write your code in this editor
/*
draw_set_colour(c_white);
draw_set_alpha(0.1);

for(i=0; i < hCells; i++) {
    draw_line(cellSize*i,0,cellSize*i,room_height);
}

for(i=0; i < vCells; i++) {
    draw_line(0,cellSize*i,room_width,cellSize*i);
}

for(i=0; i < hCells; i++) {
    for(j=0; j < vCells; j++) {
        if(sb_grid_count[#i,j] > 0) {
            draw_text((i*cellSize)+16,(j*cellSize)+16,string_hash_to_newline(string(sb_grid_count[#i,j])));
        }
    }
}

draw_set_alpha(1); //reset since it was causing strangeness
*/