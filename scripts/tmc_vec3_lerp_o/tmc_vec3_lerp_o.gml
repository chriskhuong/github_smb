/// @description tmc_vec3_lerp_o(tmc_vec3,tmc_vec3,lerp,o_tmc_vect4)
/// @param tmc_vec3
/// @param tmc_vec3
/// @param lerp
/// @param o_tmc_vect4
/*
    lerps the values from the first to the second vector
    the result are store in the o_tmc_vect4, saving the cost of 
    creating a vector each lerp
    var v1 = tmc_vec3(10,10,10);
    var v2 = tmc_vec3(100,100,100);
    var outV = tmc_vec3(0,0,0);
    ...
    for(var i = 0; i<=1; i+=.01)
    {
        tmc_vec3_lerp_o(v1,v2,i,outV);
        show_debug_message(outV);
    }

*/
var v;
argument3[@3] = lerp(argument0[3],argument1[3],argument2);
argument3[@2] = lerp(argument0[2],argument1[2],argument2);
argument3[@1] = lerp(argument0[1],argument1[1],argument2);
argument3[@0] = argument0[0];