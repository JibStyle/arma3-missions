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
                // [
                //     "Difficulty", "", "1", false,
                //     [
                //         "Difficulty",
                //         [
                //             [
                //                 "Off", toString {
                //                     [] remoteExec ["my_flex_off", 2];
                //                 }, "1"
                //             ],
                //             [
                //                 "Easy", toString {
                //                     [] remoteExec ["my_flex_easy", 2];
                //                 }, "1"
                //             ],
                //             [
                //                 "Normal", toString {
                //                     [] remoteExec ["my_flex_normal", 2];
                //                 }, "1"
                //             ],
                //             [
                //                 "Hard", toString {
                //                     [] remoteExec ["my_flex_hard", 2];
                //                 }, "1"
                //             ],
                //             [
                //                 "Custom", toString {
                //                     [] remoteExec ["my_flex_custom", 2];
                //                 }, "1"
                //             ]
                //         ]
                //     ]
                // ],
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
        "- Alpha: Infantry squad.<br/>
- Bravo: Infantry squad."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Travel to the Fuel Depot.<br/>
2. Assault the Depot.<br/>
3. RTB with the Fuel Truck."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Assault the Fuel Depot, eliminate the threats, and RTB with the fuel truck."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Our Spetsnaz section is tasked with assaulting a guerrilla held compound, which also houses a few US troops. We are to extract a fuel truck and return it to our nearby staging location in Woltersburg. This will limit the local guerrilla resistance capabilities."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3";
