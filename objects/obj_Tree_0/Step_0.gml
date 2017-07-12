/// @description Insert description here
// You can write your code in this editor

/*
edge = 10; 
repeat(40)
	{
		instance_create
		(random_range(obj_Tree_0.x, obj_Tree_0.x + 5), 
		random_range(obj_Tree_0.y, obj_Tree_0.y + 10), 
		obj_Rain); 
		//view_yview - edge + r dom(view_hview + edge*2), obj_Rain); 
	} 
*/	


//drops every step
/*
repeat(40)
	{
		instance_create
		(view_xview - edge + random(view_wview + edge*2), 
		view_yview - edge + random(view_hview + edge*2), 
		obj_Rain); 
	}