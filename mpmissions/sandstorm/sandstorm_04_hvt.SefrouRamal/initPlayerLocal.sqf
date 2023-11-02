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
                                "HVT Failed", "", "1", false,
                                [
                                    "Confirm HVT Failed?",
                                    [
                                        [
                                            "HVT Failed", toString {
                                                fail_hvt = true;
                                                publicVariable "fail_hvt";
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
        "- Assassin: Infantry squad.<br/>
- Hitman: Infantry squad.<br/>
- Rodeo: CAS helicopter."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Recon the area.<br/>
2. Assault compound.<br/>
3. Kill Tura leader.<br/>
4. Return to base."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Assassinate the Tura leader and confirm the kill by interacting with his body."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "An informant has tipped us off with the location of the Tura local faction leader responsible for the recent attack on the Surface Mine. We have a new contract to assassinate him. He wears a red turban and is located in a remote village in the southeast corner of Seffrou-Ramal. We expect him to be surrounded by guards and he will likely attempt to flee when we attack. To fulfill the contract, we should assassinate him and confirm the kill. Enemy QRF will likely come so be sure to leave the area quickly."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
