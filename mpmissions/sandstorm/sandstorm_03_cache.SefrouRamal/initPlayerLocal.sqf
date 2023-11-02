params ["_player", "_didJIP"];

player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Assassin: Infantry squad.<br/>
- Hitman: Infantry squad.<br/>
- Rodeo: CAS helicopter."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Recon the area.<br/>
2. Destroy AA truck.<br/>
3. Destroy caches.<br/>
4. Return to base."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Destroy the two ammo caches and the AA truck. Return to base before being overwhelmed by QRF."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "We have received intel that the Tura have a large stockpile of weapons and ammo in the Oasis northwest of the Surface Mine. That explains how they were able to mount such a large attack on the quarry. Daltgreen mining corporation has agreed to give us a bonus payment for taking out the Tura stockpile. There are two ammo caches and a Zamak ZU-23 AA truck that must be destroyed. We must act quickly and avoid being decisively engaged, as we expect the Tura to call for reinforcements once we are detected. We have a helicopter and several trucks at our disposal."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
