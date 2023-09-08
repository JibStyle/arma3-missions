[
    player,
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
                            "Convoy Start", "", "1", false,
                            [
                                "Confirm Convoy Start?",
                                [
                                    [
                                        "Convoy Start", toString {
                                            convoy = true;
                                            publicVariable "convoy";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ],
                        [
                            "Enemy QRF", "", "1", false,
                            [
                                "Confirm Enemy QRF?",
                                [
                                    [
                                        "Enemy QRF", toString {
                                            qrf = true;
                                            publicVariable "qrf";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ],
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
                        ],
                        [
                            "Mission Failed", "", "1", false,
                            [
                                "Confirm Mission Failed?",
                                [
                                    [
                                        "Mission Failed", toString {
                                            mission_failed = true;
                                            publicVariable "mission_failed";
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
