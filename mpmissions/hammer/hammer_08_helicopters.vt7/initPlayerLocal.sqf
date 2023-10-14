player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Rodeo: AH-1Z Viper flight."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Seize AO 1.<br/>
2. Seize AO 2.<br/>
3. Seize AO 3.<br/>
4. Seize AO 4."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Support friendly forces as they capture towns north of the highway."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Our carrier has arrived off the coast of Virolahti to provide increased logistics. Friendly mechanized forces are pushing north from the highway to seize several key towns. Russian combined arms forces are present, with additional heavy armor approaching from the northeast. Our helicopter squadron will provide CAS to the friendly ground forces as they push. Repair, rearm, and resupply are available both on our carrier and at the friendly ground FOB. Stay within the AO as there is high AA threat beyond."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
