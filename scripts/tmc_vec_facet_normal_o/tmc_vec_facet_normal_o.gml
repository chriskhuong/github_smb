/// @description tmc_vec_facet_normal_o(tmc_vec3 p1, tmc_vec3 p2, tmc_vec3 p3, o_tmc_vec3 outNormal)
/// @param tmc_vec3 p1
/// @param  tmc_vec3 p2
/// @param  tmc_vec3 p3
/// @param  o_tmc_vec3 outNormal
/*
    calculates the normal of a triangle (or plane) as defined by
    3 points of a right handed triangle
    returns nothing. sets o_tmc_vec3 outNormal to the normal
*/
//Set Vector U to (Triangle.p2 minus Triangle.p1)
var U = tmc_vec3_sub(argument1,argument0); 
//Set Vector V to (Triangle.p3 minus Triangle.p1)
//squeeze more cpu using argument3 for storage
var V = argument3;
tmc_vec3_sub_o(argument2,argument0,V); 
 
//Set Normal.x to (multiply U.y by V.z) minus (multiply U.z by V.y)
//Set Normal.y to (multiply U.z by V.x) minus (multiply U.x by V.z)
//Set Normal.z to (multiply U.x by V.y) minus (multiply U.y by V.x)
 
//Returning Normal in V array which is argument3 return array
tmc_vec3_set_vals_io(V, U[2] * V[3] - U[3] * V[2],
                U[3] * V[1] - U[1] * V[3],
                U[1] * V[2] - U[2] * V[1]
                );
tmc_vec3_norm_io(V);
