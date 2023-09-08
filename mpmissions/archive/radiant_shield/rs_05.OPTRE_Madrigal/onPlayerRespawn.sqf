params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

[
    _newUnit,
    jib_menu_condition_admin,
    [
        "Mission Menu",
        [
            [
                "Emitters Terrain", "", "1", false,
                [
                    "Emitters Terrain",
                    [
                        [
                            "Medium", toString {
                                [my_e_o_medium] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
                        ],
                        [
                            "Large", toString {
                                [my_e_o_large] remoteExec [
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
                                            mission_success = true;
                                            publicVariable "mission_success";
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
