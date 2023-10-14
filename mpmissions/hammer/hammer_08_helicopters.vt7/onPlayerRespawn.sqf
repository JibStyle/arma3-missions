params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_newUnit setPosATL [2886.8,3927.78,36.0832];

[
    _newUnit,
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
            //                 "B Inf", toString {
            //                     [my_e_b_inf] remoteExec [
            //                         "jib_emitter_single", 2
            //                     ];
            //                 }, "1", true
            //             ],
            //             [
            //                 "B Mech", toString {
            //                     [my_e_b_mec] remoteExec [
            //                         "jib_emitter_single", 2
            //                     ];
            //                 }, "1", true
            //             ],
            //             [
            //                 "B Armor", toString {
            //                     [my_e_b_arm] remoteExec [
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
