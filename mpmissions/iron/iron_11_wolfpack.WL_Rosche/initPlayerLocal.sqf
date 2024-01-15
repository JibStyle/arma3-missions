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
                    "Attack", "", "1", false,
                    [
                        "Attack",
                        [
                            ["off", toString {[] remoteExec ["my_flex_attack_off", 2]}],
                            ["easy", toString {[] remoteExec ["my_flex_attack_easy", 2]}],
                            ["medium", toString {[] remoteExec ["my_flex_attack_medium", 2]}],
                            ["hard", toString {[] remoteExec ["my_flex_attack_hard", 2]}],
                            ["custom", toString {[] remoteExec ["my_flex_attack_custom", 2]}]
                        ]
                    ]
                ],
                [
                    "Defend", "", "1", false,
                    [
                        "Defend",
                        [
                            ["off", toString {[] remoteExec ["my_flex_defend_off", 2]}],
                            ["easy", toString {[] remoteExec ["my_flex_defend_easy", 2]}],
                            ["medium", toString {[] remoteExec ["my_flex_defend_medium", 2]}],
                            ["hard", toString {[] remoteExec ["my_flex_defend_hard", 2]}],
                            ["custom", toString {[] remoteExec ["my_flex_defend_custom", 2]}]
                        ]
                    ]
                ],
                [
                    "Tasks", "", "1", false,
                    [
                        "Tasks",
                        [
                            [
                                "Mission Success", toString {
                                    ["End1"] remoteExec [
                                        "BIS_fnc_endMission"
                                    ];
                                }
                            ],
                            [
                                "Mission Failed", toString {
                                    ["fail", false] remoteExec [
                                        "BIS_fnc_endMission"
                                    ];
                                }
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ] call jib_menu_dynamic_action;
};

// BUG: Sometimes not work
terminate (missionNamespace getVariable ["my_menu_player", scriptNull]);
missionNamespace setVariable [
    "my_menu_player",
    [] spawn {
        scriptName "my_menu_player";
        my_menu_player_object = objNull;
        while {true} do {
            uiSleep 1;
            if (my_menu_player_object != player) then {
                my_menu_player_object = player;
                [my_menu_player_object] call my_menu_setup;
            };
        };
    }
];

player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Hurricane: M1A1 Abrams.<br/>
- Iron Horse: M1A1 Abrams.<br/>
- Hell on Wheels: M1A1 Abrams.<br/>
- Widowmaker: M1A1 Abrams."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Secure town Molzen.<br/>
2. Secure town Masendorf.<br/>
3. Reach militia FOB.<br/>
4. Defend FOB."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Reach the militia FOB and defend it against Soviet armored attack."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Local militia forces are surrounded by Soviet armor and need our assistance. We will send a column of tanks to secure a pathway for supplies. There are two Soviet controlled towns on the way, occupied by several armored emplacements. We expect additional enemy reinforcements to come from the east. Once we reach the militia FOB, we must hold it against an expected Soviet attack from the east and south."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3";
