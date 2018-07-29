/// @description tmc_vect_dot(vect1,vect2)
/// @param vect1
/// @param vect2
//returns the dot product between vect1 and vect2
var i;
var v1 = argument0;
var v2 = argument1;
var num = min(v1[0],v2[0]);
if(num == 2)
{
    return dot_product(v1[1],v1[2],v2[1],v2[2]);
}
else if(num == 3)
{
    return dot_product_3d(v1[1],v1[2],v1[3],v2[1],v2[2],v2[3]);
}
return 0;

var tot = 0;
for(i=1; i<= num; i++)
{
    tot+=v1[i] * v2[i];
}

return tot;