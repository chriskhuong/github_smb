// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -5000; // obj_StartPointglobal.__objectDepths[1] = 0; // obj_tempBulletglobal.__objectDepths[2] = -1000; // obj_sniperBulletglobal.__objectDepths[3] = -5000; // obj_EndPointglobal.__objectDepths[4] = 0; // obj_tempBetterEnemyglobal.__objectDepths[5] = 0; // obj_tempEnemyglobal.__objectDepths[6] = 0; // obj_damageglobal.__objectDepths[7] = 0; // obj_tempBoomglobal.__objectDepths[8] = 0; // obj_exprglobal.__objectDepths[9] = 0; // obj_doorglobal.__objectDepths[10] = 0; // obj_gun_01global.__objectDepths[11] = 0; // obj_tempBossglobal.__objectDepths[12] = 0; // obj_signglobal.__objectDepths[13] = 0; // obj_tempGunglobal.__objectDepths[14] = 0; // obj_targetglobal.__objectDepths[15] = 0; // obj_boss_Jerryglobal.__objectDepths[16] = 0; // obj_shieldglobal.__objectDepths[17] = 0; // obj_tempPlayerglobal.__objectDepths[18] = 0; // obj_teatimeglobal.__objectDepths[19] = 0; // obj_gun_02global.__objectDepths[20] = 0; // obj_speakerglobal.__objectDepths[21] = 0; // obj_grenadeglobal.__objectDepths[22] = 0; // obj_pause_menuglobal.__objectDepths[23] = -10000000; // obj_dialogglobal.__objectDepths[24] = 0; // obj_inputglobal.__objectDepths[25] = 0; // obj_lifeFormParentglobal.__objectDepths[26] = 0; // obj_spawnZoneglobal.__objectDepths[27] = 0; // obj_playerStatsglobal.__objectDepths[28] = 0; // obj_playerParentglobal.__objectDepths[29] = 0; // obj_enemyParentglobal.__objectDepths[30] = 0; // obj_resolutionManagerglobal.__objectDepths[31] = 0; // obj_particle_controllerglobal.__objectDepths[32] = -100000000; // obj_game_cameraglobal.__objectDepths[33] = 0; // obj_wallglobal.__objectDepths[34] = -5000000; // obj_Traceglobal.__objectDepths[35] = 0; // obj_dashEffectglobal.__objectDepths[36] = 0; // obj_playerglobal.__objectDepths[37] = 0; // obj_tempWallglobal.__objectDepths[38] = 0; // obj_shotglobal.__objectDepths[39] = 0; // obj_view

global.__objectNames[0] = "obj_StartPoint";global.__objectNames[1] = "obj_tempBullet";global.__objectNames[2] = "obj_sniperBullet";global.__objectNames[3] = "obj_EndPoint";global.__objectNames[4] = "obj_tempBetterEnemy";global.__objectNames[5] = "obj_tempEnemy";global.__objectNames[6] = "obj_damage";global.__objectNames[7] = "obj_tempBoom";global.__objectNames[8] = "obj_expr";global.__objectNames[9] = "obj_door";global.__objectNames[10] = "obj_gun_01";global.__objectNames[11] = "obj_tempBoss";global.__objectNames[12] = "obj_sign";global.__objectNames[13] = "obj_tempGun";global.__objectNames[14] = "obj_target";global.__objectNames[15] = "obj_boss_Jerry";global.__objectNames[16] = "obj_shield";global.__objectNames[17] = "obj_tempPlayer";global.__objectNames[18] = "obj_teatime";global.__objectNames[19] = "obj_gun_02";global.__objectNames[20] = "obj_speaker";global.__objectNames[21] = "obj_grenade";global.__objectNames[22] = "obj_pause_menu";global.__objectNames[23] = "obj_dialog";global.__objectNames[24] = "obj_input";global.__objectNames[25] = "obj_lifeFormParent";global.__objectNames[26] = "obj_spawnZone";global.__objectNames[27] = "obj_playerStats";global.__objectNames[28] = "obj_playerParent";global.__objectNames[29] = "obj_enemyParent";global.__objectNames[30] = "obj_resolutionManager";global.__objectNames[31] = "obj_particle_controller";global.__objectNames[32] = "obj_game_camera";global.__objectNames[33] = "obj_wall";global.__objectNames[34] = "obj_Trace";global.__objectNames[35] = "obj_dashEffect";global.__objectNames[36] = "obj_player";global.__objectNames[37] = "obj_tempWall";global.__objectNames[38] = "obj_shot";global.__objectNames[39] = "obj_view";

global.__objectDepths[40] = 0; // GoToExampleRoom
global.__objectDepths[41] = 0; // GoToInputRemapRoom
global.__objectDepths[42] = 0; // ButtonParent
global.__objectDepths[43] = 0; // SaveInputMapping
global.__objectDepths[44] = 0; // SetInput
global.__objectDepths[45] = 0; // ToggleDirectInput
global.__objectDepths[46] = 0; // InputForPlayer1
global.__objectDepths[47] = 0; // InputForPlayer2
global.__objectDepths[48] = 0; // StartStopRecording
global.__objectDepths[49] = 0; // ExampleDog
global.__objectDepths[50] = 0; // LoadDefaultInputs
global.__objectDepths[51] = 0; // InputForPlayer3
global.__objectDepths[52] = 0; // InputForPlayer4
global.__objectDepths[53] = 0; // InputRemappingManager
global.__objectDepths[54] = 0; // InputManager


global.__objectNames[40] = "GoToExampleRoom";
global.__objectNames[41] = "GoToInputRemapRoom";
global.__objectNames[42] = "ButtonParent";
global.__objectNames[43] = "SaveInputMapping";
global.__objectNames[44] = "SetInput";
global.__objectNames[45] = "ToggleDirectInput";
global.__objectNames[46] = "InputForPlayer1";
global.__objectNames[47] = "InputForPlayer2";
global.__objectNames[48] = "StartStopRecording";
global.__objectNames[49] = "ExampleDog";
global.__objectNames[50] = "LoadDefaultInputs";
global.__objectNames[51] = "InputForPlayer3";
global.__objectNames[52] = "InputForPlayer4";
global.__objectNames[53] = "InputRemappingManager";
global.__objectNames[54] = "InputManager";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for