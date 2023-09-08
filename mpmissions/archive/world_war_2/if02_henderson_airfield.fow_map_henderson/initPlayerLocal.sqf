player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Assassin: Squad 1<br/>
- Hitman: Squad 2"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Secure a beachhead at <marker name='obj_1'>Tenaru Camp</marker>.<br/>
2. Push inland and clear out <marker name='obj_2'>Orangutan Trail</marker>.<br/>
3. Seize the military area on the <marker name='obj_3'>south side</marker> of the airfield.<br/>
4. Secure the trenches on the <marker name='obj_4'>north side</marker> of the airfield."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Secure a beachhead, push inland, and seize the airfield. This will deny the enemy logistics capacity in the island."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "In our Pacific campaign against the Imperial Japanese Army, Henderson Airfield is a key logistics hub in the Solomon Islands. Seizing it will prevent the Japanese from delivering additional supplies to Guadalcanal. The enemy has defenses built up along the beach, foot patrols in the jungle, and a sizeable garrison at the airfield. We will conduct an amphibious assault to take those positions."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
