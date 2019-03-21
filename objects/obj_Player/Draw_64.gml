/// @description Insert description here
// You can write your code in this editor
/*
if(room == rm_characterSelect){
	draw_self();
	if (confirmed)
			{
				draw_sprite(ui_text_ready,0,x - 65, y + 50);
			}
}
*/

if(room == rm_characterSelect && confirmed)
	{
		draw_sprite(ui_text_ready,0,x - 65, y + 50);
	}