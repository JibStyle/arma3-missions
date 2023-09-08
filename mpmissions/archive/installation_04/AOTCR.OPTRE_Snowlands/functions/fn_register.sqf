my_register_emitter = {};

my_register_cap = {
    params ["_logic"];
    [
        _logic,
        [
            [
                east,
                [
                    ["OPTRE_FC_Elite_Minor", "SERGEANT"]
                ],
                [
                    ["OPTRE_FC_Type26B_Banshee", [0]]
                ],
                east,
                [],
                [],
                0.1
            ]
        ],
        0.5
    ] call my_register_emitter;
};

my_register_transport = {
    params ["_logic"];
    [
        _logic,
        [
            [
                east,
                [
                    ["OPTRE_FC_Elite_Major", "SERGEANT"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"]
                ],
                [],
                east,
                [
                    ["OPTRE_FC_Elite_Minor", "LIEUTENANT"],
                    ["OPTRE_FC_Elite_Minor", "SERGEANT"]
                ],
                [
                    ["OPTRE_FC_Spirit", [0, 1]]
                ],
                1
            ]
        ],
        0.5
    ] call my_register_emitter;
};

my_register_motorized = {
    params ["_logic"];
    [
        _logic,
        [
            [
                east,
                [
                    ["OPTRE_FC_Elite_Minor", "SERGEANT"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"]
                ],
                [
                    ["OPTRE_FC_Wraith", [1, 0, 2]]
                ],
                east,
                [],
                [],
                1
            ],
            [
                east,
                [
                    ["OPTRE_FC_Elite_Minor", "SERGEANT"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"]
                ],
                [
                    ["OPTRE_FC_Spectre", [1, 0]]
                ],
                east,
                [],
                [],
                1
            ],
            [
                east,
                [
                    ["OPTRE_FC_Elite_Minor", "SERGEANT"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"]
                ],
                [["OPTRE_FC_Spectre_Empty", [0, 1, 2, 3, 4]]],
                east,
                [],
                [],
                1
            ]
        ],
        2
    ] call my_register_emitter;
};

my_register_specops = {
    params ["_logic"];
    [
        _logic,
        [
            [
                east,
                [
                    ["OPTRE_FC_Elite_SpecOps3", "LIEUTENANT"],
                    ["OPTRE_FC_Elite_SpecOps2", "CORPORAL"],
                    ["OPTRE_FC_Elite_SpecOps2", "CORPORAL"]
                ],
                [],
                east,
                [],
                [],
                1
            ]
        ],
        1
    ] call my_register_emitter;
};

my_register_infantry = {
    params ["_logic"];
    [
        _logic,
        [
            [
                east,
                [
                    ["OPTRE_FC_Elite_Major", "SERGEANT"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"],
                    ["OPTRE_Jackal_Sharpshooter_F", "PRIVATE"],
                    ["OPTRE_Jackal_Sharpshooter_F", "PRIVATE"],
                    ["OPTRE_Jackal_F", "PRIVATE"],
                    ["OPTRE_Jackal_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"]
                ],
                [],
                east,
                [],
                [],
                1
            ],
            [
                east,
                [
                    ["OPTRE_Jackal_Infantry_F", "CORPORAL"],
                    ["OPTRE_Jackal_Sharpshooter_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry2_F", "PRIVATE"]
                ],
                [],
                east,
                [],
                [],
                1
            ],
            [
                east,
                [
                    ["OPTRE_FC_Elite_Ultra2", "CAPTAIN"],
                    ["OPTRE_FC_Elite_Major", "LIEUTENANT"],
                    ["OPTRE_Jackal_Sharpshooter_F", "CORPORAL"],
                    ["OPTRE_Jackal_Sharpshooter_F", "CORPORAL"]
                ],
                [],
                east,
                [],
                [],
                0.25
            ]
        ],
        2
    ] call my_register_emitter;
};

my_register_blu_infantry = {
    params ["_logic"];
    [
        _logic,
        [
            [
                west,
                [
                    ["OPTRE_FC_Marines_Soldier_SquadLead", "SERGEANT"],
                    ["OPTRE_FC_Marines_Soldier_Autorifleman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Marksman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_AT", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Corpsman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Autorifleman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"]
                ],
                [],
                west,
                [],
                [],
                2
            ],
            [
                west,
                [
                    ["OPTRE_FC_Marines_Soldier_TeamLead", "SERGEANT"],
                    ["OPTRE_FC_Marines_Soldier_AT_Specialist", "CORPORAL"],
                    ["OPTRE_FC_Marines_Soldier_AT_Specialist", "CORPORAL"],
                    ["OPTRE_FC_Marines_Soldier_AA_Specialist", "CORPORAL"]
                ],
                [],
                west,
                [],
                [],
                1
            ],
            [
                west,
                [
                    ["OPTRE_Marines_Soldier_ForwardObserver", "SERGEANT"],
                    ["OPTRE_FC_Marines_Soldier_Sniper", "CORPORAL"]
                ],
                [],
                west,
                [],
                [],
                1
            ]
        ],
        1
    ] call my_register_emitter;
};

my_register_blu_motorized = {
    params ["_logic"];
    [
        _logic,
        [
            [
                west,
                [
                    ["OPTRE_FC_Marines_Soldier_SquadLead", "SERGEANT"],
                    ["OPTRE_FC_Marines_Soldier_Autorifleman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Marksman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_AT", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Corpsman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Autorifleman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"]
                ],
                [["OPTRE_M813_TT", [7, 0, 1, 2, 3, 4, 5, 6]]],
                west,
                [],
                [],
                1
            ],
            [
                west,
                [
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "SERGEANT"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"]
                ],
                [["OPTRE_M12_LRV", [1, 0, 2]]],
                west,
                [],
                [],
                1
            ],
            [
                west,
                [
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "SERGEANT"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"]
                ],
                [["OPTRE_M12A1_LRV", [1, 0, 2]]],
                west,
                [],
                [],
                1
            ],
            [
                west,
                [
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "SERGEANT"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"]
                ],
                [["OPTRE_M12G1_LRV", [1, 0, 2]]],
                west,
                [],
                [],
                1
            ],
            [
                west,
                [
                    ["OPTRE_FC_Marines_Soldier_Crewman", "SERGEANT"],
                         ["OPTRE_FC_Marines_Soldier_Crewman", "CORPORAL"]
                ],
                [["OPTRE_M808B_UNSC", [2, 1, 0]]],
                west,
                [],
                [],
                2
            ]
        ],
        1
    ] call my_register_emitter;
};

my_register_blu_cap = {
    params ["_logic"];
    [
        _logic,
        [
            [
                west,
                [
                    ["OPTRE_UNSC_Airforce_Soldier_Airman", "LIEUTENANT"],
                    ["OPTRE_UNSC_Airforce_Soldier_Airman", "SERGEANT"]
                ],
                [["OPTRE_AV22C_Sparrowhawk", [1, 0]]],
                west,
                [],
                [],
                1
            ]
        ],
        0.5
    ] call my_register_emitter;
};

my_register_blu_transport = {
    params ["_logic"];
    [
        _logic,
        [
            [
                west,
                [
                    ["OPTRE_FC_Marines_Soldier_SquadLead", "SERGEANT"],
                    ["OPTRE_FC_Marines_Soldier_Autorifleman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Marksman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_AT_Specialist", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Corpsman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_TeamLead", "CORPORAL"],
                    ["OPTRE_FC_Marines_Soldier_Autorifleman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Marksman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_AA_Specialist", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Corpsman", "PRIVATE"],
                    ["OPTRE_FC_Marines_Soldier_Rifleman_BR", "PRIVATE"]
                ],
                [],
                west,
                [
                    ["OPTRE_UNSC_Airforce_Soldier_Airman", "LIEUTENANT"],
                    ["OPTRE_UNSC_Airforce_Soldier_Airman", "SERGEANT"]
                ],
                [["OPTRE_Pelican_unarmed", [0, 1]]],
                1
            ]
        ],
        1
    ] call my_register_emitter;
};
