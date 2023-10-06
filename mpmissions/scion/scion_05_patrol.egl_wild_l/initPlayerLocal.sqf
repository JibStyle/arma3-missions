params ["_player", "_didJIP"];

my_menu = {
    params ["_player"];
    [
        _player,
        jib_menu_condition_admin,
        [
            "Mission Menu",
            [
                // [
                //     "Emitters", "", "1", false,
                //     [
                //         "Emitters",
                //         [
                //             [
                //                 "Inf 1 Aware", toString {
                //                     [my_e_i_1_aware] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Inf 1 Stealth", toString {
                //                     [my_e_i_1_stealth] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Warbots 1", toString {
                //                     [my_e_war_1] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Inf 2 Aware", toString {
                //                     [my_e_i_2_aware] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Inf 2 Stealth", toString {
                //                     [my_e_i_2_stealth] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Warbots 2", toString {
                //                     [my_e_war_2] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ],
                //             [
                //                 "Airborne", toString {
                //                     [my_e_o_tra] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ]
                //         ]
                //     ]
                // ],
                [
                    "Tasks", "", "1", false,
                    [
                        "Tasks",
                        [
                            [
                                "Fire Support Strike Done", "", "1", false,
                                [
                                    "Confirm?",
                                    [
                                        [
                                            "Fire Support Strike Done",
                                            toString {
                                                done_strike = true;
                                                publicVariable "done_strike";
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
    [_newUnit] call my_menu;
}];
[_player] call my_menu;

player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Assassin: Infantry squad"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Patrol west of COP Omega.<br/>
2. Engage any hostiles."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Patrol west of COP Omega for possible enemy activity. Engage and destroy any hostiles."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Our company has been staged at Combat Outpost Omega on an uninhabited planet for some time while friendly engineers search the planet for resources. Perimeter sensors have been tripped west of the outpost so we are sending Assassin squad to investigate. It may be nothing, as there have been false alarms before, but we should not become complacent. The Imperial Navy has been reported to be near this planetary system so we should be wary of a possible strike."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
