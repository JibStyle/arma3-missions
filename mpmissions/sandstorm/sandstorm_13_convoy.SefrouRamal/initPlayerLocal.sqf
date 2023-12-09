params ["_player", "_didJIP"];

terminate (missionNamespace getVariable ["my_disable_hud", scriptNull]);
missionNamespace setVariable [
    "my_disable_hud",
    [] spawn {
        scriptName "My Disable HUD";
        while {true} do {
            uiSleep 1;
            showHUD [
                true, // scriptedHUD
                true, // info
                true, // radar
                true, // compass
                true, // direction
                true, // menu
                true, // group
                true, // cursors
                true, // panels
                false, // kills
                false  // showIcon3D
            ];
            showScoretable 0;
        };
    }
];

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
                                "B Air", toString {
                                    [my_e_b_air] remoteExec [
                                        "jib_emitter_single", 2
                                    ];
                                }, "1", true
                            ],
                            [
                                "O Mixed", toString {
                                    [my_e_o] remoteExec [
                                        "jib_emitter_single", 2
                                    ];
                                }, "1", true
                            ]
                        ]
                    ]
                ],
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
                            ],
                            [
                                "Mission Failed", "", "1", false,
                                [
                                    "Confirm Mission Failed?",
                                    [
                                        [
                                            "Mission Failed", toString {
                                                ["", false] remoteExec [
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

[{
    params ["_unit", "_object", "_cost"];
    isTouchingGround _object;
}] call ace_fortify_fnc_addDeployHandler;

player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Alpha: Infantry squad.<br/>
- Bravo: Infantry squad."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Drive convoy along MSR Granite.<br/>
2. Neutralize any ambushes.<br/>
3. Deliver Supply Truck to UNA Base."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Drive convoy along MSR Granite and deliver Supply Truck to UNA Base."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "United Assistance (UNA) in collaboration with IDAP is helping distribute humanitarian aid to civilians in Sefrou-Ramal. Tensions are high with the government aligned Sefrawi Freedom and Independence Army (SFIA) as they wish to control the distribution of supplies. Furthermore, Tura insurgents have been known to raid convoys. Our convoy has been tasked to deliver a shipment of supplies from Checkpoint X-Ray to the UNA Base. We must follow MSR Granite and beware of Tura ambushes."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3";
