/// @description tmc_pill_character_collision(tmc_pill, tmc_shape_list)
/// @param tmc_pill
/// @param  tmc_shape_list
/*
**  Performs the collision handling for a character
**
**  instance variables required:
**    As Input:
**    hspeed,vspeed     - used to figure out the bounce factor
**    x,y               - used to firure out the position
**    tmc_restitution   - The bounce factor 
**                      set to 0 to 1 for no bounce to full bounce
**    tmc_floor_incline - The angle range that define a floor
**                      for example, 45 would define a floor from 0 degrees 
**                      to +- 45 degrees inclination
**                      a floor is a line the goes towards the right (0 deg) +- incline
**    tmc_ceiling_incline - The angle range that define a ceiling
**                      for example, 45 would define a ceiling from 180 degrees 
**                      to +- 45 degrees inclination
**                      a ceiling is a line the goes towards the left (180 deg) +- incline
**    tmc_right_wall_incline - The angle range that define a right wall
**                      for example, 10 would define a right wall from 90 degrees
**                      to +- 10 degrees inclination
**                      a right wall is a line the goes upward (90 deg) +- incline
**    tmc_left_wall_incline - The angle range that define a left wall
**                      for example, 10 would define a right wall from 270 degrees
**                      to +- 10 degrees inclination
**                      a left wall is a line the goes downward (90 deg) +- incline
**
**    As output:
**    hspeed,vspeed     - modified to bounce the character
**    x,y               - modified to reposition the character, move outside collision
**    tmc_is_floor      - set to true ifa floor is touching character, use it to figure out if
**                      the character is on the ground
**    tmc_floor_a       - set to the angle of the floor found, use it to change the
**                      movement direction, though the sensor version way be more 
**                      useful for adjusting to downward slope
**    tmc_is_ceiling    - set to true if a ceiling touching character, use it to figure out if
**                      the character is touching a ceiling, say to squash the 
**                      character if is floor and is ceiling
**    tmc_ceiling_a     - set to the angle of the ceiling, not sure of the 
**                      use but it's there
**    tmc_is_right_wall - set to true is a wall on the right is touching character, use it 
**                      to figure out if the character is touching a right wall, say to set the hspeed to 0
**    tmc_right_wall_a  - set to the angle of the wall found, not sure of the 
**                      use but it's there
**    tmc_is_left_wall  - set to true is a wall on the left is touching character, use it 
**                      to figure out if the character is hitting a left wall to set the hspeed to 0
**    tmc_left_wall_a   - set to the angle of the wall found, not sure of the 
**                      use but it's there
**    tmc_sensor_is_floor - set to true if a floor was detected, use it to figure out if
**                      the character is near the ground
**    tmc_sensor_floor_a - set to the angle of the floor found, use it to change the
**                      movement direction, useful for adjusting to downward slope
**    tmc_sensor_is_ceiling - set to true if a ceiling was detected, use it to figure out if
**                      the character is near a ceiling, say to prevent standing up when crouching
**    tmc_sensor_ceiling_a - set to the angle of the ceiling found, not sure of the 
**                      use but it's there
**    tmc_sensor_is_right_wall - set to true is a wall on the right was detected, use it 
**                      to figure out if the character is near a right wall
**    tmc_sensor_right_wall_a - set to the angle of the wall found, not sure of the 
**                      use but it's there
**    tmc_sensor_is_left_wall - set to true is a wall on the left was detected, use it 
**                      to figure out if the character is near a left wall
**    tmc_sensor_left_wall_a - set to the angle of the wall found, not sure of the 
**                      use but it's there
*/
tmc_is_floor = 0;
tmc_floor_a = 0;
tmc_is_ceiling = 0;
tmc_ceiling_a = 0;
tmc_is_right_wall = 0;
tmc_right_wall_a = 0;
tmc_is_left_wall = 0;
tmc_left_wall_a = 0;

tmc_sensor_is_floor = 0;
tmc_sensor_floor_a = 0;
tmc_sensor_is_ceiling = 0;
tmc_sensor_ceiling_a = 0;
tmc_sensor_is_right_wall = 0;
tmc_sensor_right_wall_a = 0;
tmc_sensor_is_left_wall = 0;
tmc_sensor_left_wall_a = 0;

var pill = argument0;
var shapes = argument1;
var pill_sens_extent = tmc_pill_get_extent_sensor(pill,x,y);
var pill_segment = tmc_pill_get_world_segment(pill,x,y);
var pill_segment_prev = tmc_pill_get_world_segment(pill,xprevious,yprevious);

var pill_sensorR = pill[2];
var pill_colR = pill[1];

