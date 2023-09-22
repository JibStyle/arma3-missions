params ["_player", "_didJIP"];

player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Assassin: Mechanized infantry squad"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Assault mining facility.<br/>
2. Activate data terminal in underground vault.<br/>
3. Retreat to hill and observe orbital strike."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Infiltrate the mining facility and activate the data terminal in the underground vault. Pull back to a hill to observe the orbital strike. This will cripple the enemy's planetary resource production."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "With the Empire power grid down, we landed a Corvette undetected. Our mechanized strike team will prepare an enemy mining facility for orbital strike. Before the strike, we must infiltrate the security vault beneath the facility. This serves two purposes: to download mining data and intel, and help our orbital platform lock on to the facility. After activating the data terminal, our strike team will retreat and observe the orbital strike for effectiveness."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
