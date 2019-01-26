/// @description Insert description here
// You can write your code in this editor
if(room == rm_characterSelect){
	draw_self();
	if (confirmed)
			{
				draw_sprite(ui_text_ready,0,x - 65, y + 50);
			}
}


//if(room == rm_SurvivalMode){
//var xSpot = -64;
//var ySpot = global.view_h/2;
///*xpos = 0;
//screenW = global.view_w;
//sprNumber = screenW/64;// 64 is the width of the spr_survival_popup_bg
////var xSpot = global.view_w/2;
//var ySpot = global.view_h/2;
//for(var i = 0; i < sprNumber; i++)
//{
//		draw_sprite_ext(spr_survival_popup_bg,0,xpos,ySpot, 20,5,0,c_white,1);
//		draw_sprite_ext(spr_survival_popup_bg,1,xpos,ySpot + 120,1,2,0,c_white,1);
//		draw_sprite_ext(spr_survival_popup_bg,1,xpos,ySpot - 120,1,2,0,c_white,1);
//}*/
//var xpos = 0
//var screenW = global.view_w;
//var sprNumber = (screenW div 64) + 1;// 64 is the width of the spr_survival_popup_bg
////draw_sprite_ext(spr_survival_popup_bg,1,-screenW * 2, ySpot,2,2,0,c_black,1);
//if(!finished)
//	{
//		for(var i = 0; i < sprNumber; i++)
//			{	
//				draw_set_font(global.fontAmmo);
//				draw_sprite_ext(spr_survival_popup_bg,1,(-screenW-64) + curX + (i* 64), curY2,1,2,0,c_white,1);
//				draw_sprite_ext(spr_survival_popup_bg,1,(-screenW-64) + curX + (i* 64), curY,1,2,0,c_white,1);
//				draw_sprite_ext(spr_survival_popup_bg,0,xSpot,ySpot,50,size,0,c_white,.2);
//				draw_sprite_ext(spr_survival_popup,0,global.view_w/2,ySpot,1,size2,0,c_white,1);
//				draw_sprite(spr_survival_popup,1,global.view_w/2,curY4);
//				draw_text(global.view_w/2 + 45,curY4, string(wave));
//				draw_sprite(spr_survival_popup,2,global.view_w/2,curY3);
//			}
//	}	
//}
//draw_set_font(-1)

//We are doing this becuase the GUI draws on top of everything in the menu
//so if you draw the players spirte on the GUI it will put it where in front
//of other UI elements. This is set for non in game. 
