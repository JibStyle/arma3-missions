params ["_player", "_didJIP"];

_player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Prism: Spartan II team.<br/>
- Hitman: Marine element."
    ]
];
_player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Insert Warthogs via Pelicans.<br/>
2. Secure Excavation Site.<br/>
3. Download Forerunner artifact data.<br/>
4. Await Marine reinforcements.<br/>
5. Defend against Covenant counterattack."
    ]
];
_player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Assault the Excavation Site, download data from the artifact, and defend against counterattack."
    ]
];
_player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "The Covenant have discovered a Forerunner artifact underground and are operating an Excavation Site to reach it. Luckily the artifact is coded to human touch which will delay them. We are sending a Spartan II team to assault the Excavation Site, secure the artifact, and download its Forerunner data. There are light infantry patrols around the site. Once the site is secure, we will insert two Marine squads to hold it against a likely counterattack."
    ]
];
uiSleep 1;
_player selectDiarySubject "Diary:Record3"; // Situation

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
                    "Insert", "", "1", false,
                    [
                        "Insert",
                        [
                            [
                                "Warthogs MG", toString {
                                    insert_a1_start = true;
                                    publicVariable "insert_a1_start";
                                }, "1"
                            ],
                            [
                                "Warthog Transport", toString {
                                    insert_a2_start = true;
                                    publicVariable "insert_a2_start";
                                }, "1"
                            ],
                            [
                                "Marines", toString {
                                    insert_b_start = true;
                                    publicVariable "insert_b_start";
                                }, "1"
                            ],
                            [
                                "Covenant", toString {
                                    insert_c_start = true;
                                    publicVariable "insert_c_start";
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
                                "Defend Done", "", "1", false,
                                [
                                    "Confirm Defend Done?",
                                    [
                                        [
                                            "Defend Done", toString {
                                                defend_done = true;
                                                publicVariable "defend_done";
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
                                                ["succeeded"] remoteExec [
                                                    "BIS_fnc_endMission",
                                                    0, true
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
