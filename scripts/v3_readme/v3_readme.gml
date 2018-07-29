/*
Version 3 changes a few things:
-uses tmc_vecN as opposed to tmc_vectN, the extra t was annoying me
-uses dedicated vec2, vec3, vec4 functions to streamline the math
-but limits the ability of allowing vector mismatch, that is in most 
   cases the first argument in most functions define the number of elements
   expected to perform the math on... in most cases the second vector must be 
   of equal or larger component count. 
   eg 
       tmc_vec2_add(AVec2, AVec2 or 3 or 4);
       tmc_vec3_add(AVec3, AVec3 or 4);
-In this way the min(vectsizeV1,veectizeV2) and the for loop is removed
-whenever possible, I abstained creating interim variables which may make the code 
  less readable but you same on instuctions count. 
  refer to the original tmc_vect() functions for clarity
-The new version also changes the extra elements version 2 introduced...
   version 2 forced 4 elements (x,y,z,a) + 1 extra data.
   this new version only allocates the elements required... 
      x,y... x,y,z... x,y,z,a...
   and any extra data data will be tacked on to the end; 
   growing the array as needed. whuich means the extra data
   on a vec3 is not at the same location as on a vec3
   and the eaxtra data element may not be present untion you add it
-The vec and the vect functions should remain interchangeable with the elements
  held in both vec and vect aside the extra data part, I have kept the first 
  array element[0] as the vector type (2,3,4) and the x,y,z,a as [1][2][3][4] 
  weighing in the cost of having to change your code vs the runtime cost 
  of an extra value setting at creation... I think this is the best of both worlds
-I added many variants of each function, some use the passed vector and input/output
  so that you dont need to have instances of vectors needlesly created
-I have painstakingly coded every function and their numerous variants for each 
  vector type to use the math as is, taking no shortcut, duplicating the math 
  all over the place in order to provide the most streamlined efficient interface 
  possible
*/
x=x;