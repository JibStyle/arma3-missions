params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
[
    _newUnit,
    jib_menu_condition_admin,
    [
        "Mission Menu",
        [
            [
                "Foo", toString {
                    systemChat "Bar";
                }
            ],
            [
                "Emitters", "", "1", false,
                [
                    [
                        "B Inf", toString {
                            [my_e_b_inf] remoteExec ["jib_emitter_single", 2];
                        }
                    ],
                    [
                        "B Mot", toString {
                            [my_e_b_mot] remoteExec ["jib_emitter_single", 2];
                        }
                    ],
                    [
                        "B Tra", toString {
                            [my_e_b_tra] remoteExec ["jib_emitter_single", 2];
                        }
                    ],
                    [
                        "B Air", toString {
                            [my_e_b_air] remoteExec ["jib_emitter_single", 2];
                        }
                    ],
                    [
                        "I Inf", toString {
                            [my_e_i_inf] remoteExec ["jib_emitter_single", 2];
                        }
                    ],
                    [
                        "I Mot", toString {
                            [my_e_i_mot] remoteExec ["jib_emitter_single", 2];
                        }
                    ],
                    [
                        "I Tra", toString {
                            [my_e_i_tra] remoteExec ["jib_emitter_single", 2];
                        }
                    ],
                    [
                        "I Air", toString {
                            [my_e_i_air] remoteExec ["jib_emitter_single", 2];
                        }
                    ],
                    [
                        "O Inf", toString {
                            [my_e_o_inf] remoteExec ["jib_emitter_single", 2];
                        }
                    ],
                    [
                        "O Mot", toString {
                            [my_e_o_mot] remoteExec ["jib_emitter_single", 2];
                        }
                    ]
                ]
            ]
        ]
    ]
] call jib_menu_dynamic_action;
