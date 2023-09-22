params ["_player", "_oldUnit", "_respawn", "_respawnDelay"];

my_menu = {
    params ["_player"];
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
                //                 "Inf 1 Aware", toString {
                //                     [my_e_i_1_aware] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Inf 1 Stealth", toString {
                //                     [my_e_i_1_stealth] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Warbots 1", toString {
                //                     [my_e_war_1] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Inf 2 Aware", toString {
                //                     [my_e_i_2_aware] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Inf 2 Stealth", toString {
                //                     [my_e_i_2_stealth] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Warbots 2", toString {
                //                     [my_e_war_2] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Airborne", toString {
                //                     [my_e_o_tra] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
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

[_player] call my_menu;
