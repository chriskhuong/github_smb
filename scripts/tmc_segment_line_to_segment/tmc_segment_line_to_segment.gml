/// @description tmc_segment_line_to_segment(tmc_segment1,tmc_segment2)
/// @param tmc_segment1
/// @param tmc_segment2
//returns a line covering the shortest distance  
//from segment1 to segment2 
//you can convert to distance with tmc_segment_scalar
//the lines cannot be 0 lengths
//This function does allow getting more information in one go
//distance, intersection, placement of the intersection, placement of 
//the nearest position on bothe lines. this can be gotten in one call
var line1 = argument0;
var line2 = argument1;

    var EPS = 0.001;
    var delta21 = tmc_vect_sub(line1[2],line1[1]);
    var delta41 = tmc_vect_sub(line2[2],line2[1]);
    var delta13 = tmc_vect_sub(line1[1],line2[1]);
    var a = tmc_vect_dot(delta21, delta21);
    var b = tmc_vect_dot(delta21, delta41);
    var c = tmc_vect_dot(delta41, delta41);
    var d = tmc_vect_dot(delta21, delta13);
    var e = tmc_vect_dot(delta41, delta13);
    var D = a * c - b * b;
    var sc, sN, sD = D;
    var tc, tN, tD = D;
    if (D < EPS)
    {
        sN = 0.0;
        sD = 1.0;
        tN = e;
        tD = c;
    }
    else
    {
        sN = (b * e - c * d);
        tN = (a * e - b * d);
        if (sN < 0.0)
        {
            sN = 0.0;
            tN = e;
            tD = c;
        }
        else if (sN > sD)
        {
            sN = sD;
            tN = e + b;
            tD = c;
        }
    }
 
    if (tN < 0.0)
    {
        tN = 0.0;
 
        if (-d < 0.0)
            sN = 0.0;
        else if (-d > a)
            sN = sD;
        else
        {
            sN = -d;
            sD = a;
        }
    }
    else if (tN > tD)
    {
        tN = tD;
        if ((-d + b) < 0.0)
            sN = 0;
        else if ((-d + b) > a)
            sN = sD;
        else
        {
            sN = (-d + b);
            sD = a;
        }
    }
    //if ((abs(sN) < EPS)) sc = 0.0;
    //else sc = sN / (sD+(sD==0) * EPS);
    //if ((abs(tN) < EPS)) tc = 0.0;
    //else tc = tN / (tD+(tD==0) * EPS);
    if ((abs(sD) < EPS)) sc = 0.0;
    else sc = sN / (sD);
    if ((abs(tD) < EPS)) tc = 0.0;
    else tc = tN / (tD);
    //point dP = new point();
    //dP.x = delta13.x + (sc * delta21.x) - (tc * delta41.x);
    //dP.y = delta13.y + (sc * delta21.y) - (tc * delta41.y);
    //dP.z = delta13.z + (sc * delta21.z) - (tc * delta41.z);
    delta41 = tmc_vect_multr(delta41,tc);
    delta21 = tmc_vect_multr(delta21,sc);
    //delta21 = tmc_vect_sub(delta21,delta41);
    //var scalar = tmc_vect_rev (tmc_vect_add(delta13,delta21));
    var ln1 = tmc_vect_add(line1[1],delta21);
    var ln2 = tmc_vect_add(line2[1],delta41);
    //return Math.Sqrt(dot(dP, dP));
return tmc_segment(ln1,ln2);
/*
//src: https://www.john.geek.nz/2009/03/code-shortest-distance-between-any-two-line-segments/
double getShortestDistance(line line1, line line2)
{
    double EPS = 0.00000001;
 
    point delta21 = new point();
    delta21.x = line1.x2 - line1.x1;
    delta21.y = line1.y2 - line1.y1;
    delta21.x = line1.z2 - line1.z1;
 
    point delta41 = new point();
    delta41.x = line2.x2 - line2.x1;
    delta41.y = line2.y2 - line2.y1;
    delta41.z = line2.z2 - line2.z1;
 
    point delta13 = new point();
    delta13.x = line1.x1 - line2.x1;
    delta13.y = line1.y1 - line2.y1;
    delta13.z = line1.z1 - line2.z1;
 
    double a = dot(delta21, delta21);
    double b = dot(delta21, delta41);
    double c = dot(delta41, delta41);
    double d = dot(delta21, delta13);
    double e = dot(delta41, delta13);
    double D = a * c - b * b;
 
    double sc, sN, sD = D;
    double tc, tN, tD = D;
 
    if (D < EPS)
    {
        sN = 0.0;
        sD = 1.0;
        tN = e;
        tD = c;
    }
    else
    {
        sN = (b * e - c * d);
        tN = (a * e - b * d);
        if (sN < 0.0)
        {
            sN = 0.0;
            tN = e;
            tD = c;
        }
        else if (sN > sD)
        {
            sN = sD;
            tN = e + b;
            tD = c;
        }
    }
 
    if (tN < 0.0)
    {
        tN = 0.0;
 
        if (-d < 0.0)
            sN = 0.0;
        else if (-d > a)
            sN = sD;
        else
        {
            sN = -d;
            sD = a;
        }
    }
    else if (tN > tD)
    {
        tN = tD;
        if ((-d + b) < 0.0)
            sN = 0;
        else if ((-d + b) > a)
            sN = sD;
        else
        {
            sN = (-d + b);
            sD = a;
        }
    }
 
    if (Math.Abs(sN) < EPS) sc = 0.0;
    else sc = sN / sD;
    if (Math.Abs(tN) < EPS) tc = 0.0;
    else tc = tN / tD;
 
    point dP = new point();
    dP.x = delta13.x + (sc * delta21.x) - (tc * delta41.x);
    dP.y = delta13.y + (sc * delta21.y) - (tc * delta41.y);
    dP.z = delta13.z + (sc * delta21.z) - (tc * delta41.z);
 
    return Math.Sqrt(dot(dP, dP));
}
*/