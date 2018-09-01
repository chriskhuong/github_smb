/// @description sb_avoid(object, distance_ahead, width, weight)
/// @param object
/// @param  distance_ahead
/// @param  width
/// @param  weight

var _obj    = argument[0];
var _dist   = argument[1]*(vect_len(velocity)/spd)
var _width  = argument[2]*.5;
var _weight = argument[3];

var _avoid = vect2(0,0);
var _ahead = vect_add(position,vect_scaler(velocity,_dist));

var _perp_cw  = vect_scaler(vect_perp(velocity),_width); //Clockwise
var _perp_ccw = vect_multr(_perp_cw,-1);  //Counter Clockwise

///Find Threats
var _threats = ds_list_create();
var _threat_c   = collision_line_first(x,y,_ahead[1],_ahead[2],_obj,true,true);
var _threat_cw  = collision_line_first(x+_perp_cw[1],y+_perp_cw[2],_perp_cw[1]+_ahead[1],_perp_cw[2]+_ahead[2],_obj,true,true);
var _threat_ccw = collision_line_first(x+_perp_ccw[1],y+_perp_ccw[2],_perp_ccw[1]+_ahead[1],_perp_ccw[2]+_ahead[2],_obj,true,true);

if(_threat_c != noone)
    ds_list_add(_threats,_threat_c);
if(_threat_cw != noone)
    ds_list_add(_threats,_threat_cw);
if(_threat_ccw != noone)
    ds_list_add(_threats,_threat_ccw);
    
if(ds_list_size(_threats)>0)
{   //We have collisions.  Let's find the closest
    var _closest=noone;
    var _dist=10000000;
    for(var _i=0; _i<ds_list_size(_threats); _i++)
    {
        var _inst=ds_list_find_value(_threats,_i);
        var _d=point_distance(x,y,_inst.x,_inst.y);
        if(_d<_dist)
        {
            _dist=_d;
            _closest=_inst;
        }
    }
    
    //We have our threat, let's get some info about it.
    //Radius based on averaging sprite width and height with scale taken into account.
    var _rad;
    with(_closest)
        _rad=mean(sprite_width,sprite_height)*.5;
        
    //Difference between direction to asteroid and velocity direction
    var _dir_dif=angle_difference(vect_direction(velocity),point_direction(x,y,_closest.x,_closest.y));
    if(_dir_dif<0)
        _avoid=vect_scaler(vect_perp(velocity),_rad);
    else
        _avoid=vect_scaler(vect_perp(velocity),-_rad);

    
}
ds_list_destroy(_threats);
return(vect_multr(_avoid,_weight));
