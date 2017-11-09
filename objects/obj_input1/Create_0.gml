///Initialize the input object
dvc = noone;
char = 0;
//throw this out
if (dvc == noone)
	{
		dvc = 0;
	}

scr_getInput(dvc);

var myChar = instance_create_depth(x, y, depth, obj_tempPlayer1);
myChar.creator = id;
myChar.character = char;
myChar.playerNum = dvc + 1;
