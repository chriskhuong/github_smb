/// @description tmc_vec3_set_extra_data(tmc_vec3,data,offset)
/// @param tmc_vec3
/// @param data
/// @param offset
/*
    sets the extra data to the location specified
    NOT COMPATIBLE with Version 2.0 extra data
    extra data is not transfered by most functions
    v[0] = type 
    v[1] = x
    v[2] = y
    v[3] = z
    v[4+ofsset] = your data
    v[4+0] = data at offset 0
    v[4+1] = data at offset 1... and so on
    
    if you data is an array, you should set the data back to 0 to free the reference
    it may be usefull to store valuable information such as movement speed of a point
    for example... like another vector 
    it will be faster if you access the array manualy instead of calling this function

*/
//add a new array item to the end of the array
//or modify the existing one
argument0[@argument0[0]+1+argument2] = argument1;