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
        "- Assassin: Mechanized infantry squad"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Assault mining facility.<br/>
2. Activate data terminal in underground vault.<br/>
3. Retreat to hill and observe orbital strike."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Infiltrate the mining facility and activate the data terminal in the underground vault. Pull back to a hill to observe the orbital strike. This will cripple the enemy's planetary resource production."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "With the Empire power grid down, we landed a Corvette undetected. Our mechanized strike team will prepare an enemy mining facility for orbital strike. Before the strike, we must infiltrate the security vault beneath the facility. This serves two purposes: to download mining data and intel, and help our orbital platform lock on to the facility. After activating the data terminal, our strike team will retreat and observe the orbital strike for effectiveness."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
