///scr_teatimeState

#region Behavior

myState = "TeaTime";
movement = MOVE;
myGunAlpha = 0;
image_speed = 1;

if (attacked == false)
	{
		image_index = 0;
		attacked = true;
	}

if (instance_number(obj_teatime) < 1)
    {
        var teatime = instance_create_depth(x, y, depth + 200, obj_teatime);
        teatime.creator = id;
        
    }

#endregion

#region Transition Triggers

//This state exits via timer from when this stat was called
if (image_index > image_number - 1)
	{
		state = sMove;
	}

#endregion

#region Sprite Control

sprite_index = spr_britney_teatime
	
//Create the dash effect    //var dash is a temporary variable
var tea = instance_create_depth(x, y, depth, obj_dashEffect); //we can alter the properties of the object after creation
tea.image_xscale = image_xscale;
tea.image_yscale = image_yscale;
tea.sprite_index = sprite_index; //assigns the player's current sprite index to the created instance
tea.image_index = image_index; //assigns the player's current image index to the created instance

#endregion