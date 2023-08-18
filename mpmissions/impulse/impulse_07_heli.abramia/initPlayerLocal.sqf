player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Alpha: Main assault<br/>
- Bravo: Flank left<br/>
- Charlie: Flank right<br/>
- Delta: Overwatch"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Bravo, Charlie, and Delta will wait for Alpha's signal to attack.<br/>
2. Assault the base.<br/>
3. Exploit the objectives.<br/>
4. Exfiltrate to the objective destinations."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Assault the base, search HQ building for intel, steal 2 ammo crates, and steal the CAS helicopter."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "We have detected valuable assets at lightly defended Armybase Saira. We will send a platoon to attack. Delta will set up base of fire. Bravo and Charlie will flank both sides. Alpha will search the HQ building for intel, load 2 ammo crates onto trucks, and steal the parked CAS helicopter. Deliver the crates north to Camp Deer, and the helicopter northeast to Supply Drop Point. If we succeed it will give us the power to sustain our revolution."
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
                "Phase", "", "1", false,
                [
                    "Phase",
                    [
                        [
                            "Yellow", toString {
                                yellow = true; publicVariable "yellow";
                            }, "1"
                        ],
                        [
                            "Red", toString {
                                yellow = true; publicVariable "yellow";
                                red = true; publicVariable "red";
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
                                            ["succeeded"] remoteExec [
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
