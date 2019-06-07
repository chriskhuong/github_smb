///@description scr_eventRegister
///@arg event
///@arg id
///@arg script
///@arg arg1...*
//an example could be a UI script that will show a notification and image; the args are the string and sprite it will display
//eventRegister(event.pickupBall, obj_UI, create_notification, "You picked up a ball!", spr_ball);

with(obj_eventManager)
	{
		var ev		= argument[0];
		var objID	= argument[1];
		
		if(!ds_map_exists(eventMap, ev))
			{
				//We need to add the event to the event map;
				var listenerList = ds_list_create();
				
				//Add teh listener to the map
				ds_map_add_list(eventMap, ev, listenerList);	//we used ds_map_add_list so when we destroy the map,
																//we destroy the list attached to it
			}
		else
			{
				var listenerList = eventMap[? ev];	//shorthand for ds_map_find_value(eventMap, ev);
			}
		
		//Add listener info
		var listenerInfo;
		
		listenerInfo[0] = objID;
		
		//Add script and arguments
		var len = argument_count - 2;	//sub 2 because we no longer need the firs 2 arguments (ev and objID)
		var i = 0; repeat(len)
			{
				listenerInfo[i + 1] = argument[i + 2];
				i++
			}
		
		//Add listener info to the listener list
		ds_list_add(listenerList, listenerInfo);
	}