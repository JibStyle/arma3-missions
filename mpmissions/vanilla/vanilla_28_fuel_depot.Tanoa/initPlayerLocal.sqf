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
                    "Emitters", "", "1", false,
                    [
                        "Emitters",
                        [
                            [
                                "QRF", toString {
                                    [my_e] remoteExec [
                                        "jib_emitter_single", 2
                                    ];
                                }, "1", true
                            ]
                        ]
                    ]
                ],
                [
                    "OBJ", "", "1", false,
                    [
                        "OBJ",
                        [
                            ["05", toString {[["obj"], 05] remoteExec ["my_ao", 2]}],
                            ["10", toString {[["obj"], 10] remoteExec ["my_ao", 2]}],
                            ["15", toString {[["obj"], 15] remoteExec ["my_ao", 2]}],
                            ["20", toString {[["obj"], 20] remoteExec ["my_ao", 2]}],
                            ["25", toString {[["obj"], 25] remoteExec ["my_ao", 2]}],
                            ["30", toString {[["obj"], 30] remoteExec ["my_ao", 2]}]
                        ]
                    ]
                ],
                [
                    "Inner", "", "1", false,
                    [
                        "Inner",
                        [
                            ["05", toString {[["inner"], 05] remoteExec ["my_ao", 2]}],
                            ["10", toString {[["inner"], 10] remoteExec ["my_ao", 2]}],
                            ["15", toString {[["inner"], 15] remoteExec ["my_ao", 2]}],
                            ["20", toString {[["inner"], 20] remoteExec ["my_ao", 2]}],
                            ["25", toString {[["inner"], 25] remoteExec ["my_ao", 2]}],
                            ["30", toString {[["inner"], 30] remoteExec ["my_ao", 2]}]
                        ]
                    ]
                ],
                [
                    "Outer", "", "1", false,
                    [
                        "Outer",
                        [
                            ["05", toString {[["outer"], 05] remoteExec ["my_ao", 2]}],
                            ["10", toString {[["outer"], 10] remoteExec ["my_ao", 2]}],
                            ["15", toString {[["outer"], 15] remoteExec ["my_ao", 2]}],
                            ["20", toString {[["outer"], 20] remoteExec ["my_ao", 2]}],
                            ["25", toString {[["outer"], 25] remoteExec ["my_ao", 2]}],
                            ["30", toString {[["outer"], 30] remoteExec ["my_ao", 2]}]
                        ]
                    ]
                ]
                // [
                //     "Motorized", "", "1", false,
                //     [
                //         "Motorized",
                //         [
                //             ["01", toString {[["mot"], 01] remoteExec ["my_ao", 2]}],
                //             ["02", toString {[["mot"], 02] remoteExec ["my_ao", 2]}],
                //             ["03", toString {[["mot"], 03] remoteExec ["my_ao", 2]}],
                //             ["04", toString {[["mot"], 04] remoteExec ["my_ao", 2]}],
                //             ["05", toString {[["mot"], 05] remoteExec ["my_ao", 2]}]
                //         ]
                //     ]
                // ],
                // [
                //     "UNA Heli Takeoff", toString {
                //         done_heli = true;
                //         publicVariable "done_heli";
                //     }
                // ],
                // [
                //     "Tasks", "", "1", false,
                //     [
                //         "Tasks",
                //         [
                //             [
                //                 "Mission Success", toString {
                //                     ["End1"] remoteExec [
                //                         "BIS_fnc_endMission"
                //                     ];
                //                 }
                //             ],
                //             [
                //                 "Mission Failed", toString {
                //                     ["fail", false] remoteExec [
                //                         "BIS_fnc_endMission"
                //                     ];
                //                 }
                //             ]
                //         ]
                //     ]
                // ]
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
