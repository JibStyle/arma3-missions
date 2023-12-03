params ["_player", "_didJIP"];

terminate (missionNamespace getVariable ["my_mission_status", scriptNull]);
missionNamespace setVariable [
    "my_mission_status",
    [] spawn {
        scriptName "my_mission_status";
        [] call BIS_fnc_showMissionStatus;
        while {true} do {
            waitUntil {uiSleep 0.5; !isNull findDisplay 312;};
            waitUntil {uiSleep 0.5; isNull findDisplay 312;};
            [] call BIS_fnc_showMissionStatus;
        };
    }
];

terminate (missionNamespace getVariable ["my_disable_hud", scriptNull]);
missionNamespace setVariable [
    "my_disable_hud",
    [] spawn {
        scriptName "My Disable HUD";
        while {true} do {
            uiSleep 1;
            showHUD [
                true, // scriptedHUD
                true, // info
                true, // radar
                true, // compass
                true, // direction
                true, // menu
                true, // group
                true, // cursors
                true, // panels
                false, // kills
                false  // showIcon3D
            ];
            showScoretable 0;
        };
    }
];

my_menu_setup = {
    params ["_player"];
    waitUntil {alive _player};
    [
        _player,
        jib_menu_condition_admin,
        [
            "Mission Menu",
            [
                // [
                //     "Emitters", "", "1", false,
                //     [
                //         "Emitters",
                //         [
                //             [
                //                 "Air", toString {
                //                     [my_e_o_air] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ]
                //         ]
                //     ]
                // ],
                [
                    "Difficulty", "", "1", false,
                    [
                        "Difficulty",
                        [
                            [
                                "Off", toString {
                                    [] remoteExec ["my_flex_off", 2];
                                }, "1"
                            ],
                            [
                                "Easy", toString {
                                    [] remoteExec ["my_flex_easy", 2];
                                }, "1"
                            ],
                            [
                                "Normal", toString {
                                    [] remoteExec ["my_flex_normal", 2];
                                }, "1"
                            ],
                            [
                                "Hard", toString {
                                    [] remoteExec ["my_flex_hard", 2];
                                }, "1"
                            ],
                            [
                                "Custom", toString {
                                    [] remoteExec ["my_flex_custom", 2];
                                }, "1"
                            ]
                        ]
                    ]
                ],
                [
                    "Tasks", "", "1", false,
                    [
                        "Tasks",
                        [
                            [
                                "Done Setup", "", "1", false,
                                [
                                    "Confirm Done Setup?",
                                    [
                                        [
                                            "Done Setup", toString {
                                                done_setup = true;
                                                publicVariable "done_setup";
                                            }, "1"
                                        ]
                                    ]
                                ]
                            ],
                            [
                                "Done Defense", "", "1", false,
                                [
                                    "Confirm Done Defense?",
                                    [
                                        [
                                            "Done Defense", toString {
                                                done_defense = true;
                                                publicVariable "done_defend";
                                            }, "1"
                                        ]
                                    ]
                                ]
                            ],
                            [
                                "Mission Success", "", "1", false,
                                [
                                    "Confirm Mission Success?",
                                    [
                                        [
                                            "Mission Success", toString {
                                                ["End1"] remoteExec [
                                                    "BIS_fnc_endMission"
                                                ];
                                            }, "1"
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ] call jib_menu_dynamic_action;
};

// BUG: Sometimes not work
terminate (missionNamespace getVariable ["my_menu_player", scriptNull]);
missionNamespace setVariable [
    "my_menu_player",
    [] spawn {
        scriptName "my_menu_player";
        my_menu_player_object = objNull;
        while {true} do {
            uiSleep 1;
            if (my_menu_player_object != player) then {
                my_menu_player_object = player;
                [my_menu_player_object] call my_menu_setup;
            };
        };
    }
];

player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Alpha: Infantry squad.<br/>
- Bravo: Infantry squad.<br/>
- Warpig: M113A3"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Load into vehicles.<br/>
2. Move to Checkpoint Zulu.<br/>
3. Defend Checkpoint Zulu."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Move to Checkpoint Zulu and defend it from being overrun."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "The Soviets have launched a surprise attack on the Flughafen airfield, which is a key location of a US shipment of nuclear missiles. Friendly forces to the south at Checkpoints Yankee and Zulu are in fierce combat and in danger of being overrun. Soviet infantry and light vehicles are advancing from the south. Your objective is to move to Checkpoint Zulu and defend it at all costs. If we lose the airfield, this could end the war before it even starts."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3";

[{
    params ["_unit", "_object", "_cost"];
    isTouchingGround _object;
}] call ace_fortify_fnc_addDeployHandler;
