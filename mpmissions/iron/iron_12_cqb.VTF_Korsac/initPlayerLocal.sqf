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
                    "AO 1", "", "1", false,
                    [
                        "AO 1",
                        [
                            ["10", toString {[["1"], 10] remoteExec ["jib_misc_ao", 2]}],
                            ["15", toString {[["1"], 15] remoteExec ["jib_misc_ao", 2]}],
                            ["20", toString {[["1"], 20] remoteExec ["jib_misc_ao", 2]}],
                            ["25", toString {[["1"], 25] remoteExec ["jib_misc_ao", 2]}],
                            ["30", toString {[["1"], 30] remoteExec ["jib_misc_ao", 2]}]
                        ]
                    ]
                ],
                [
                    "AO 2", "", "1", false,
                    [
                        "AO 2",
                        [
                            ["10", toString {[["2"], 10] remoteExec ["jib_misc_ao", 2]}],
                            ["15", toString {[["2"], 15] remoteExec ["jib_misc_ao", 2]}],
                            ["20", toString {[["2"], 20] remoteExec ["jib_misc_ao", 2]}],
                            ["25", toString {[["2"], 25] remoteExec ["jib_misc_ao", 2]}],
                            ["30", toString {[["2"], 30] remoteExec ["jib_misc_ao", 2]}]
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
                                }, "1"
                            ],
                            [
                                "Mission Failed", toString {
                                    ["End1", false] remoteExec [
                                        "BIS_fnc_endMission"
                                    ];
                                }, "1"
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

// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Signal_title",
//         "- Assassin: Infantry squad.<br/>
// - Big Bird: Huey 1.<br/>
// - Flying Squirrel: Huey 2."
//     ]
// ];
// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Execution_title",
//         "1. Fly in Hueys to the AO.<br/>
// 2. Land at Rebel Field HQ.<br/>
// 3. Assault Soviet held Hardware Facility."
//     ]
// ];
// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Mission_title",
//         "Assault the hardware facility, kill the Soviet officer, and secure the intel."
//     ]
// ];
// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Situation_title",
//         "A Soviet convoy have holed up in an abandoned hardware facility after a firefight with our Rebel allies. We have good intel that inside the facility is a high ranking Russian officer with documents that Command wants. Two birds and one stone boys, the Rebels don't have the assets to assault the compound, we do."
//     ]
// ];
// uiSleep 1;
// player selectDiarySubject "Diary:Record3";
