params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
[
    _newUnit,
    jib_menu_condition_admin,
    [
        "Mission Menu",
        [
            [
                "Emitters", "", "1", false,
                [
                    "Emitters",
                    [
                        [
                            "B Inf", toString {
                                [my_e_b_inf] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "B Mot", toString {
                                [my_e_b_mot] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "B Tra", toString {
                                [my_e_b_tra] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "B Air", toString {
                                [my_e_b_air] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "I Inf", toString {
                                [my_e_i_inf] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "I Mot", toString {
                                [my_e_i_mot] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "I Tra", toString {
                                [my_e_i_tra] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "I Air", toString {
                                [my_e_i_air] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                        // [
                        //     "O Inf", toString {
                        //         [my_e_o_inf] remoteExec [
                        //             "jib_emitter_single", 2
                        //         ];
                        //     }, "1", true
                        // ],
                        // [
                        //     "O Mot", toString {
                        //         [my_e_o_mot] remoteExec [
                        //             "jib_emitter_single", 2
                        //         ];
                        //     }, "1", true
                        // ],
                        // [
                        //     "RU Inf", toString {
                        //         [my_e_o_inf_1] remoteExec [
                        //             "jib_emitter_single", 2
                        //         ];
                        //     }, "1", true
                        // ],
                        // [
                        //     "RU Tra", toString {
                        //         [my_e_o_tra_1] remoteExec [
                        //             "jib_emitter_single", 2
                        //         ];
                        //     }, "1", true
                        // ]
                    ]
                ]
            ]
        ]
    ]
] call jib_menu_dynamic_action;
