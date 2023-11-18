terminate (missionNamespace getVariable ["my_disable_hud", scriptNull]);
missionNamespace setVariable [
    "my_disable_hud",
    [] spawn {
        scriptName "My Disable HUD";
        while {true} do {
            uiSleep 1;
            showHUD [
                true, // scriptedHUD
                true, // info
                true, // radar
                true, // compass
                true, // direction
                true, // menu
                true, // group
                true, // cursors
                true, // panels
                false, // kills
                false  // showIcon3D
            ];
            showScoretable 0;
        };
    }
];

player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Alpha: Infantry.<br/>
- Bravo: Infantry.<br/>
- Charlie: Infantry (AI).<br/>
- Delta: Infantry (AI).<br/>
- Warpig: Armor.<br/>
- Eagle: Helicopter."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Secure Hospital.<br/>
2. Secure Checkpoint Omega.<br/>
3. Secure Russian HQ."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Assault and secure key objectives in the capital city."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "We are launching the final assault into the capital city of Virolahti. The Russians have garrisoned buildings along MSR Kit Kat and MSR Sour Patch Kids. They have armor and several helicopters in reserve to the northeast that will likely join the fight. Our objectives are to capture the Hospital, Checkpoint Omega, and the Russian HQ. This should cripple their operation in the region and we expect it to force a Russian withdrawal from Virolahti."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
