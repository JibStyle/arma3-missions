player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Nomad: Player Squad (30 MHz)<br/>
- Blueberry: AI troops"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Set up defensive positions around the <marker name='obj_factory'>Factory</marker>.<br/>
2. Defend strongpoints <marker name='obj_a'>Audacity</marker>, <marker name='obj_b'>Bravery</marker>, <marker name='obj_c'>Courage</marker>, and <marker name='obj_d'>Defiance</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Defend the <marker name='obj_factory'>Factory</marker> and do as much damage to the Russian forces as possible. Respawn at strongpoints <marker name='obj_a'>Audacity</marker>, <marker name='obj_b'>Bravery</marker>, <marker name='obj_c'>Courage</marker>, and <marker name='obj_d'>Defiance</marker> until they are overrun."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Russian forces have cut off all supply and surrounded us in the port city and industrial hub Chernogorsk. Our remaining forces have taken refuge in the <marker name='obj_factory'>Factory</marker>. We will not surrender, and must delay the enemy as long as possible. Be sure to conserve ammo, as our stockpile is small. Russian, infantry, armor, and airborne attack is imminent."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
