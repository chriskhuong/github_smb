/// @description tmc_vec4_norm_io(io_tmc_vec4)
/// @param io_tmc_vec4
/*
    calculates the normal of a vector, assuming the vector is a scalar
    Does NOT return a new vector
    io_tmc_vec4 is used to return the normal... It basically normalises the vector
    var io = tmc_vec4(10,10,10,10);
    tmc_vec4_norm_io(io);
*/
var l = tmc_vec4_len(argument0);
if(l!=0)
{
    argument0[@4] = argument0[4]/l;
    argument0[@3] = argument0[3]/l;
    argument0[@2] = argument0[2]/l;
    argument0[@1] = argument0[1]/l;
    
}

