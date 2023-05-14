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
                            "Land Done", "", "1", false,
                            [
                                "Confirm Land Done?",
                                [
                                    [
                                        "Land Done", toString {
                                            land_done = true;
                                            publicVariable "land_done";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ],
                        [
                            "Meet Done", "", "1", false,
                            [
                                "Confirm Meet Done?",
                                [
                                    [
                                        "Meet Done", toString {
                                            meet_done = true;
                                            publicVariable "meet_done";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ],
                        [
                            "Attack Done", "", "1", false,
                            [
                                "Confirm Attack Done?",
                                [
                                    [
                                        "Attack Done", toString {
                                            attack_done = true;
                                            publicVariable "attack_done";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ],
                        [
                            "Mission Done", "", "1", false,
                            [
                                "Confirm Mission Done?",
                                [
                                    [
                                        "Mission Done", toString {
                                            mission_done = true;
                                            publicVariable "mission_done";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ],
            [
                "Emitters BLU Infantry", "", "1", false,
                [
                    "Emitters BLU Infantry",
                    [
                        [
                            "BLU Infantry 1", toString {
                                [my_e_b_inf_1] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "BLU Civilians 1 Left", toString {
                                [my_e_b_civ_1] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "BLU Civilians 1 Right", toString {
                                [my_e_b_civ_2] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "BLU Infantry 2", toString {
                                [my_e_b_inf_2] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "BLU Civilians 2 Right", toString {
                                [my_e_b_civ_3] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "BLU Civilians 2 Left", toString {
                                [my_e_b_civ_4] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ],
            [
                "Emitters BLU Vehicles", "", "1", false,
                [
                    "Emitters BLU Vehicles",
                    [
                        [
                            "Warthog MG", toString {
                                [my_e_b_mot_mg] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Warthog Rocket", toString {
                                [my_e_b_mot_rocket] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Warthog Guass", toString {
                                [my_e_b_mot_guass] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Warthog Transport", toString {
                                [my_e_b_mot_tra] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Scorpion", toString {
                                [my_e_b_arm] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Sparrowhawk", toString {
                                [my_e_b_air] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Pelican 1", toString {
                                [my_e_b_tra_1] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Pelican 2", toString {
                                [my_e_b_tra_2] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ],
            [
                "Emitters OPF Infantry", "", "1", false,
                [
                    "Emitters OPF Infantry",
                    [
                        [
                            "OPF Infantry 1", toString {
                                [my_e_o_inf_1] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "OPF Infantry 2", toString {
                                [my_e_o_inf_2] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "OPF Spec Ops", toString {
                                [my_e_o_spec] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "OPF Hunters", toString {
                                [my_e_o_inf_hunter] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ],
            [
                "Emitters OPF Vehicles", "", "1", false,
                [
                    "Emitters OPF Vehicles",
                    [
                        [
                            "Ghost", toString {
                                [my_e_o_mot] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Spectre", toString {
                                [my_e_o_mec] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Wraith", toString {
                                [my_e_o_arm] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Banshee", toString {
                                [my_e_o_air] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Spirit 1", toString {
                                [my_e_o_tra_1] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Spirit 2", toString {
                                [my_e_o_tra_2] remoteExec [
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
