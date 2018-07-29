/// @description tmc_vec_line_intersect_triangle_3d(vec3 p1, vec3 p2, vect3 TriP1, vect3 TriP2, vec3 TriP3,vec3 out_IntersectPoint)
/// @param vec3 p1
/// @param  vec3 p2
/// @param  vect3 TriP1
/// @param  vect3 TriP2
/// @param  vec3 TriP3
/// @param vec3 out_IntersectPoint
/*
source: http://geomalgorithms.com/a05-_intersect-1.html    
    
Segment is a tmc_segment holding the start and end point of the test
TriP1 to TriP3 is the triangle points
out_IntersectPoint is a pre alocated vect3 into which the position of the intersectio will be placed

returns 0 if no intersect, 2 if segment is on the triangle plane, 1 if intersect (if return is 1)
out_IntersectPoint will hold the intersect point if succesful 
                   will hold the Segment start point (if plane return is 2 but in triangle)
                   may be hold the plane interespt even if not in triangle (if return is 0)
*/
var p1 = argument0,
    p2 = argument1,
    TriP1 = argument2,
    TriP2 = argument3,
    TriP3 = argument4
    out_IntersectPoint = argument5;
var PlanePoint = TriP1,
var PlaneNormal = tmc_vec_plane_normal(TriP1,TriP2,TriP3);

var ret = tmc_vec_line_intersect_plane(p1,p2,TriP1,PlaneNormal,out_IntersectPoint);
if(ret>0)
{
    if(tmc_vec_point_inside_triangle_3d(out_IntersectPoint,TriP1,TriP2,TriP3))
    {
        return ret;
    }
    return 0;
}
return ret;