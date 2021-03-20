{
    "id": "e11b5806-0c5e-481d-b4fc-283b7c44f225",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "extRousrDissonance",
    "IncludedResources": [
        "Sprites\\bg",
        "Sprites\\sCheck",
        "Sprites\\sButton",
        "Sprites\\sPixel",
        "Scripts\\Dissonance\\rousr_dissonance_create",
        "Scripts\\Dissonance\\rousr_dissonance_dummy_function",
        "Scripts\\Dissonance\\rousr_dissonance_handler_on_ready",
        "Scripts\\Dissonance\\rousr_dissonance_handler_on_disconnected",
        "Scripts\\Dissonance\\rousr_dissonance_handler_on_error",
        "Scripts\\Dissonance\\rousr_dissonance_handler_on_join",
        "Scripts\\Dissonance\\rousr_dissonance_handler_on_spectate",
        "Scripts\\Dissonance\\rousr_dissonance_handler_on_join_request",
        "Scripts\\Dissonance\\rousr_dissonance_respond_to_join",
        "Scripts\\Dissonance\\rousr_dissonance_set_details",
        "Scripts\\Dissonance\\rousr_dissonance_set_large_image",
        "Scripts\\Dissonance\\rousr_dissonance_set_small_image",
        "Scripts\\Dissonance\\rousr_dissonance_set_timestamps",
        "Scripts\\Dissonance\\rousr_dissonance_set_state",
        "Scripts\\Dissonance\\rousr_dissonance_set_party",
        "Scripts\\Dissonance\\rousr_dissonance_set_join_secret",
        "Scripts\\Dissonance\\rousr_dissonance_set_spectate_secret",
        "Scripts\\Dissonance\\rousr_dissonance_set_match_secret",
        "Scripts\\Dissonance\\internal\\rousrDissonance_event_create",
        "Scripts\\Dissonance\\internal\\rousrDissonance_event_step",
        "Scripts\\Dissonance\\internal\\rousrDissonance_event_end_step",
        "Scripts\\Dissonance\\internal\\rousrDissonance_event_async_social",
        "Scripts\\Dissonance\\internal\\gmlscripts_unix_timestamp",
        "Scripts\\Example\\button_can_click",
        "Scripts\\Example\\example_click_accept",
        "Scripts\\Example\\example_click_ignore",
        "Scripts\\Example\\example_click_reject",
        "Scripts\\Example\\example_on_disconnected",
        "Scripts\\Example\\example_on_error",
        "Scripts\\Example\\example_on_join",
        "Scripts\\Example\\example_on_join_request",
        "Scripts\\Example\\example_on_ready",
        "Scripts\\Example\\example_on_spectate",
        "Scripts\\Example\\example_text_field",
        "Scripts\\Example\\example_toggle",
        "Scripts\\Example\\random_key",
        "Scripts\\ReadMe",
        "Fonts\\fnt_game",
        "Objects\\Dissonance\\rousrDissonance",
        "Objects\\Example\\Example",
        "Objects\\Example\\Button",
        "Objects\\Example\\CheckBox",
        "Objects\\Example\\TextField",
        "Objects\\Example\\logo",
        "Rooms\\rm_demo",
        "Included Files\\Example_Assets__App_Dashboard_\\dissonance_large.png",
        "Included Files\\Example_Assets__App_Dashboard_\\dissonance_small.png",
        "Included Files\\04b24.TTF",
        "Included Files\\README.md"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 105553859707074,
    "date": "2018-28-18 03:04:25",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "f9e161a2-63b5-4a4a-9caf-1e9d21ab5f46",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 105553859707074,
            "filename": "rousrDissonance.dll",
            "final": "discord_shutdown",
            "functions": [
                {
                    "id": "a8896f00-5ebe-46fa-9be0-09df8b54eb78",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "Init",
                    "help": "initialize Discord with the application ID and Steam ID (_application_id, [_steam_id])",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_init",
                    "returnType": 2
                },
                {
                    "id": "5121f76b-0f05-4839-8f32-aa99b91b321d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "UpdatePresence",
                    "help": "send the presences updates to Discord, call after sets.",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_update_presence",
                    "returnType": 2
                },
                {
                    "id": "60443498-882c-4f28-b2cd-867506d62444",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "RunCallbacks",
                    "help": "run any pending discord call backs - call once per step",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_run_callbacks",
                    "returnType": 2
                },
                {
                    "id": "b47ceaed-1d6e-473b-be3d-52179b27cb93",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "ResetPresence",
                    "help": "clears all presence data currently set this session",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_reset_presence",
                    "returnType": 2
                },
                {
                    "id": "24103b34-f93e-4f14-82ae-3a38d3cb7d05",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SetState",
                    "help": "set the state string (_state)",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_set_state",
                    "returnType": 2
                },
                {
                    "id": "e9dc5d5c-71aa-46ef-9ce1-a96beff2f2dd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SetDetails",
                    "help": "set the details string (_details)",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_set_details",
                    "returnType": 2
                },
                {
                    "id": "3907424a-0dd4-4c1f-80ae-ee5b3451009b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "SetTimeStamps",
                    "help": "set the start and end timestamp, in unix time format (_start_lo, _start_hi, _end_lo, _end_hi)",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_set_timestamps",
                    "returnType": 2
                },
                {
                    "id": "2134faca-b56b-4de9-8f36-20c5ee879abe",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "SetLargeImage",
                    "help": "set the large image detail and caption  (_large_image_key, _large_image_text)",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_set_large_image",
                    "returnType": 2
                },
                {
                    "id": "864df831-7fe5-4505-b5d8-c69a2282a72e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "SetSmallImage",
                    "help": "set the small image detail and caption (_small_image_key, _small_image_text)",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_set_small_image",
                    "returnType": 2
                },
                {
                    "id": "3ab92659-ed54-4d87-9483-00a5c7f7f409",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "SetPartyData",
                    "help": "set the party id and member count data (_party_id, _party_count, _party_max)",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_set_party",
                    "returnType": 2
                },
                {
                    "id": "c9192d27-42be-4647-9d94-330c9a5665e1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "SetMatchSecret",
                    "help": "set the match secret, and whether or not the match represents a finite \"match\" (_match_secret, _instance)",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_set_match_secret",
                    "returnType": 2
                },
                {
                    "id": "1125f54a-1cd6-4ada-9852-f8e3272297a4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SetJoinSecret",
                    "help": "set the unique, encrypted join secret token (_join_secret)",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_set_join_secret",
                    "returnType": 2
                },
                {
                    "id": "302ed3c9-eadb-4c96-9067-6be80eb75423",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SetSpectateSecret",
                    "help": "set the unique, encrypted spectate secret token (_spectate_secret)",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_set_spectate_secret",
                    "returnType": 2
                },
                {
                    "id": "cbd401d1-db0e-4f93-96b2-ca15f6087638",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "Respond",
                    "help": "send a reply to `ask to join` request (_user_id, _reply)",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_respond",
                    "returnType": 2
                },
                {
                    "id": "ecd6b235-ff2b-422e-a903-b5310b8f9daa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "externalName": "RegisterCallbacks",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "RegisterCallbacks",
                    "returnType": 2
                },
                {
                    "id": "c06d1e03-ead7-40bc-bf0c-13808c1bf2d7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Shutdown",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "discord_shutdown",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\rousrDissonance.dll",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
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
    "packageID": "com.rousr.dissonance",
    "productID": "1E83191CE77E300EE0DC1270C217654D",
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
    "version": "1.0.3"
}