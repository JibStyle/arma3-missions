// Diary
// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Signal_title",
//         "<marker name='markerAssassin'>Assassin</marker>: Infantry Platoon<br/>
// <marker name='markerHitman'>Hitman</marker>: Marshall APCs<br/>
// <marker name='markerCommand'>Command</marker>: Field HQ<br/>
// <marker name='markerBadger'>Badger</marker>: Support Bobcat<br/>
// <marker name='markerRaptor'>Raptor</marker>: Blackfoot CAS<br/>
// <marker name='markerOdin'>Odin</marker>: Artillery Battery"
//     ]
// ];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Attack and secure <marker name='obj_scorpion'>OBJ Scorpion</marker> and <marker name='obj_rhino'>OBJ Rhino</marker>.<br/>
2. Patrol northwest along the main highway.<br/>
3. Assault <marker name='obj_viper'>OBJ Viper</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "AI High Command will send forces west to attack strategic locations in the AO. Player controlled forces will assault <marker name='obj_scorpion'>OBJ Scorpion</marker>, <marker name='obj_rhino'>OBJ Rhino</marker>, and <marker name='obj_viper'>OBJ Viper</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "OPFOR conventional army occupies military and industrial areas in the map. USMC is assaulting to destroy the enemy. Local civilians occupy the towns and we should be careful to minimize collateral damage. We recently liberated the towns <marker name='obj_sierra'>Sierra</marker> and <marker name='obj_correa'>Correa</marker> and have established forward checkpoints at <marker name='obj_whiskey'>CP Whiskey</marker> and <marker name='obj_yankee'>CP Yankee</marker>. Next we will attack enemy garrisons at <marker name='obj_scorpion'>OBJ Scorpion</marker> and <marker name='obj_rhino'>OBJ Rhino</marker>. Once these strongpoints are secured, we will push west along the main highway towards <marker name='obj_viper'>OBJ Viper</marker>."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record2"; // Situation
