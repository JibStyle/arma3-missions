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
                //                 "QRF", toString {
                //                     [my_e] remoteExec [
                //                         "jib_emitter_single", 2
                //                     ];
                //                 }, "1", true
                //             ]
                //         ]
                //     ]
                // ],
                [
                    "Civ", "", "1", false,
                    [
                        "Civ",
                        [
                            ["05", toString {[["civ"], 05] remoteExec ["my_ao", 2]}],
                            ["10", toString {[["civ"], 10] remoteExec ["my_ao", 2]}],
                            ["15", toString {[["civ"], 15] remoteExec ["my_ao", 2]}],
                            ["20", toString {[["civ"], 20] remoteExec ["my_ao", 2]}],
                            ["25", toString {[["civ"], 25] remoteExec ["my_ao", 2]}],
                            ["30", toString {[["civ"], 30] remoteExec ["my_ao", 2]}]
                        ]
                    ]
                ],
                [
                    "Opf", "", "1", false,
                    [
                        "Opf",
                        [
                            ["05", toString {[["opf"], 05] remoteExec ["my_ao", 2]}],
                            ["10", toString {[["opf"], 10] remoteExec ["my_ao", 2]}],
                            ["15", toString {[["opf"], 15] remoteExec ["my_ao", 2]}],
                            ["20", toString {[["opf"], 20] remoteExec ["my_ao", 2]}],
                            ["25", toString {[["opf"], 25] remoteExec ["my_ao", 2]}],
                            ["30", toString {[["opf"], 30] remoteExec ["my_ao", 2]}]
                        ]
                    ]
                ],
                [
                    "Motorized", "", "1", false,
                    [
                        "Motorized",
                        [
                            ["01", toString {[["mot"], 01] remoteExec ["my_ao", 2]}],
                            ["02", toString {[["mot"], 02] remoteExec ["my_ao", 2]}],
                            ["03", toString {[["mot"], 03] remoteExec ["my_ao", 2]}],
                            ["04", toString {[["mot"], 04] remoteExec ["my_ao", 2]}],
                            ["05", toString {[["mot"], 05] remoteExec ["my_ao", 2]}]
                        ]
                    ]
                ],
                // [
                //     "UNA Heli Takeoff", toString {
                //         done_heli = true;
                //         publicVariable "done_heli";
                //     }
                // ],
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

// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Signal_title",
//         "- Alpha: Infantry squad.<br/>
// - Bravo: Infantry squad.<br/>
// - Charlie: Infantry squad (AI).<br/>
// - Delta: Infantry squad (AI).<br/>
// - Rodeo: Pilot (transport and CAS)."
//     ]
// ];
// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Execution_title",
//         "1. Deploy infantry via Ghosthawk.<br/>
// 2. Suppress enemy while moving quickly to WP Axe.<br/>
// 3. Secure Sector Green.<br/>
// 4. Secure Sector Yellow and destroy SFIA planes.<br/>
// 5. Secure Sector Red."
//     ]
// ];
// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Mission_title",
//         "Secure the main airfield. Destroy SFIA aircraft before they can takeoff."
//     ]
// ];
// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Situation_title",
//         "To counter recent aggression, our NATO infantry platoon is conducting an assault on the SFIA main airfield. We expect strong resistance from garrisoned infantry and roaming light armor. Additionally, there are enemy air assets on the ground that we must destroy before they can be readied for takeoff. We have a Ghosthawk for transport, and a Pawnee light attack helicopter for close air support."
//     ]
// ];
// uiSleep 1;
// player selectDiarySubject "Diary:Record3";
