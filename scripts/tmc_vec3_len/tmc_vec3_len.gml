/// @description tmc_vec3_len(tmc_vec3)
/// @param tmc_vec3
/*
    returns the len of a vector, asuming the vector is a scalar
    var l = tmc_vec3_len(tmc_vec3(10,10,10));
*/
return point_distance_3d(0,0,0,
        argument0[1],
        argument0[2],
        argument0[3]
        );