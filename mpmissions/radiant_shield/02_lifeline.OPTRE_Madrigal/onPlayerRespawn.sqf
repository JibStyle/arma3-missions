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
//                             "Mission Done", "", "1", false,
//                             [
//                                 "Confirm Mission Done?",
//                                 [
//                                     [
//                                         "Mission Done", toString {
//                                             mission_done = true;
//                                             publicVariable "mission_done";
//                                         }, "1"
//                                     ]
//                                 ]
//                             ]
//                         ]
//                     ]
//                 ]
//             ],
//             [
//                 "Emitters CAS", "", "1", false,
//                 [
//                     "Emitters CAS",
//                     [
//                         [
//                             "BLU Sparrowhawk", toString {
//                                 [my_e_b_air] remoteExec [
//                                     "jib_emitter_single", 2
//                                 ];
//                             }, "1", true
//                         ],
//                         [
//                             "OPF Banshee", toString {
//                                 [my_e_o_air] remoteExec [
//                                     "jib_emitter_single", 2
//                                 ];
//                             }, "1", true
//                         ]
//                     ]
//                 ]
//             ]
//         ]
//     ]
// ] call jib_menu_dynamic_action;
