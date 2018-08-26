for(var i = 0; i < instance_number(obj_counter); i++)
{
   players[i] = instance_find(obj_Player,i);
   if(players[i].state != sJoin && players[i].confirmed == false)
   {
	   global.arrayJoin = true;
   }	
   else
   {
		global.arrayJoin = false;   
   }
}

if (global.arrayJoin == false)
	{
		ready = true;
	}
else
	{
		ready = false;
	}