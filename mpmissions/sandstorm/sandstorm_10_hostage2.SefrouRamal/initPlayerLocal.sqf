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
        "Hostage",
        "<img image='mug.paa'/>"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Assassin: Infantry squad.<br/>
- Hitman: Infantry squad.<br/>
- Warpig: AMV-7 Marshall APC."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Secure hostage compound.<br/>
2. Free hostage.<br/>
3. Return to base."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Rescue the construction worker hostage and bring him back to our safehouse."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "An employee of our client, Daltgreen Mining Corporation, has been kidnapped by the Tura. We have intel that he is held by Tura insurgents in a compound in the city Bir Dakhla. The entire city is controlled by insurgents and we expect enemy reinforcements once they are alerted. Our job is to assault the compound, rescue the hostage, and bring him back to our safehouse. We will use a Marshall APC for support. He holds a high ranking position in Daltgreen so this will be a worthwhile contract."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record4"; // Situation (4)
