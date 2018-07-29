/// @description tmc_vect_powr(vect1, real)
/// @param vect1
/// @param  real
//returns power(vect,real) 
//where each element of the returned vector 
//is set to power(each element of vect1,real) 
//no it's not a spelling mistake

var i;
var v1 = argument0;
var r = argument1;
var v;

var num = v1[0];
v[0] = num;
for(i=1; i<= num; i++)
{
    v[i] = power(v1[i],r);
}
return v;