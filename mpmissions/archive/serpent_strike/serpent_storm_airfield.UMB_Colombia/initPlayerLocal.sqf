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
        "1. Conduct missions based from the USS Freedom aircraft carrier.<br/>
2. Use ALiVE tablet to coordinate battlefield intel, logistics, and combat support.<br/>
3. Choose objectives and plan missions based on player interests."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Invade the mainland and secure all towns and military installations. Both sides will receive reinforcement logistics to replace battle casualties. The enemy has greater numbers, but are more spread out and their logistic supply will decrease as they lost ground. Our forces have the advantage of greater technology."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "After building strong alliances with rebel gangs in rural parts of the country, the Colombian president has spearheaded a violent revolution and is pushing a resurgence of communism in Latin America. A USMC combined arms division is invading the country to remove the president from power and neutralize his military."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record4"; // Situation
