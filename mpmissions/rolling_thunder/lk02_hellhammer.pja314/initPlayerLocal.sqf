player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Assassin: Squad 1<br/>
- Hitman: Squad 2<br/>
- Warpig: Armor<br/>
- Rodeo: Air"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        ""
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        ""
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        ""
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
