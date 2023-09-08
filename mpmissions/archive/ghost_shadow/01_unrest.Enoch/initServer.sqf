// [
//     [map_1, map_2, map_3],
//     [
//         [
//             ["obj_hq"],
//             [my_arrow_coy_0, my_arrow_coy_1]
//         ],
//         [
//             ["obj_op_1", "obj_op_2", "obj_op_3", "obj_op_4"],
//             [my_arrow_op_0, my_arrow_op_1, my_arrow_op_2, my_arrow_op_3]
//         ],
//         [
//             ["obj_plt_1", "obj_plt_2", "obj_plt_3"],
//             [
//                 my_arrow_plt_0, my_arrow_plt_1, my_arrow_plt_2,
//                 my_arrow_plt_3, my_arrow_plt_4, my_arrow_plt_5
//             ]
//         ]
//     ],
//     {"German garrisons marked on your map."}
// ] call jib_objective_intel;

// my_emitter_menu = [
//     "Emitters",
//     [
//         ["B Mot", "[] remoteExec [""my_emitter_b_mot"", 2]", "1", true],
//         ["B Arm", "[] remoteExec [""my_emitter_b_arm"", 2]", "1", true],
//         ["B Air", "[] remoteExec [""my_emitter_b_air"", 2]", "1", true],
//         ["O Air", "[] remoteExec [""my_emitter_o_air"", 2]", "1", true],
//         ["Off", "[] remoteExec [""my_emitter_off"", 2]", "1", true],
//         ["B Mot 1", "[] remoteExec [""my_emitter_b_mot_1"", 2]", "1", true],
//         ["B Arm 1", "[] remoteExec [""my_emitter_b_arm_1"", 2]", "1", true],
//         ["B Air 1", "[] remoteExec [""my_emitter_b_air_1"", 2]", "1", true],
//         ["O Air 1", "[] remoteExec [""my_emitter_o_air_1"", 2]", "1", true]
//     ]
// ];
// publicVariable "my_emitter_menu";
// my_emitter_b_mot = {
//     private _emitter = my_e_b_mot;
//     [
//         _emitter, [1, 1, 1],
//         0, 1, 0, 8,
//         0, 0, 0, 0,
//         0, 1, [300, 600, 1200],
//         1, 1, 0, 0, 0, 1200
//     ] call jib_emitter_enable;
// };
// my_emitter_b_arm = {
//     private _emitter = my_e_b_arm;
//     [
//         _emitter, [1, 1, 1],
//         0, 1, 0, 8,
//         0, 0, 0, 0,
//         0, 1, [300, 600, 1200],
//         1, 1, 0, 0, 0, 1800
//     ] call jib_emitter_enable;
// };
// my_emitter_b_air = {
//     private _emitter = my_e_b_air;
//     [
//         _emitter, [1, 1, 1],
//         0, 1, 0, 8,
//         0, 0, 0, 0,
//         0, 1, [300, 600, 1200],
//         1, 1, 0, 0, 0, 1200
//     ] call jib_emitter_enable;
// };
// my_emitter_o_air = {
//     private _emitter = my_e_o_air;
//     [
//         _emitter, [1, 1, 1],
//         0, 1, 0, 8,
//         0, 0, 0, 0,
//         0, 1, [300, 600, 1200],
//         1, 1, 0, 0, 0, 1200
//     ] call jib_emitter_enable;
// };
// my_emitter_off = {
//     [my_e_b_mot, my_e_b_arm, my_e_b_air, my_e_o_air] apply {
//         [_x] call jib_emitter_disable;
//     };
// };
// my_emitter_b_mot_1 = {
//     private _emitter = my_e_b_mot;
//     [_emitter] call jib_emitter_single;
// };
// my_emitter_b_arm_1 = {
//     private _emitter = my_e_b_arm;
//     [_emitter] call jib_emitter_single;
// };
// my_emitter_b_air_1 = {
//     private _emitter = my_e_b_air;
//     [_emitter] call jib_emitter_single;
// };
// my_emitter_o_air_1 = {
//     private _emitter = my_e_o_air;
//     [_emitter] call jib_emitter_single;
// };
