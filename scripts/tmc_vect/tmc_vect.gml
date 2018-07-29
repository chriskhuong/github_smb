/// @description  tmc_vect(x optional, y optional, z optional, a optional)
/// @param x optional
/// @param  y optional
/// @param  z optional
/// @param  a optional
//A generic constructor
//creates a 2d, 3d or 4d vector
//will default to a 4d vector if not enough arguments are supplied
//populating the missing elements x,y,z,a with 0
//which allows the greatest match for doing the math with other vector forms
if(argument_count == 3)
{
    return tmc_vect3(argument[0],argument[1],argument[2]);
}
else if(argument_count == 2)
{
    return tmc_vect2(argument[0],argument[1]);
}
else if(argument_count == 0)
{
    return tmc_vect4(0,0,0,0);
}
else if(argument_count == 1)
{
    return tmc_vect4(argument[0],0,0,0);
}
return tmc_vect4(argument[0],argument[1],argument[2],argument[3]);