params ["_player", "_didJIP"];

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
        "- Assassin: Infantry squad.<br/>
- Big Bird: Huey 1.<br/>
- Flying Squirrel: Huey 2."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Fly in Hueys to the AO.<br/>
2. Land at Rebel Field HQ.<br/>
3. Assault Soviet held Hardware Facility."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Assault the hardware facility, kill the Soviet officer, and secure the intel."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "A Soviet convoy have holed up in an abandoned hardware facility after a firefight with our Rebel allies. We have good intel that inside the facility is a high ranking Russian officer with documents that Command wants. Two birds and one stone boys, the Rebels don't have the assets to assault the compound, we do."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3";
