/// @description tmc_vec2_norm_io(io_tmc_vec2)
/// @param io_tmc_vec2
/*
    calculates the normal of a vector, assuming the vector is a scalar
    Does NOT return a new vector
    io_tmc_vec2 is used to return the normal... It basically normalises the vector
    var io = tmc_vec2(10,10,10);
    tmc_vec2_norm_io(io);
*/
var l = tmc_vec2_len(argument0);
if(l!=0)
{
    argument0[2] = argument0[2]/l;
    argument0[1] = argument0[1]/l;
}

