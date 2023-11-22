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
                    "Difficulty", "", "1", false,
                    [
                        "Difficulty",
                        [
                            [
                                "Off", toString {
                                    [] remoteExec ["my_flex_off", 2];
                                }, "1"
                            ],
                            [
                                "Easy", toString {
                                    [] remoteExec ["my_flex_easy", 2];
                                }, "1"
                            ],
                            [
                                "Normal", toString {
                                    [] remoteExec ["my_flex_normal", 2];
                                }, "1"
                            ],
                            [
                                "Hard", toString {
                                    [] remoteExec ["my_flex_hard", 2];
                                }, "1"
                            ],
                            [
                                "Custom", toString {
                                    [] remoteExec ["my_flex_custom", 2];
                                }, "1"
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
                                "Done Foritfy", "", "1", false,
                                [
                                    "Confirm Done Fortify?",
                                    [
                                        [
                                            "Done Fortify", toString {
                                                done_fortify = true;
                                                publicVariable "done_fortify";
                                            }, "1"
                                        ]
                                    ]
                                ]
                            ],
                            [
                                "Done Defense", "", "1", false,
                                [
                                    "Confirm Done Defense?",
                                    [
                                        [
                                            "Done Defense", toString {
                                                done_defense = true;
                                                publicVariable "done_defend";
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
        "- Assassin: Infantry squad.<br/>
- Hitman: Infantry squad."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Take fortification tools, entrenching tools, and wirecutters from safehouse.<br/>
2. Prepare defensive positions around the Solar Farm until 1720 hours.<br/>
3. Defend the Solar Farm against the Tura attack."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Defend the Solar Farm against the Tura attack. The mission will be complete once Tura forces are exhausted."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "We have gotten word that the Tura are planning an attack on the Solar Farm at 1720 hours. Our client has contracted us to defend it, as its destruction would limit their profits in Sefrou-Ramal. We expect the Tura to attack from all sides and will need to establish a perimeter. Fortification supplies are available to build sandbags, razorwire barriers, and small bunkers to assist our defense. We can use drones as well to increase surveillance and firepower."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3";

[{
    params ["_unit", "_object", "_cost"];
    isTouchingGround _object;
}] call ace_fortify_fnc_addDeployHandler;
