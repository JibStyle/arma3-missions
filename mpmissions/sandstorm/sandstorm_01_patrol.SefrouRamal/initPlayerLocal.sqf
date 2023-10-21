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
        "- Assassin: Infantry team."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Assemble strike force at our safehouse.<br/>
2. Recon Quadane for Tura insurgents.<br/>
3. Eliminate Tura insurgents from the town."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Eliminate hostile Tura insurgents from the town Quadane. This will allow Daltgreen employees to move around freely and unthreatened."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Our ION PMC team is providing security services for the Daltgreen mining corporation in Sefrou-Ramal. CSAT is aligned with the local government and operates a military base nearby. The Sefrawi Freedom and Independence Army (SFIA) is aligned to the local government and holds the main airbase. Tura insurgents are causing havok by stealing from civilians in the area. They are especially active in the town Quadane and threaten Daltgreen employees who live there. Daltgreen has tasked us to eliminate Tura from the town to protect their employees."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
