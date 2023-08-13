player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Hitman: CIA strike team"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Insert via Little Bird on Towers 1 and 2.<br/>
2. Access computer in Security room.<br/>
3. Rescue VIP William Morgan.<br/>
4. Extract via Ghosthawk."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Access the Security room, locate VIP William Morgan, and extract via Ghosthawk."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "CIA operator William Morgan has been captured by the Abramian Army and is held prisoner in a gulag. There are 4 Cell Blocks and his location can be accessed in the warden's computer in the Security building. Morgan holds critical information and it is time sensitive that we rescue him at once. We will fly in 2 sticks of CIA operators and land them on Towers 1 and 2. They will clear out the gulag, access the Security room, and free Morgan. Once Morgan is found, a Ghosthawk will provide immediate extract. This will be a risky operation, so be fast and decisive."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation

// [
//     player,
//     jib_menu_condition_admin,
//     [
//         "Mission Menu",
//         [
//             [
//                 "Emitters", "", "1", false,
//                 [
//                     "Emitters",
//                     [
//                         [
//                             "Airborne", toString {
//                                 [my_e_o_tra] remoteExec [
//                                     "jib_emitter_single", 2
//                                 ];
//                             }, "1", true
//                         ]
//                     ]
//                 ]
//             ],
//             [
//                 "Tasks", "", "1", false,
//                 [
//                     "Tasks",
//                     [
//                         [
//                             "Mission Success", "", "1", false,
//                             [
//                                 "Confirm Mission Success?",
//                                 [
//                                     [
//                                         "Mission Success", toString {
//                                             ["End1"] remoteExec [
//                                                 "BIS_fnc_endMission", 0, true
//                                             ];
//                                         }, "1"
//                                     ]
//                                 ]
//                             ]
//                         ]
//                     ]
//                 ]
//             ]
//         ]
//     ]
// ] call jib_menu_dynamic_action;
