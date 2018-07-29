/// @description tmc_vect_cross(vect1,vect2)
/// @param vect1
/// @param vect2
//returns the cross product between vect1 and vect2
//doing a cross product on 2 2d vectors result in a 3d vecto where z is either + or -
var i;
var v1 = argument0;
var v2 = argument1;

var num = min(v1[0],v2[0]);
if(num ==2)
{
    
    var v3 = tmc_vect_cross(tmc_vect3(v1[1],v1[2],0),tmc_vect3(v2[1],v2[2],0));
    //v3[0] = 2;
    return v3;
}
else if (num ==3)
{
    return tmc_vect3(v1[2] * v2[3] - v1[3] * v2[2], v1[3] * v2[1] - v1[1] * v2[3],v1[1] * v2[2] - v1[2] * v2[1]);
}
else
{
    //shoe_debug_message("tmc_vect_cross todo vect4")
    return tmc_vect4(0,0,0,0);
}
return 0;