player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Hitman 1-1: Player squad (30 MHz)<br/>
- Hitman 1-2: AI squad<br/>
- Rodeo 1-1: Player pelican<br/>
- Rodeo 1-2: AI pelican"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Insert at <marker name='my_respawn_1'>LZ Alpha.</marker><br/>
2. Search <marker name='obj_gamma'>OBJ Gamma</marker>.<br/>
3. Search <marker name='obj_omicron'>OBJ Omicron</marker>.<br/>
4. Extract at <marker name='my_respawn_1'>LZ Alpha</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Insert at <marker name='my_respawn_1'>LZ Alpha</marker> then search for the weapons cache. Hitman 1-1 is assault and 1-2 is rear security. Once the cache is found, bring as much as you can carry back to the <marker name='my_respawn_1'>LZ</marker> for extract."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Decrypted Covenant communications indicate presence of a sizeable weapons cache hidden in the wetlands of Halo. We are running low on ammo and securing this cache will give us a much needed boost. The intelligence is not 100% clear. We believe the cache is located either at <marker name='obj_gamma'>OBJ Gamma</marker> or <marker name='obj_omicron'>OBJ Omicron</marker>. A covenant infantry company is expected to be patrolling the area."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
