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
                            "AO 1 Done", "", "1", false,
                            [
                                "Confirm AO 1 Done?",
                                [
                                    [
                                        "AO 1 Done", toString {
                                            ao1_done = true;
                                            publicVariable "ao1_done";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ],
                        [
                            "AO 2 Done", "", "1", false,
                            [
                                "Confirm AO 2 Done?",
                                [
                                    [
                                        "AO 2 Done", toString {
                                            ao2_done = true;
                                            publicVariable "ao2_done";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ],
                        [
                            "AO 3 Done", "", "1", false,
                            [
                                "Confirm AO 3 Done?",
                                [
                                    [
                                        "AO 3 Done", toString {
                                            ao3_done = true;
                                            publicVariable "ao3_done";
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
                "Emitters AO 1", "", "1", false,
                [
                    "Emitters AO 1",
                    [
                        [
                            "BLU Pelican", toString {
                                [my_e_b_tra_1] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "OPF Spirit", toString {
                                [my_e_o_tra_1] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ],
            [
                "Emitters AO 2", "", "1", false,
                [
                    "Emitters AO 2",
                    [
                        [
                            "BLU Pelican", toString {
                                [my_e_b_tra_2] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "OPF Spirit", toString {
                                [my_e_o_tra_2] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ],
            [
                "Emitters AO 3", "", "1", false,
                [
                    "Emitters AO 3",
                    [
                        [
                            "BLU Pelican", toString {
                                [my_e_b_tra_3] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "OPF Spirit", toString {
                                [my_e_o_tra_3] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "OPF Hunters", toString {
                                [my_e_o_inf] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ],
            [
                "Emitters Motorized", "", "1", false,
                [
                    "Emitters Motorized",
                    [
                        [
                            "BLU Warthog", toString {
                                [my_e_b_mot] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "OPF Ghost", toString {
                                [my_e_o_mot_1] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "OPF Spectre", toString {
                                [my_e_o_mot_2] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ],
            [
                "Emitters CAS", "", "1", false,
                [
                    "Emitters CAS",
                    [
                        [
                            "BLU Sparrowhawk", toString {
                                [my_e_b_air] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "OPF Banshee", toString {
                                [my_e_o_air] remoteExec [
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
