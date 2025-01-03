params ["_player", "_didJIP"];

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
                                "Start Convoy", "", "1", false,
                                [
                                    "Confirm Start Convoy?",
                                    [
                                        [
                                            "Start Convoy", toString {
                                                done_setup = true;
                                                publicVariable "done_setup";
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
                            ],
                            [
                                "Mission Failed", "", "1", false,
                                [
                                    "Confirm Mission Failed?",
                                    [
                                        [
                                            "Mission Failed", toString {
                                                ["", false] remoteExec [
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

addMissionEventHandler ["TeamSwitch", {
    params ["_previousUnit", "_newUnit"];
    [_newUnit] call my_menu_setup;
}];
[_player] call my_menu_setup;

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
