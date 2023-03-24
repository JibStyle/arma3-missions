my_register_emitter = {};

my_register_opf_cap = {
    params ["_logic", ["_probability", 1, [0]]];
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
        _probability
    ] call my_register_emitter;
};

my_register_opf_airborne = {
    params ["_logic", ["_probability", 1, [0]]];
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
        _probability
    ] call my_register_emitter;
};

my_register_opf_armor = {
    params ["_logic", ["_probability", 1, [0]]];
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
        _probability
    ] call my_register_emitter;
};

my_register_opf_specops = {
    params ["_logic", ["_probability", 1, [0]]];
    [
        _logic,
        [
            [
                east,
                [
                    ["OPTRE_FC_Elite_SpecOps3", "LIEUTENANT"],
                    ["OPTRE_FC_Elite_SpecOps2", "CORPORAL"],
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
        _probability
    ] call my_register_emitter;
};

my_register_opf_infantry = {
    params ["_logic", ["_probability", 1, [0]]];
    [
        _logic,
        [
            [
                east,
                [
                    ["OPTRE_FC_Elite_Major", "SERGEANT"],
                    ["OPTRE_FC_Elite_Minor2", "CORPORAL"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"],
                    ["OPTRE_Jackal_Infantry_F", "PRIVATE"],
                    ["OPTRE_Jackal_Sharpshooter_F", "PRIVATE"],
                    ["OPTRE_Jackal_F", "PRIVATE"],
                    ["OPTRE_Jackal_F", "PRIVATE"],
                    ["OPTRE_Jackal_Infantry_F", "PRIVATE"],
                    ["OPTRE_Jackal_Sharpshooter_F", "PRIVATE"],
                    ["OPTRE_Jackal_F", "PRIVATE"],
                    ["OPTRE_Jackal_F", "PRIVATE"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"],
                    ["OPTRE_FC_Elite_Minor", "CORPORAL"]
                ],
                [],
                east,
                [],
                [],
                3
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
            ],
            [
                east,
                [
                    ["OPTRE_Jackal_F", "CORPORAL"],
                    ["OPTRE_Jackal_F", "PRIVATE"],
                    ["OPTRE_Jackal_F", "PRIVATE"],
                    ["OPTRE_Jackal_F", "PRIVATE"]
                ],
                [],
                east,
                [],
                [],
                1
            ]
        ],
        _probability
    ] call my_register_emitter;
};

my_register_blu_infantry = {
    params ["_logic", ["_probability", 1, [0]]];
    [
        _logic,
        [
            [
                west,
                [
                    ["OPTRE_UNSC_Marine_Soldier_SquadLead", "SERGEANT"],
                    ["OPTRE_UNSC_Marine_Soldier_Autorifleman", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Marksman", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AT", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_TeamLead", "CORPORAL"],
                    ["OPTRE_UNSC_Marine_Soldier_Grenadier", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Corpsman", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"]
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
                    ["OPTRE_UNSC_Marine_Soldier_TeamLead", "SERGEANT"],
                    ["OPTRE_UNSC_Marine_Soldier_AT_Specialist", "CORPORAL"],
                    ["OPTRE_UNSC_Marine_Soldier_AT_Specialist", "CORPORAL"],
                    ["OPTRE_UNSC_Marine_Soldier_AA_Specialist", "CORPORAL"]
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
                    ["OPTRE_UNSC_Marine_Soldier_ForwardObserver", "SERGEANT"],
                    ["OPTRE_UNSC_Marine_Soldier_Sniper", "CORPORAL"]
                ],
                [],
                west,
                [],
                [],
                1
            ]
        ],
        _probability
    ] call my_register_emitter;
};

my_register_blu_recon = {
    params ["_logic", ["_probability", 1, [0]]];
    [
        _logic,
        [
            [
                west,
                [
                    ["OPTRE_UNSC_ODST_Soldier_TeamLeader", "SERGEANT"],
                    ["OPTRE_UNSC_ODST_Soldier_Automatic_Rifleman", "CORPORAL"],
                    ["OPTRE_UNSC_ODST_Soldier_Scout_Sniper", "CORPORAL"],
                    ["OPTRE_UNSC_ODST_Soldier_Rifleman_AT", "CORPORAL"],
                    ["OPTRE_UNSC_ODST_Soldier_Paramedic", "CORPORAL"],
                    ["OPTRE_UNSC_ODST_Soldier_Rifleman_BR", "CORPORAL"]
                ],
                [],
                west,
                [],
                [],
                1
            ]
        ],
        _probability
    ] call my_register_emitter;
};

my_register_civ_infantry = {
    params ["_logic", ["_probability", 1, [0]]];
    [
        _logic,
        [
            [
                west,
                [
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "CORPORAL"],
                    ["OPTRE_UEG_Civilian_Commoner", "PRIVATE"],
                    ["OPTRE_UEG_Civilian_Journalist", "PRIVATE"],
                    ["OPTRE_UEG_Civilian_Formal", "PRIVATE"],
                    ["OPTRE_UEG_Civilian_Base", "PRIVATE"],
                    ["OPTRE_UEG_Civilian_Rural", "PRIVATE"],
                    ["OPTRE_UEG_Civilian_Worker", "PRIVATE"],
                    ["OPTRE_UEG_Civilian_Paramedic", "PRIVATE"]
                ],
                [],
                west,
                [],
                [],
                2
            ]
        ],
        _probability
    ] call my_register_emitter;
};

my_register_blu_motorized = {
    params ["_logic", ["_probability", 1, [0]]];
    [
        _logic,
        [
            [
                west,
                [
                    ["OPTRE_UNSC_Marine_Soldier_SquadLead", "SERGEANT"],
                    ["OPTRE_UNSC_Marine_Soldier_Autorifleman", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Marksman", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AT", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_BR", "CORPORAL"],
                    ["OPTRE_UNSC_Marine_Soldier_Corpsman", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"]
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
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "SERGEANT"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"]
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
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "SERGEANT"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"]
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
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "SERGEANT"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"]
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
                    ["OPTRE_UNSC_Marine_Soldier_Crewman", "SERGEANT"],
                    ["OPTRE_UNSC_Marine_Soldier_Crewman", "CORPORAL"]
                ],
                [["OPTRE_M808B_UNSC", [1, 0]]],
                west,
                [],
                [],
                2
            ]
        ],
        _probability
    ] call my_register_emitter;
};

my_register_blu_cap = {
    params ["_logic", ["_probability", 1, [0]]];
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
        _probability
    ] call my_register_emitter;
};

my_register_blu_airborne = {
    params ["_logic", ["_probability", 1, [0]]];
    [
        _logic,
        [
            [
                west,
                [
                    ["OPTRE_UNSC_Marine_Soldier_SquadLead", "SERGEANT"],
                    ["OPTRE_UNSC_Marine_Soldier_Autorifleman", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Marksman", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AT", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_TeamLead", "CORPORAL"],
                    ["OPTRE_UNSC_Marine_Soldier_Grenadier", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Corpsman", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"],
                    ["OPTRE_UNSC_Marine_Soldier_Rifleman_AR", "PRIVATE"]
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
        _probability
    ] call my_register_emitter;
};
