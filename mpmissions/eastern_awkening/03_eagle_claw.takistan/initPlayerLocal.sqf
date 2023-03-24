player createDiaryRecord [
    "Diary",
    [
        "Haikal Shah",
        "<img image='Haikal Shah.paa' />"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        "Akbar Khara",
        "<img image='Akbar Khara.paa' />"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        "Harrison Watson",
        "<img image='Harrison Watson.paa' />"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        "Harvey Jones",
        "<img image='Harvey Jones.paa' />"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        "Abdul-Latif Kohzad",
        "<img image='Abdul-Latif Kohzad.paa' />"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Hitman: Recon (30 MHz)<br/>
- Rodeo: Helicopter (40 MHz)<br/>
- Skyhawk: UAV (50 MHz)<br/>
- Blueberry: Friendly AI"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Destroy IED factory at <marker name='obj_ant'>OBJ Ant</marker>.<br/>
2. Kill or capture HVT Abdul-Latif Kohzad at <marker name='obj_bear'>OBJ Bear</marker>.<br/>
3. Rescue POWs Harvey Jones and Harrison Watson at <marker name='obj_crow'>OBJ Crow</marker>.<br/>
4. Destroy weapons cache at <marker name='obj_deer'>OBJ Deer</marker>.<br/>
5. Kill or capture HVTs Akbar Khara and Haikal Shah at <marker name='obj_eagle'>OBJ Eagle</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Raid the targets of opportunity. These will degrade insurgent capabilities in Takistan."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "After we pushed the Takistani insurgents out of capital city <marker name='obj_rasman'>Rasman</marker>, they organized several cells in rural parts of Takistan. Intelligence identified several high value objectives we can hit to further disrupt insurgent activities. We are preparing one of our recon companies for airborne operations."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record8"; // Situation
