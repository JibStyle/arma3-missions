params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
[
    _newUnit,
    jib_menu_condition_admin,
    [
        "Mission Menu",
        [
            [
                "Tasks", "", "1", false,
                [
                    "Tasks",
                    [
                        [
                            "attack_done", "", "1", false,
                            [
                                "Confirm Attack Done?",
                                [
                                    [
                                        "attack_done", toString {
                                            attack_done = true;
                                            publicVariable "attack_done";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ],
                        [
                            "defend_done", "", "1", false,
                            [
                                "Confirm Defend Done?",
                                [
                                    [
                                        "defend_done", toString {
                                            defend_done = true;
                                            publicVariable "defend_done";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ],
            [
                "Emitters", "", "1", false,
                [
                    "Emitters",
                    [
                        [
                            "Spetsnaz Infantry", toString {
                                [my_e_o_inf] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Spetsnaz Airborne", toString {
                                [my_e_o_tra] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "LDF Infantry", toString {
                                [my_e_i_inf] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "LDF Motorized", toString {
                                [my_e_i_mot] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "LDF Mechanized", toString {
                                [my_e_i_mec] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "NATO Blackfoot", toString {
                                [my_e_b_air] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "NATO Ghosthawk", toString {
                                [my_e_b_tra_1] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "NATO Huron", toString {
                                [my_e_b_tra_2] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ]
        ]
    ]
] call jib_menu_dynamic_action;
