{
    "id": "3e92beb8-d683-4c83-a2cb-864387baea15",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "Input_Dog",
    "IncludedResources": [
        "Sprites\\inputdog\\sDogBark",
        "Sprites\\inputdog\\sDogGrowl",
        "Sprites\\inputdog\\sDogIdle",
        "Sprites\\inputdog\\sFatButton",
        "Sprites\\inputdog\\sThinButton",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_get_custom_controls_file.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_get_gamepad_input_down.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_load_custom_controls.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_load_default_gamepad_mapping.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_load_default_keyboard_mapping.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_save_custom_controls.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_file_load.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_file_save.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_get_input_string.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_start_playing.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_start_recording.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_stop_playing.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_stop_recording.gml",
        "Scripts\\inputdog\\_Input Manager\\inputdog_add_input",
        "Scripts\\inputdog\\_Input Manager\\inputdog_check_gamepad_input",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_empty_gamepad_slot",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_empty_joystick_slot",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_inputmanager_child_by_player",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_inputmanager_child_by_gamepad",
        "Scripts\\inputdog\\_Input Manager\\inputdog_get_gamepad_string",
        "Scripts\\inputdog\\_Input Manager\\inputdog_get_keyboard_string",
        "Scripts\\inputdog\\_Input Manager\\inputdog_is_slot_in_use",
        "Scripts\\inputdog\\_Input Manager\\inputdog_keyboard_check_direct",
        "Scripts\\inputdog\\_Input Manager\\inputdog_search_for_gamepads",
        "Scripts\\inputdog\\_Input Manager\\inputdog_search_for_joysticks",
        "Scripts\\inputdog\\_Input Manager\\inputdog_tween",
        "Scripts\\inputdog\\inputdog_analog",
        "Scripts\\inputdog\\inputdog_direction",
        "Scripts\\inputdog\\inputdog_down",
        "Scripts\\inputdog\\inputdog_pressed",
        "Scripts\\inputdog\\inputdog_released",
        "Scripts\\inputdog\\inputdog_set_rumble",
        "Fonts\\inputdog\\fButton",
        "Objects\\inputdog\\ClickableButtons\\ButtonParent",
        "Objects\\inputdog\\ClickableButtons\\GoToExampleRoom",
        "Objects\\inputdog\\ClickableButtons\\GoToInputRemapRoom",
        "Objects\\inputdog\\ClickableButtons\\LoadDefaultInputs",
        "Objects\\inputdog\\ClickableButtons\\SaveInputMapping",
        "Objects\\inputdog\\ClickableButtons\\SetInput",
        "Objects\\inputdog\\ClickableButtons\\StartStopRecording",
        "Objects\\inputdog\\ClickableButtons\\ToggleDirectInput",
        "Objects\\inputdog\\ExampleRoom\\ExampleDog",
        "Objects\\inputdog\\InputForPlayer1",
        "Objects\\inputdog\\InputForPlayer2",
        "Objects\\inputdog\\InputForPlayer3",
        "Objects\\inputdog\\InputForPlayer4",
        "Objects\\inputdog\\InputManager",
        "Objects\\inputdog\\InputRemappingManager",
        "Rooms\\inputdog\\rInitInputManager",
        "Rooms\\inputdog\\rExampleRoom",
        "Rooms\\inputdog\\rExampleInputRemapping"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2018-03-17 03:02:13",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "c9089bc0-2007-4565-bb81-e738a755afa0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "0c016492-fe86-4f54-9b06-6829239d1882",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_down",
                    "hidden": false,
                    "value": "101"
                },
                {
                    "id": "b16281b9-ff79-45ab-ac08-5da4d9bf216d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_left",
                    "hidden": false,
                    "value": "102"
                },
                {
                    "id": "a7c037ed-706f-4d95-b0f7-14174d74d54e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_right",
                    "hidden": false,
                    "value": "103"
                },
                {
                    "id": "f3240612-eb2f-4ead-adfd-eee3d1147c12",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_up",
                    "hidden": false,
                    "value": "104"
                },
                {
                    "id": "42efd815-43a5-46d0-858b-76b3d816e889",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_trigger",
                    "hidden": false,
                    "value": "105"
                },
                {
                    "id": "3553b242-e9c0-4476-ac03-4967e4bbf425",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_down",
                    "hidden": false,
                    "value": "106"
                },
                {
                    "id": "42920f12-07a0-4bf5-bcb0-2f00c41ac258",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_left",
                    "hidden": false,
                    "value": "107"
                },
                {
                    "id": "9fb64be3-986a-4d04-b054-81e51b582362",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_right",
                    "hidden": false,
                    "value": "108"
                },
                {
                    "id": "e02528ac-0b45-4428-bdd6-802cdf50842b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_up",
                    "hidden": false,
                    "value": "109"
                },
                {
                    "id": "1e9503d9-f6f5-431e-9424-2e70ab76d228",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_trigger",
                    "hidden": false,
                    "value": "110"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "inputdog.ext",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\inputdog.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": null,
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.messhof.inputDog",
    "productID": "1CC19BDD3FEBFF198B83FD01CF43599E",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": null,
    "tvosdelegatename": null,
    "tvosmaccompilerflags": null,
    "tvosmaclinkerflags": null,
    "tvosplistinject": null,
    "version": "1.2.0"
}