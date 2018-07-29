/// @description tmc_vect_pow(vect1, vect2)
/// @param vect1
/// @param  vect2
//returns power(vect,vect2) 
//where each element of the returned vector 
//is set to power(each element of vect1,each element of vetc2) 

//no it's not a spelling mistake

var i;
var v1 = argument0;
var v2 = argument1;
var v;

var num = min(v1[0],v2[0]);
v[0] = num;
for(i=1; i<= num; i++)
{
    v[i] = power(v1[i],v2[i]);
}
return v;