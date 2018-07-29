/// @description tmc_vec_is_clockwise_2d(pA,pB,pC)
/// @param pA
/// @param pB
/// @param pC
/*
**  Arguments:
**      pA    coordinate pair for the first point as tmc_vect2
**      pB    coordinate pair for the second point as tmc_vect2
**      pC    coordinate pair for the third point as tmc_vect2
**
**  Returns:
**      1 if the points are in clockwise order,
**      0 if the points are in counter-clockwise order,
**      or (-1) if there is no solution.
**
**  source GMLscripts.com
**  credit goes to the creator of the original souce
**  http://www.gmlscripts.com/script/is_clockwise
**  Licensing:
**  GMLscripts.com/license
** 
**  Modified by icuurd12b42
**  Description modified to match the vector system
**  Arguments modified to match the vector system
*/
{
    var x1,y1,x2,y2,x3,y3,m,b,cw;
    x1 = argument0[1];
    y1 = argument0[2];
    x2 = argument1[1];
    y2 = argument1[2];
    x3 = argument2[1];
    y3 = argument2[2];
    cw = -1;
    if ((x1 != x2) || (y1 != y2)) {
        if (x1 == x2) {
            cw = (x3 < x2) xor (y1 > y2);
        }else{
            m = (y1 - y2) / (x1 - x2);
            b = y1 - m * x1;
            cw = (y3 > (m * x3 + b)) xor (x1 > x2);
        }
    }
    return cw;
}