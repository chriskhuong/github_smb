///@descrption scr_eventFire
///@arg event

with (obj_eventManager)
	{
		var ev = argument[0];
		
		//check if there is an event entry
		if(ds_map_exists(eventMap, ev))
			{
				//Get lsiteners
				var listenerList = eventMap[? ev];
				
				var len = ds_list_size(listenerList);
				
				var listenerInfo, listener, script, args;
				
				var i = 0; repeat(len)
					{
						listenerInfo = listenerList[| i];
						listener = listenerInfo[0];
						script = listenerInfo[1];
						
						var lenArgs = array_length_1d(listenerInfo) - 2;
						var unregister = false;
						
						if (lenArgs <= 0)
							{
								if(instance_exists(listener))
									{
										with(listener)
											{
												unregister = script_execute(script);
											}
									}
								else
									{
										unregister = true;
									}
							}
						else
							{
								args = array_create(lenArgs, 0);
								array_copy(args, 0, listenerInfo, 2, lenArgs);
								if (instance_exists(listener))
									{
										with(listener)
											{
												unregister = scr_execute_alt(script, args);
											}
									}
								else
									{
										unregister = true;
									}
							}
						
						if (unregister)
							{
								scr_eventUnregister(ev, listener);
								
								i--;
							}
							
						i++;
					}
			}
	}