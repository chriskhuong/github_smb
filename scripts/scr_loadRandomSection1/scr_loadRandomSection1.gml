//Grab section type from section array
sectionType = argument0;
LR = argument1;
LBR = argument2;
LTR = argument3;
Num = argument4;

if (sectionType == 0)
	{
		sectionType = choose(1, 2, 3);
	}

switch (sectionType)
	{
		case 1:
			//return ds_list_find_value(LR, floor(random(ds_list_size(LR))));
			return ds_list_find_value(LR, Num);
			break;
		case 2:
			//return ds_list_find_value(LBR, floor(random(ds_list_size(LBR))));
			return ds_list_find_value(LBR, Num);
			break;
		case 3:
			//return ds_list_find_value(LTR, floor(random(ds_list_size(LTR))));
			return ds_list_find_value(LTR, Num);
			break;
	}
