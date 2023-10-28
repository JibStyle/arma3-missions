player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Warpig: Armor platoon.<br/>
- Archer: MLRS platoon."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Seize sector Anvil.<br/>
2. Seize sector Tomahawk.<br/>
3. Seize sector Hammer."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Destroy all Russian assets in the marked sectors."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "The Russians occupy a long stretch of farmland which links the two main highways in the region. If we are to continue our invasion, we must secure this strategic valley. There are three concentrated areas with Russian fortifications, tank positions, and AT infantry. We have staged a tank company with logistics services to sustain our push. A friendly MLRS platoon is available as well for fire support. Civilians are still in the are, so we must take care with our fire."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
