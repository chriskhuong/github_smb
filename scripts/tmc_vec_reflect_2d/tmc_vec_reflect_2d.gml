/// @description tmc_vec_reflect_2d(tmc_vec2 incident, tmc_vec2 reflect)
/// @param tmc_vec2 incident
/// @param  tmc_vec2 reflect
//returns the incident vector reflected by the normal specified
//incident is a tmc_vec indicating the direction of the thing that is to be reflected
//reflect is the (usually) normalized vector to reflect at, like the facing direction of a plane
// if the reflect is not normalized you may bounce off with more or less force
//reflection

//source: http://www.asawicki.info/news_1301_reflect_and_refract_functions.html

//return incidentVec - 2.f * Dot(incidentVec, normal) * normal;
    var incident = argument0;
    var normal = argument1;
    var dot2 = 2.0*tmc_vec2_dot(incident,normal);
    var ndot2 = tmc_vec2_mult_r(normal,dot2);
    return tmc_vec2_sub(incident,ndot2);