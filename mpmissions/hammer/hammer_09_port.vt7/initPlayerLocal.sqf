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
                // [
                //     "Emitters", "", "1", false,
                //     [
                //         "Emitters",
                //         [
                //             [
                //                 "Air", toString {
                //                     [my_e_o_air] remoteExec [
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
                                "RTB Done", "", "1", false,
                                [
                                    "Confirm RTB Done?",
                                    [
                                        [
                                            "RTB Done", toString {
                                                [
                                                    "task_rtb", "SUCCEEDED"
                                                ] remoteExec [
                                                    "BIS_fnc_taskSetState", 2
                                                ];
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

player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Alpha: Motorized squad."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Approach in humvees.<br/>
2. Destroy 2 caches.<br/>
3. RTB."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Destroy the enemy 2 supply caches then retreat before being overrun by QRF."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "We have received intel of a Russian supply cache at the port south of our highway position. There is a section guarding the cache and an additional squad in the town nearby. Further east, there is the possibility of enemy medium armor reinforcements. We will send a squad to destroy the cache and pull back before getting overrun. This will limit the enemy effectiveness in the area while we wait for friendly logistics."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
