params ["_player", "_didJIP"];

my_menu_setup = {
    params ["_player"];
    waitUntil {alive _player};
    [
        _player,
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
                                "Boat", toString {
                                    [my_e_o_boat] remoteExec [
                                        "jib_emitter_single", 2
                                    ];
                                }, "1", true
                            ],
                            [
                                "Airborne", toString {
                                    [my_e_o_tra] remoteExec [
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
                                "RTB Done", "", "1", false,
                                [
                                    "Confirm RTB Done?",
                                    [
                                        [
                                            "RTB Done", toString {
                                                done_rtb = true;
                                                publicVariable "done_rtb";
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

addMissionEventHandler ["TeamSwitch", {
    params ["_previousUnit", "_newUnit"];
    [_newUnit] call my_menu_setup;
}];
[_player] call my_menu_setup;
