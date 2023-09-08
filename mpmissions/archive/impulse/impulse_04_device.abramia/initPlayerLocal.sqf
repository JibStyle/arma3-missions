player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Falcon: CIA strike team"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Insert at Mt. Spidee<br/>
2. Destroy doomsday device<br/>
3. Download computer data<br/>
4. Escape"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Destroy the doomsday device, download the computer lab data, and escape to safety."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Intel from the friendly rebels indicates an OPFOR scientific research facility in the mountains at Camp Fisher. There is a prototype doomsday device that threatens global stability, and a computer lab with critical scientific data. We are sending a CIA strike team to infiltrate the base, destroy the doomsday device, and download science data from the computer lab. There is a light enemy garrison, and reinforcements can arrive in about 5 minutes notice."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record4"; // Situation

[
    player,
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
                            "Airborne", toString {
                                [my_e_o_tra] remoteExec [
                                    "jib_emitter_single", 2
                                ];
                            }, "1", true
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
                                                "BIS_fnc_endMission", 0, true
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
