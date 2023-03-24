player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Crossroads: Company Command, 30 MHz<br/>
- Assassin 1: ODST Platoon, 40 MHz<br/>
- Warpig 1: Armor Section, 50 MHz<br/>
- Rodeo 1: Aviation Flight, 60 MHz"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Patrol northeast and locate friendly forces.<br/>
2. Push further northeast until enemy contact is made.<br/>
3. Neutralize high threat enemy forces."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Patrol northeast from <marker name='obj_cop'>COP Falcon</marker> to determine positions of friendlies, enemies, and key terrain."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Pursued by the Covenant Fleet of Particular Justice, we have abandoned our cruiser, UNSC Pillar of Autum, and landed in the highlands of a mysterious ring world. Our engineers have established a small outpost, <marker name='obj_cop'>COP Falcon</marker>, and Covenant forces are known to have landed to our northeast. To gain a stronger foothold, our regiment must regroup, consolidate, and recon the area."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
