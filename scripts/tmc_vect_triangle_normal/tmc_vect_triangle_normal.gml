/// @description tmc_vect_triangle_normal(vect p1,vect p2, vect p3)
/// @param vect p1
/// @param vect p2
/// @param  vect p3
/*
    calculates the normal of a triangle (or plane) as defined by
    3 points of a right handed triangle
*/
//Set Vector U to (Triangle.p2 minus Triangle.p1)
var U = tmc_vect_sub(argument1,argument0); 
//Set Vector V to (Triangle.p3 minus Triangle.p1)
var V = tmc_vect_sub(argument2,argument0); 
 
//Set Normal.x to (multiply U.y by V.z) minus (multiply U.z by V.y)
//Set Normal.y to (multiply U.z by V.x) minus (multiply U.x by V.z)
//Set Normal.z to (multiply U.x by V.y) minus (multiply U.y by V.x)
 
//Returning Normal
 
return tmc_vect_norm(tmc_vect3(
                U[2] * V[3] - U[3] * V[2],
                U[3] * V[1] - U[1] * V[3],
                U[1] * V[2] - U[2] * V[1]
                ));