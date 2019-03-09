switch(argument0)
{
	case 0: 
	window_set_fullscreen(true);
	break;
	case 1: 
	window_set_fullscreen(false);
	break;
}

ini_open("savedata.ini");
ini_write_real("Variables", "windowedMode", argument0);
ini_close();
