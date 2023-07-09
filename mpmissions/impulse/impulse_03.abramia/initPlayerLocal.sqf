player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Falcon: Guerrilla squad"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Take boats to the AO.<br/>
2. Avoid or eliminate enemy patrols.<br/>
3. Kill HVT, bodyguard, and officer.<br/>
4. Collect dog tags and intel.<br/>
5. Return to base."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Eliminate Christou, his bodyguard, and the officer at OP Belt. Collect dog tags and intel, then return to base."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Weapons contractor Dimitris Christou supplies the Abramian Army with high tech equipment. He is a HVT and we have an opportunity to take him out. Our CIA friends alerted us that Christou and his bodyguard, both in business suits, are meeting with an Abramian officer at OP Belt. If we can take them all out, it will slow the supply of equipment to the enemy. There are patrols in the area, and a high threat of enemy airborne reinforcements. This is a good opportunity to use our newly acquired MANPADS."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record4"; // Situation
