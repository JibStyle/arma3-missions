params ["_player", "_didJIP"];

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
        "1. Assault Power Station.<br/>
2. Destroy 12 reactors.<br/>
3. Return to LZ."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Reach the Power Station and destroy the 12 fusion reactors. This will limit the enemy's capabilities as Amalgamate Republic launches its full assault."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "This is the first stage of a raid on the Empire controlled mining planet Vidda. Our goal is to disrupt their mining operations which will weaken their posture in this galactic sector. Before we launch the full strike, Assassin squad will drop in from orbit to disable the local power grid. There is an Empire Power Station garrisoned and patrolled by an infantry section. Get in there and use demolition charges to destroy the array of 12 fusion reactors. This will force the local Empire forces to use auxiliary power and limit their operations capability."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
