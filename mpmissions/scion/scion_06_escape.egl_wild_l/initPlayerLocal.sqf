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
        "1. Secure spaceport.<br/>
2. Hack computer launch codes."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Secure the enemy spaceport and obtain launch codes from the computer in the HQ building."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Empire forces have invaded the planet and we have few survivors left. We detected an enemy Corvette as it landed at a nearby temporary spaceport. This may be our only ticket off the planet. We will assault the spaceport and commandeer the ship to make our escape. It will be necessary to obtain the ship launch codes from a computer terminal inside the spaceport HQ building. Hopefully we can get out of here and live to fight another day."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
