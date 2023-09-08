params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

[
    _newUnit,
    jib_menu_condition_admin,
    [
        "Mission Menu",
        [
            [
                "Emitters OPF Inf", "", "1", false,
                [
                    "Emitters OPF Inf",
                    [
                        [
                            "Grunts", toString {
                                [my_e_o_grunt] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Mixed", toString {
                                [my_e_o_mixed] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Spec Ops", toString {
                                [my_e_o_spec] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Command", toString {
                                [my_e_o_command] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Hunters", toString {
                                [my_e_o_hunter] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ],
            [
                "Emitters OPF Mot", "", "1", false,
                [
                    "Emitters OPF Mot",
                    [
                        [
                            "Ghost", toString {
                                [my_e_o_ghost] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Ghost Needler", toString {
                                [my_e_o_ghost_needle] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Spectre", toString {
                                [my_e_o_spectre] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Banshee", toString {
                                [my_e_o_banshee] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ],
            [
                "Emitters OPF Transport", "", "1", false,
                [
                    "Emitters OPF Transport",
                    [
                        [
                            "Grunts (broken)", toString {
                                [my_e_o_tra_grunt] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Mixed", toString {
                                [my_e_o_tra_mixed] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Spec Ops", toString {
                                [my_e_o_tra_spec] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Command", toString {
                                [my_e_o_tra_command] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
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
                                                "BIS_fnc_endMission", 0, true
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
