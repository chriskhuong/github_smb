///@description scr_eventUnregister
///@arg event
///@arg id

with(obj_eventManager)
	{
		var ev		= argument[0];
		var objID	= argument[1];
		
		//Get listeners
		if(ds_map_exists(eventMap, ev))
			{
				var listenerList = eventMap[? ev];
				var len = ds_list_size(listenerList);
				
				var i = 0; repeat(len)
					{
						var listenerInfo = listenerList[| i];
						if (listenerInfo[0] == objID)
							{
								ds_list_destroy(listenerList);
								ds_map_delete(eventMap, ev);
							}
						else
							{
								ds_list_delete(listenerList, i);
							}
						i++;
					}
			}
	}