/// @description tmc_vec4_get_extra_data(tmc_vect4,offset)
/// @param tmc_vect4
/// @param offset
/*
    gets the extra data from the location specified
    NOT COMPATIBLE with Version 2.0 extra data

    extra data is not transfered by most functions
    v[0] = type 
    v[1] = x
    v[2] = y
    v[3] = z
    v[4] = a
    v[5+ofsset] = your data
    v[5+0] = data at offset 0
    v[5+1] = data at offset 1... and so on
    
    if you data is an array, you should set the data back to 0 to free the reference
    it may be usefull to store valuable information such as movement speed of a point
    for example... like another vector 
    it will be faster if you access the array manualy instead of calling this function

*/
//return the data
return argument0[argument0[0]+1+argument1];