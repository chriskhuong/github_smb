/// @description tmc_vec_line_intersect_plane(vec3 P1, vec3 p2, vec3 PlanePoint, vec3 PlaneNormal, vec3 out_IntersectPoint)
/// @param vec3 P1
/// @param  vec3 p2
/// @param  vec3 PlanePoint
/// @param  vec3 PlaneNormal
/// @param  vec3 out_IntersectPoint
/*
source: http://geomalgorithms.com/a05-_intersect-1.html    
    
Segment is a tmc_segment holding the start and end point of the test

PlanePoint is the point onto which the plane is affixed and rotated about by the PlaneNormal

PlaneNormal is the normal of the plane, see tmc_vect_plane_normal_from_tri. it is simply a normalized directional vector

out_IntersectPoint is a pre alocated vect3 into which the position of the intersectio will be placed

returns 0 if no intersect, 2 if segment is on the plane, 1 if intersect (if return is 1)
out_IntersectPoint will hold the intersect point if succesful
                   will hold the Segment start point (if return is 2)
                   will be untouched (if return is 0)
*/
var p1 = argument0,
    p2 = argument1,
    PlanePoint = argument2,
    PlaneNormal = argument3,
    out_IntersectPoint = argument4;

var u = tmc_vec3_sub(p2[2],p1[1]),
    w = tmc_vec3_sub(p1[1], PlanePoint);

var D = tmc_vec3_dot(PlaneNormal, u),
var N = -tmc_vec3_dot(PlaneNormal, w);
// segment is parallel to plane
//show_message(string_format(D,10,10))
if (abs(D) < .0001) 
{  
    // segment lies in plane       
    if (N == 0)             
    {
        var retp = p1;
        out_IntersectPoint[@1] = retp[1];
        out_IntersectPoint[@2] = retp[2];
        out_IntersectPoint[@3] = retp[3];
        return 2;
    }
    else
    {   
        // no intersection
        return 0;         
    }           
}
// they are not parallel
// compute intersect param
var sI = N / D;
if (sI < 0 || sI > 1)
{
    // no intersection
    return 0;
}
//compute intersection point;

var retp = tmc_vec3_add(p1[1],tmc_vec3_mult_r(u,sI));
//set in output
out_IntersectPoint[@1] = retp[1];
out_IntersectPoint[@2] = retp[2];
out_IntersectPoint[@3] = retp[3];
//success
return 1;