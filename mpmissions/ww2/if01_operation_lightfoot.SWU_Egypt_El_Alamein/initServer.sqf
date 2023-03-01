my_phase = "start";

my_p_1 = {
    my_phase = "1";

    [
        my_e_b_i_2, my_e_b_i_3, my_e_b_i_4, my_e_i_i_2, my_e_i_i_3, my_e_i_i_4
    ] apply {[_x] call jib_emitter_disable};

    [
        my_e_b_i_1, [1, 1, 1], // emitter, emission
        0, 0, 0, 12,         // concurrent B, V, G, U
        0, 0, 0, 0,          // budget B, V, G, U
        1, 0, [0, 0, 0],     // coef mem, coef rand, rand
        1, 1, 0, 0, 0, 120 // coef exp, exp, coef pow, pow, min, max
    ] call jib_emitter_enable;
    [
        my_e_b_m, [1, 1, 1],
        0, 4, 0, 8,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_b_a, [1, 1, 1],
        0, 2, 0, 0,
        0, 2, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;

    [
        my_e_i_i_1, [1, 1, 1],
        0, 0, 0, 12,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_i_m, [1, 1, 1],
        0, 4, 0, 8,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_i_a, [1, 1, 1],
        0, 2, 0, 0,
        0, 2, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
};

my_p_2 = {
    my_phase = "2";

    [
        my_e_b_i_1, my_e_b_i_3, my_e_b_i_4, my_e_i_i_1, my_e_i_i_3, my_e_i_i_4
    ] apply {[_x] call jib_emitter_disable};

    [
        my_e_b_i_2, [1, 1, 1], // emitter, emission
        0, 0, 0, 12,         // concurrent B, V, G, U
        0, 0, 0, 0,          // budget B, V, G, U
        1, 0, [0, 0, 0],     // coef mem, coef rand, rand
        1, 1, 0, 0, 0, 120 // coef exp, exp, coef pow, pow, min, max
    ] call jib_emitter_enable;
    [
        my_e_b_m, [1, 1, 1],
        0, 4, 0, 8,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_b_a, [1, 1, 1],
        0, 2, 0, 0,
        0, 2, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;

    [
        my_e_i_i_2, [1, 1, 1],
        0, 0, 0, 12,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_i_m, [1, 1, 1],
        0, 4, 0, 8,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_i_a, [1, 1, 1],
        0, 2, 0, 0,
        0, 2, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
};

my_p_3 = {
    my_phase = "3";

    [
        my_e_b_i_1, my_e_b_i_2, my_e_b_i_4, my_e_i_i_1, my_e_i_i_2, my_e_i_i_4
    ] apply {[_x] call jib_emitter_disable};

    [
        my_e_b_i_3, [1, 1, 1], // emitter, emission
        0, 0, 0, 12,         // concurrent B, V, G, U
        0, 0, 0, 0,          // budget B, V, G, U
        1, 0, [0, 0, 0],     // coef mem, coef rand, rand
        1, 1, 0, 0, 0, 120 // coef exp, exp, coef pow, pow, min, max
    ] call jib_emitter_enable;
    [
        my_e_b_m, [1, 1, 1],
        0, 4, 0, 8,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_b_a, [1, 1, 1],
        0, 2, 0, 0,
        0, 2, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;

    [
        my_e_i_i_3, [1, 1, 1],
        0, 0, 0, 12,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_i_m, [1, 1, 1],
        0, 4, 0, 8,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_i_a, [1, 1, 1],
        0, 2, 0, 0,
        0, 2, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
};

my_p_4 = {
    my_phase = "4";

    [
        my_e_b_i_1, my_e_b_i_2, my_e_b_i_3, my_e_i_i_1, my_e_i_i_2, my_e_i_i_3
    ] apply {[_x] call jib_emitter_disable};

    [
        my_e_b_i_4, [1, 1, 1], // emitter, emission
        0, 0, 0, 12,         // concurrent B, V, G, U
        0, 0, 0, 0,          // budget B, V, G, U
        1, 0, [0, 0, 0],     // coef mem, coef rand, rand
        1, 1, 0, 0, 0, 120 // coef exp, exp, coef pow, pow, min, max
    ] call jib_emitter_enable;
    [
        my_e_b_m, [1, 1, 1],
        0, 4, 0, 8,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_b_a, [1, 1, 1],
        0, 2, 0, 0,
        0, 2, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;

    [
        my_e_i_i_4, [1, 1, 1],
        0, 0, 0, 12,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_i_m, [1, 1, 1],
        0, 4, 0, 8,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
    [
        my_e_i_a, [1, 1, 1],
        0, 2, 0, 0,
        0, 2, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
};

my_p_off = {
    my_phase = "off";
    [
        my_e_b_i_1, my_e_b_i_2, my_e_b_i_3, my_e_b_i_4,
        my_e_i_i_1, my_e_i_i_2, my_e_i_i_3, my_e_i_i_4,
        my_e_b_m, my_e_b_a, my_e_i_m, my_e_i_a
    ] apply {[_x] call jib_emitter_disable};
};

jib_menu_mission = [
    ["Mission Menu", true],
    [
        "Phase 1", [2], "", -5,
        [["expression", "[] remoteExec [""my_p_1"", 2]"]],
        "1", "1"
    ],
    [
        "Phase 2", [3], "", -5,
        [["expression", "[] remoteExec [""my_p_2"", 2]"]],
        "1", "1"
    ],
    [
        "Phase 3", [4], "", -5,
        [["expression", "[] remoteExec [""my_p_3"", 2]"]],
        "1", "1"
    ],
    [
        "Phase 4", [5], "", -5,
        [["expression", "[] remoteExec [""my_p_4"", 2]"]],
        "1", "1"
    ],
    [
        "Phase Off", [6], "", -5,
        [["expression", "[] remoteExec [""my_p_off"", 2]"]],
        "1", "1"
    ]
];
publicVariable "jib_menu_mission";

my_reveal = {
    params ["_vehicle"];
    if (!isServer) exitWith {};
    [[_vehicle], {
        params ["_vehicle"];
        while {alive _vehicle} do {
            player reveal [_vehicle, 4];
            uiSleep 5;
        };
    }] remoteExec ["spawn", 0, true];
};

my_t_1 = {
    [] call my_p_1;
    ["t_1", "ASSIGNED"] call BIS_fnc_taskSetState;
};

my_t_2 = {
    [] call my_p_2;
    // "respawn" setMarkerPos markerPos "r_1";
    ["t_1", "SUCCEEDED"] call BIS_fnc_taskSetState;
    uiSleep 1;
    ["t_2", "ASSIGNED"] call BIS_fnc_taskSetState;
};

my_t_3 = {
    [] call my_p_3;
    // "respawn" setMarkerPos markerPos "r_2";
    ["t_2", "SUCCEEDED"] call BIS_fnc_taskSetState;
    uiSleep 1;
    ["t_3", "ASSIGNED"] call BIS_fnc_taskSetState;
};

my_t_4 = {
    [] call my_p_4;
    // "respawn" setMarkerPos markerPos "r_3";
    ["t_3", "SUCCEEDED"] call BIS_fnc_taskSetState;
    uiSleep 1;
    ["t_4", "ASSIGNED"] call BIS_fnc_taskSetState;
};

my_t_done = {
    [] call my_p_off;
    // "respawn" setMarkerPos markerPos "r_4";
    ["t_4", "SUCCEEDED"] call BIS_fnc_taskSetState;
};

    [
        true, "t_1",
        [
            "Seize trench network at <marker name='obj_1'>OBJ 1</marker>.",
            "Seize OBJ 1", "obj_1"
        ],
        markerPos "obj_1", "CREATED", -1, true, "attack", false
    ] call BIS_fnc_taskCreate;
    [
        true, "t_2",
        [
            "Seize trench network at <marker name='obj_2'>OBJ 2</marker>.",
            "Seize OBJ 2", "obj_2"
        ],
        markerPos "obj_2", "CREATED", -1, true, "attack", false
    ] call BIS_fnc_taskCreate;
    [
        true, "t_3",
        [
            "Seize fortified hill at <marker name='obj_3'>OBJ 3</marker>.",
            "Seize OBJ 3", "obj_3"
        ],
        markerPos "obj_3", "CREATED", -1, true, "attack", false
    ] call BIS_fnc_taskCreate;
    [
        true, "t_4",
        [
            "Seize trench network at <marker name='obj_4'>OBJ 4</marker>.",
            "Seize OBJ 4", "obj_4"
        ],
        markerPos "obj_4", "CREATED", -1, true, "attack", false
    ] call BIS_fnc_taskCreate;
[false] remoteExec ["enableRadio", 0, true];
[] spawn my_t_1;
[] call jib_garbage_start;
