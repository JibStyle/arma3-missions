player createDiaryRecord [
    "Diary",
    ["OPFOR", "<img image='opfor.paa'/>"]
];
player createDiaryRecord [
    "Diary",
    ["BLUFOR", "<img image='blufor.paa'/>"]
];
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
        "Assault and secure <marker name='obj_mercury'>OBJ Mercury</marker>, <marker name='obj_jupiter'>OBJ Jupiter</marker>, <marker name='obj_saturn'>OBJ Saturn</marker>, and <marker name='obj_neptune'>OBJ Neptune</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Friendly forces from AI High Command are holding a security perimeter around the AO. Our player-led Company Team will step off from the <marker name='obj_airfield'>Airfield</marker>, enter, and clear the AO."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "After building strong alliances with rebel gangs in rural parts of the country, the Colombian president has spearheaded a violent revolution and is pushing a resurgence of communism in Latin America. A USMC combined arms division is invading the country to remove the president from power and neutralize his military.<br/>
<br/>
The campaign is almost over and we have seized nearly the entire map. All that remains is to seize the enemy <marker name='obj_jupiter'>Main HQ</marker> and a small <marker name='obj_saturn'>Outpost</marker> to the southeast."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record4"; // Situation
