// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Signal_title",
//         "- <marker name='blu_1'>Assassin 1-1</marker>: Player squad (30MHz)<br/>
// - <marker name='blu_1'>Assassin 1-2</marker>: AI squad<br/>
// - <marker name='blu_23'>Rodeo 1</marker>: Pelican for Players<br/>
// - <marker name='blu_23'>Rodeo 2</marker>: Pelican for AI"
//     ]
// ];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Secure <marker name='obj_shield'>OBJ Shield</marker>.<br/>
2. Wipeout Covenant forces at <marker name='obj_sword'>OBJ Sword</marker>.<br/>
3. Enter and secure the <marker name='obj_control_room'>Control Room</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Assist UNSC forces in securing all objectives. Once the Control Room is secure, our AI will run diagnostics to determine how to use Halo against the Covenant."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "We must secure the <marker name='obj_control_room'>Control Room</marker> to activate Halo and defeat the Covenant. It is located inside a pyramid at the end of a canyon. Covenant forces reached it first and have fortified the area. We must first secure a foothold at <marker name='obj_shield'>OBJ Shield</marker>, then push through <marker name='obj_sword'>OBJ Sword</marker> on the way to the <marker name='obj_control_room'>Control Room</marker>."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record2"; // Situation
