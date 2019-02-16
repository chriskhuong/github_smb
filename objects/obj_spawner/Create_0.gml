/// @description Insert description here
// You can write your code in this editor

// how many will spawn, this is used in the alarm event
enemiesNum = 100;
wave = 0;
dist = 1184;
once = false;
// how often they will spawn
spawnRate = room_speed * 60;
// trigger the alram to spawn the enemies the first time
//alarm[0] = spawnRate;