params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

[
    _newUnit,
    jib_menu_condition_admin,
    [
        "Mission Menu",
        [
            [
                "Emitters (Inf)", "", "1", false,
                [
                    "Emitters (Inf)",
                    [
                        [
                            "Outpost", toString {
                                [my_e_o_inf_outpost] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Hospital", toString {
                                [my_e_o_inf_hospital] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Fire Department", toString {
                                [my_e_o_inf_fire] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Airport", toString {
                                [my_e_o_inf_airport] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "HQ", toString {
                                [my_e_o_inf_hq] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ]
                    ]
                ]
            ],
            [
                "Emitters (Vehicle)", "", "1", false,
                [
                    "Emitters (Vehicle)",
                    [
                        [
                            "Gorgon", toString {
                                [my_e_o_gorgon] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Kamysh", toString {
                                [my_e_o_kamysh] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Tank", toString {
                                [my_e_o_tank] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Orca", toString {
                                [my_e_o_orca] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Airborne Inf", toString {
                                [my_e_o_qrf_air] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Motorized (City)", toString {
                                [my_e_o_qrf_city] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Motorized (Airfield)", toString {
                                [my_e_o_qrf_airfield] remoteExec [
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
