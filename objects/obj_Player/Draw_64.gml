/// @description Insert description here
// You can write your code in this editor
if(room == rm_characterSelect){
	draw_self();
	if (confirmed)
			{
				draw_sprite(ui_text_ready,0,x - 65, y + 50);
			}
}

//We are doing this becuase the GUI draws on top of everything in the menu
//so if you draw the players spirte on the GUI it will put it where in front
//of other UI elements. This is set for non in game. 