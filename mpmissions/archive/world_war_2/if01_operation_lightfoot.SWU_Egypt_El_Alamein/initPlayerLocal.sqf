player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Assassin: Squad 1<br/>
- Hitman: Squad 2<br/>
- Warpig: Armor<br/>
- Eagle: Air"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Seize trench network at <marker name='obj_1'>OBJ 1</marker>.<br/>
2. Seize trench network at <marker name='obj_2'>OBJ 2</marker>.<br/>
3. Seize fortified hill at <marker name='obj_3'>OBJ 3</marker>.<br/>
4. Seize trench network at <marker name='obj_4'>OBJ 4</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Join the counterattack and retake the city El Alamein. There are several key bunker and trench networks from which the enemy is inflicting heavy casualties on us. Our squad's mission is to seize those fortified positions."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Axis forces are attempting to seize Egypt, the Suez Canal, and Persian oil fields. It is critical to the Allied strategy to prevent this. Our brigade's mission is to hold the line at the worn torn city El Alamein. A German combined arms brigade just launched a major assault from the southwest and holds most of the city. We must retake our lost ground at all costs."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation

[] spawn {
    waitUntil {alive player};
    setViewDistance 2000;
    setObjectViewDistance 500;
};