var shapeat;
var shapect = tmc_shape_list_size(shapes);
var shape;
var segmentct = 0;
var segmentat;
var segment;
var segments;
var extent;
var p1,p2,p_pill;
var sensor_segment,do_move;
var dist,seg_dir,assigned,dist_prev;
var col_scalar,reflect,col_scalar,dev_norm,sensor_dir;
var hs = 0;
var vs = 0;
var sct=0;
var dct = 0;
var sensor_floor_scalar = tmc_vect2(0,0);
var segment_scalar;
for(shapeat = 0; shapeat<shapect; shapeat++)
{
    shape = shapes[|shapeat];
    segments = shape[0];
    extent = shape[1];
    if(tmc_segment_aabb(extent,pill_sens_extent))
    {
     
        segmentct = tmc_segment_list_size(segments);
        for(segmentat = 0;segmentat<segmentct;segmentat++)
        {
            segment = segments[|segmentat];
            
            sensor_segment = tmc_segment_line_to_segment(segment,pill_segment);
            p1 = segment[1];
            p2 = segment[2];
            p_pill = sensor_segment[2];
            if(tmc_vect_is_clockwise(p2,p1,p_pill)==1)
            {
                dist_prev = tmc_segment_distance_to_segment(segment,pill_segment_prev);
                col_scalar = tmc_segment_scalar(sensor_segment);
                dist = tmc_vect_len(col_scalar)
                //dist = tmc_segment_len(sensor_segment);
                
               
                if(dist_prev>=dist)
                {
                        
                    if(dist<=pill_sensorR)
                    {
                        assigned = 0;
                        
                        sensor_dir=round(tmc_segment_dir2d(sensor_segment)/5) * 5;
                        seg_dir = tmc_segment_dir2d(segment);
                        segment_scalar = tmc_segment_scalar(segment);
                        //seg_dir = sensor_dir -90;
                        //if(tmc_sensor_is_floor == 0)
                        {
                            dct = (ceil(abs(angle_difference(90,sensor_dir)))<=tmc_floor_incline);
                            if(dct)
                            {
                                tmc_sensor_is_floor++;
                            
                                tmc_sensor_floor_a = seg_dir;
                                sensor_floor_scalar = tmc_vect_add(sensor_floor_scalar,segment_scalar)
                                assigned = 1;
                            }
                        }   
                        if(!assigned)
                        {
                            if(tmc_sensor_is_ceiling == 0)
                            {
                                tmc_sensor_is_ceiling = (abs(angle_difference(270,sensor_dir))<=tmc_ceiling_incline);
                                if(tmc_sensor_is_ceiling)
                                {
                                    tmc_sensor_ceiling_a = seg_dir;
                                    assigned = 2;
                                }
                            }   
                        }
                        if(!assigned)
                        {
                            if(tmc_sensor_is_right_wall == 0)
                            {
                                tmc_sensor_is_right_wall = (abs(angle_difference(180,sensor_dir))<=tmc_right_wall_incline);
                                if(tmc_sensor_is_right_wall)
                                {
                                    tmc_sensor_right_wall_a = seg_dir;
                                    assigned = 3;
                                }
                            }   
                        }
                        if(!assigned)
                        {
                            if(tmc_sensor_is_left_wall == 0)
                            {
                                tmc_sensor_is_left_wall = (abs(angle_difference(0,sensor_dir))<=tmc_left_wall_incline);
                                if(tmc_sensor_is_left_wall)
                                {
                                    tmc_sensor_left_wall_a = seg_dir;
                                    assigned = 4;
                                }
                            }   
                        }
                        
                        //draw_circle(p_pill[1],p_pill[2],10,0)
                        //tmc_segment_debug_draw_line(sensor_segment)
                        //tmc_segment_debug_draw_line(sensor_segment)
                        if(dist<=pill_colR)
                        {
                            do_move = 1;
                            switch(assigned)
                            {
                                case 1:
                                    tmc_is_floor = tmc_sensor_is_floor;
                                    tmc_floor_a = tmc_sensor_floor_a;
                                    do_move = 1;//vspeed>0
                                    break;
                                case 2:
                                    tmc_is_ceiling = tmc_sensor_is_ceiling;
                                    tmc_ceiling_a = tmc_sensor_ceiling_a;
                                    do_move = 1;//vspeed<0
                                    break;
                                case 3:
                                    tmc_is_right_wall = tmc_sensor_is_right_wall;
                                    tmc_right_wall_a = tmc_sensor_right_wall_a;
                                    do_move = 1;//hspeed>0
                                    break;
                                case 4:
                                    tmc_is_left_wall = tmc_sensor_is_left_wall;
                                    tmc_left_wall_a = tmc_sensor_left_wall_a;
                                    do_move = 1;//hspeed<0
                                    break;
    
                            }
                            if(do_move)
                            {
                                
                                dev_norm = tmc_vect_norm(col_scalar);
                                
                                //dev_norm = tmc_vect_rot2d( tmc_vect2(0,-1),seg_dir)
                                //dev_norm = tmc_vect_rot2d( tmc_vect2(1,0),sensor_dir)
                                deviation = tmc_vect_multr(dev_norm,dist-pill_colR);
                                line_coord = sensor_segment[1];
                                x-=deviation[1];
                                y-=deviation[2];
                                reflect = tmc_vect_bounce(tmc_vect2(hspeed,vspeed),dev_norm,tmc_restitution)
                                hs += reflect[1];
                                vs += reflect[2];
                                sct+=1;
                                pill_sens_extent = tmc_pill_get_extent_sensor(pill,x,y);
                                pill_segment = tmc_pill_get_world_segment(pill,x,y);
                                
                            }
                        }
                    }
                }
            }
        }
    }
}
if(sct)
{
    hspeed = hs/sct;
    vspeed = vs/sct;
}
if(tmc_sensor_is_floor)
{   
    tmc_sensor_floor_a = tmc_vect_dir2d( sensor_floor_scalar);
}