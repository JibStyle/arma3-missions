player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Hitman: Infantry (30 MHz)<br />
- Hedgehog: Simplex Transport<br />
- Thunder: Simplex Mortars<br />
- Blueberry: BLUFOR AI"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Seize <marker name='obj_raven'>OBJ Raven</marker>.<br />
2. Seize <marker name='obj_hawk'>OBJ Hawk</marker>.<br />
3. Seize <marker name='obj_owl'>OBJ Owl</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Seize the Jankos Industrial Area, aka <marker name='obj_hawk'>OBJ Hawk</marker>. Start by gaining a foothold at <marker name='obj_raven'>OBJ Raven</marker>, and finish by clearing the rear forest at <marker name='obj_owl'>OBJ Owl</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "After liberating Hööpakka our ground forces continue to gain ground against the Russian invaders. The enemy uses <marker name='obj_hawk'>Jankos Instustrial Area</marker> as a logistics hub. They occupy it with a large infantry garrison supported by light armor. We have staged an infantry force to the north east supported by technicals and BRDMs. Our objective is to seize the Jankos Industrial Area and deny it to the enemy. This will disorganize the enemy and allow us to continue the liberation of our country."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
