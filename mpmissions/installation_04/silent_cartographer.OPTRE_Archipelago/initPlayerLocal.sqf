player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- <marker name='blu_1'>Assassin 1-1</marker>: Player squad (30MHz)<br/>
- <marker name='blu_1'>Assassin 1-2</marker>: AI squad<br/>
- <marker name='blu_23'>Rodeo 1</marker>: Pelican for Players<br/>
- <marker name='blu_23'>Rodeo 2</marker>: Pelican for AI"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Insert at <marker name='lz_alpha'>LZ Alpha</marker><br/>
2. Receive 2 warthogs at <marker name='lz_beta'>LZ Beta</marker><br/>
3. Secure <marker name='lz_delta'>LZ Delta</marker> and the <marker name='obj_gateway'>Gateway Room</marker><br/>
4. Disable the <marker name='obj_security'>security system</marker><br/>
5. Enter the <marker name='obj_gateway'>Gateway</marker> and access the <marker name='obj_map'>Map Room</marker><br/>
6. Exfil at <marker name='lz_delta'>LZ Delta</marker>"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Assault and access the <marker name='obj_map'>map room</marker>. This will tell us where Halo's control room is."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Halo is a superweapon, and by taking control of it we can turn the tide of this war. We have pinpointed on a small island a map room that will point us towards the control room of Halo. The map room is behind a locked gateway which can be unlocked by disabling a security system. Covenant <marker name='opf_2'>infantry forces</marker> are already on the island. Two ODST squads will assault the island and access the map room."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
