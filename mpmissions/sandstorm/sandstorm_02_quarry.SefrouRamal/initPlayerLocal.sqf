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
2. Assault Surface Mine.<br/>
3. Destroy AA turrets."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Retake the Surface Mine from Tura insurgents. Destroy all 3 ZU-23 AA turrets."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "The Surface Mine operated by Daltgreen mining corporation has been captured by Tura insurgents. They are attempting to steal equipment and resources. Per our contract with Daltgreen, we must keep their assets secure and will counterattack at once. The Tura have setup ZU-23 AA guns in the 3 quarries at the Surface Mine. We will need to destroy the AA guns and eliminate all hostiles from the area. The Tura really want this infrastructure, and we expect additional insurgents to flow in from all directions."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
