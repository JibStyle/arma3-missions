// Intel
player createDiaryRecord [
    "Diary",
    ["Technical Details", "NO RESPAWN! Switch to a living side member if you die. Mission fail if all units die.<br/>
<br/>
JTAC (with UAV terminal) can remote control CAS and logistics using Simplex Support Services.<br/>
<br/>
Map markers only share to nearby players.<br/>
<br/>
Paradrop is scripted. Jump and chute deployment are automated. Sit back and enjoy the ride!"]
];
player createDiaryRecord [
    "Diary",
    ["Hostage", "<img image='hostage.paa'/>"]
];
player createDiaryRecord [
    "Diary",
    ["OPFOR", "<img image='opfor.paa'/>"]
];
player createDiaryRecord [
    "Diary",
    ["BLUFOR", "<img image='blufor.paa'/>"]
];

// Diary
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "Hitman - Infantry Assault Platoon.<br/>
Shadow - Insert Blackfish.<br/>
Devil - CAS Blackfish.<br/>
Pelican - Extract Hurons.<br/>
Raptor - Support Blackfoot.<br/>
Jester - IDAP Hostage"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Paradrop into the AO.<br/>
2. Rescue the hostage.<br/>
3. Call in helicopters for evac."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Insert into the AO, neutralize immediate threats, rescue the hostage, and exfil."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "OPFOR Insurgents are holding an IDAP field worker hostage, and they are threatening to execute him. US Army Rangers have been authorized to conduct a hostage rescue mission.<br/>
<br/>
The hostage is held inside a building in a heavily guarded village. Expect a fight, as there are roaming patrols, possible ambushes, and QRFs. Armed Blackfish, callsign Devil, will provide 5 minutes of CAS support."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record7"; // Situation
