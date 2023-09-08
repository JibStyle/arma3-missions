// params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

// [
//     _newUnit,
//     jib_menu_condition_admin,
//     [
//         "Mission Menu",
//         [
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
