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
                    "AO 1", "", "1", false,
                    [
                        "AO 1",
                        [
                            ["05", toString {[["ao_1"], 05] remoteExec ["my_ao", 2]}],
                            ["10", toString {[["ao_1"], 10] remoteExec ["my_ao", 2]}],
                            ["15", toString {[["ao_1"], 15] remoteExec ["my_ao", 2]}],
                            ["20", toString {[["ao_1"], 20] remoteExec ["my_ao", 2]}],
                            ["25", toString {[["ao_1"], 25] remoteExec ["my_ao", 2]}],
                            ["30", toString {[["ao_1"], 30] remoteExec ["my_ao", 2]}]
                        ]
                    ]
                ],
                [
                    "AO 2", "", "1", false,
                    [
                        "AO 2",
                        [
                            ["05", toString {[["ao_2"], 05] remoteExec ["my_ao", 2]}],
                            ["10", toString {[["ao_2"], 10] remoteExec ["my_ao", 2]}],
                            ["15", toString {[["ao_2"], 15] remoteExec ["my_ao", 2]}],
                            ["20", toString {[["ao_2"], 20] remoteExec ["my_ao", 2]}],
                            ["25", toString {[["ao_2"], 25] remoteExec ["my_ao", 2]}],
                            ["30", toString {[["ao_2"], 30] remoteExec ["my_ao", 2]}]
                        ]
                    ]
                ],
                [
                    "UNA Heli Takeoff", toString {
                        done_heli = true;
                        publicVariable "done_heli";
                    }
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
        "- Alpha: Mechanized infantry squad."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Deploy infantry northeast of OBJ Shield.<br/>
2. Secure OBJ Shield.<br/>
3. Search for intel.<br/>
4. Assault OBJ Sword."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Neutralize SFIA forces at OBJ Shield and OBJ Sword."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "After the SFIA unexpectedly attacked the UNA base, NATO forces have been dispatched to stabilize the region. The SFIA are based in the main airfield and before our main assault we are sending squads to capture key objectives around the perimeter. Alpha squad will capture two objectives southeast of the airfield. At OBJ Shield there is an enemy checkpoint, which should contain intel about further enemy positions. At OBJ Sword there are enemies known to be garrisoned in the town. By securing these two objectives we will clear a path for the main assault on the airfield."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3";
