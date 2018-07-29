/// @description tmc_segment_intersect_triangle(segment Segment, vect3 TriP1, vect3 TriP2, vec3 TriP3,vec3 out_IntersectPoint)
/// @param segment Segment
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
var Segment = argument0,
    TriP1 = argument1,
    TriP2 = argument2,
    TriP3 = argument3
    out_IntersectPoint = argument4;
var PlanePoint = TriP1,
var PlaneNormal = tmc_vect_plane_normal_from_tri(TriP1,TriP2,TriP3);

var ret = tmc_segment_intersect_plane(Segment,TriP1,PlaneNormal,out_IntersectPoint);
if(ret>0)
{
    if(tmc_vect_point_inside_triangle(out_IntersectPoint,TriP1,TriP2,TriP3))
    {
        return ret;
    }
    return 0;
}
return ret;