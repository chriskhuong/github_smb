/// @description tmc_vec_plane_normal(tmc_vec3 p1, tmc_vec3 p2, tmc_vec3 p3)
/// @param tmc_vec3 p1
/// @param  tmc_vec3 p2
/// @param  tmc_vec3 p3
/*
    calculates the normal of a triangle (or plane) as defined by
    3 points of a right handed triangle
    returns a new vec3
*/
//Set Vector U to (Triangle.p2 minus Triangle.p1)
var U = tmc_vec3_sub(argument1,argument0); 
//Set Vector V to (Triangle.p3 minus Triangle.p1)
var V = tmc_vec3_sub(argument2,argument0); 
 
//Set Normal.x to (multiply U.y by V.z) minus (multiply U.z by V.y)
//Set Normal.y to (multiply U.z by V.x) minus (multiply U.x by V.z)
//Set Normal.z to (multiply U.x by V.y) minus (multiply U.y by V.x)
 
//Returning Normal
//cram a little more perf reusing V
tmc_vec3_set_vals_io(V, U[2] * V[3] - U[3] * V[2],
                U[3] * V[1] - U[1] * V[3],
                U[1] * V[2] - U[2] * V[1]
                );
tmc_vec3_norm_io(V);
return V;

//var v = tmc_vec3(
//                U[2] * V[3] - U[3] * V[2],
//                U[3] * V[1] - U[1] * V[3],
//                U[1] * V[2] - U[2] * V[1]
//                );
//tmc_vec3_norm_io(v);
//return v;