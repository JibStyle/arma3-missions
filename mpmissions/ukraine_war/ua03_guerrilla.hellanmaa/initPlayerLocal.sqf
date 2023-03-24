jib_menu_mission = [
    ["Mission Menu", true],
    [
        "BLU Start", [2], "", -5,
        [["expression", "[] call my_menu_blu_start"]], "1", "1"
    ],
    [
        "BLU Stop", [3], "", -5,
        [["expression", "[] call my_menu_blu_stop"]], "1", "1"
    ],
    [
        "OPF Start", [4], "", -5,
        [["expression", "[] call my_menu_opf_start"]], "1", "1"
    ],
    [
        "OPF Stop", [5], "", -5,
        [["expression", "[] call my_menu_opf_stop"]], "1", "1"
    ]
];

my_menu_blu_start = {
    my_enabled_blu = true;
    publicVariable "my_enabled_blu";
};

my_menu_blu_stop = {
    my_enabled_blu = false;
    publicVariable "my_enabled_blu";
};

my_menu_opf_start = {
    my_enabled_opf = true;
    publicVariable "my_enabled_opf";
};

my_menu_opf_stop = {
    my_enabled_opf = false;
    publicVariable "my_enabled_opf";
};

player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Nomad: Player squad (no radio)<br />
- Odin: Artillery"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Destroy the 2 tanks at <marker name='obj_dagger'>OBJ Dagger</marker>.<br />
2. Call artillery on recon post at <marker name='obj_lance'>OBJ Lance</marker>.<br />
3. Call artillery on enemy HQ at <marker name='obj_sword'>OBJ Sword</marker>.<br />
4. Secure and hold the village at <marker name='obj_shield'>OBJ Shield</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Destroy enemy tanks with suicide drones. Locate targets for the HIMARS artillery. After softening up the enemy, join the assault to retake the village."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Russian scum have occupied our home town Hööpakka for several months. Our brothers in arms, supplied with weapons from NATO, are organizing a counterattack and have asked the local population for assistance. We can use drones to locate enemy targets for our brothers in arms. They will smash the enemy with HIMARS artillery, then we will join the push to retake the village. Today is our day for revenge!"
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
