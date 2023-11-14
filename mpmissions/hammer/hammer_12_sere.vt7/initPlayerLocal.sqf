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
        "- Assassin: USMC Force Recon squad."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Destroy crashed helicopter.<br/>
2. Reach Checkpoint Zulu."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Destroy crashed helicopter, evade enemy forces, and reach friendly Checkpoint Zulu."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "USMC Force Recon squad Assassin has been stranded behind enemy lines after our helicopter was shot down by a MANPAD. Unfortunately the helicrew were all killed. We had been en route to a stealth mission and are very lightly equipped, lacking body armor and significant ammo. There are Russian infantry and vehicles patrolling the forests, and garrisons in the buildings. We must not get decisively engaged because the enemy will surely call in reinforcements if we make contact. Our only hope at survival is to reach the closest friendly position, Checkpoint Zulu. We should destroy our crashed helicopter as well to prevent it from falling into enemy hands."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
