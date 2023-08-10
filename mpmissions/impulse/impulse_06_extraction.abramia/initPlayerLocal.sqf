// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Signal_title",
//         "- Nomad: Rebel squad"
//     ]
// ];
// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Execution_title",
//         "1. Optional: Destroy comms tower<br/>
// 2. Steal fuel truck<br/>
// 3. Fill up at <marker name='factory'>Factory</marker><br/>
// 4. Deliver truck to <marker name='safehouse'>Safehouse</marker>"
//     ]
// ];
// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Mission_title",
//         "Steal the fuel truck, fill it up at the <marker name='factory'>Factory</marker>, and bring it to our <marker name='safehouse'>Safehouse</marker>."
//     ]
// ];
// player createDiaryRecord [
//     "Diary",
//     [
//         localize "STR_A3_Diary_Situation_title",
//         "Our rebellion is running dangerously low on fuel needed to sustain motorized operations. If we can fill and steal a fuel truck from the enemy, it will significantly increase our mobility. The town of Belucco is lightly guarded and provides an opportunity. By destroying the local <marker name='obj_tower'>Comms Tower</marker>, we can prevent the enemy from calling in QRF. There is a fuel truck in either the <marker name='station'>Fire Station</marker> or the <marker name='warehouse'>Warehouse</marker>. It is stored empty, so we must fill it up at the nearby <marker name='factory'>Factory</marker>. Once filled, we will bring it back to our nearby <marker name='safehouse'>Safehouse</marker>."
//     ]
// ];
// uiSleep 1;
// player selectDiarySubject "Diary:Record3"; // Situation

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
