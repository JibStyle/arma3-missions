my_rally = {
    params ["_player"];
    my_teleport_2 setVehiclePosition [
        getPos _player, [], 0, "NONE"
    ];
    "rally" setMarkerPos _player;
};

my_emitter_inf = {
    params ["_emitter", "_coef", "_conc", "_budget"];
    [
        _emitter, [1, 1, 1],
        0, 0, 0, _conc,
        0, 0, 0, _budget,
        1, 0, [0, 0, 0],
        _coef, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
};
my_emitter_mot = {
    params ["_emitter", "_coef", "_conc", "_budget"];
    [
        _emitter, [1, 1, 1],
        0, _conc, 0, 0,
        0, _budget, 0, 0,
        1, 0, [0, 0, 0],
        _coef, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
};
my_emitter_tra = {
    params ["_emitter", "_coef", "_conc", "_budget"];
    [
        _emitter, [1, 1, 1],
        0, _conc, 0, 0,
        0, _budget, 0, 0,
        1, 0, [0, 0, 0],
        _coef, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
};
my_emitter_air = {
    params ["_emitter", "_coef", "_conc", "_budget"];
    [
        _emitter, [1, 1, 1],
        0, _conc, 0, 0,
        0, _budget, 0, 0,
        1, 0, [0, 0, 0],
        _coef, 1, 0, 0, 0, 120
    ] call jib_emitter_enable;
};

my_phase = "start";
my_phase_1 = {
    [] call my_phase_off;
    my_phase = "1";
    [my_e_b_a_1, 1.0, 2, 0] call my_emitter_air;
    [my_e_b_i_1, 1.0, 24, 0] call my_emitter_inf;
    [my_e_b_m_1, 1.0, 1, 0] call my_emitter_mot;
    [my_e_b_t_1, 1.0, 1, 0] call my_emitter_tra;
    [my_e_o_a_1, 1.5, 2, 2] call my_emitter_air;
    [my_e_o_i_1, 1.5, 16, 48] call my_emitter_inf;
    [my_e_o_m_1, 1.5, 1, 6] call my_emitter_mot;
    [my_e_o_t_1, 1.5, 2, 4] call my_emitter_tra;
};
my_phase_2 = {
    [] call my_phase_off;
    my_phase = "2";
    [my_e_b_a_2, 1.0, 1, 0] call my_emitter_air;
    [my_e_b_i_2, 1.0, 24, 0] call my_emitter_inf;
    [my_e_b_m_2, 1.0, 1, 0] call my_emitter_mot;
    [my_e_b_t_2, 1.0, 1, 0] call my_emitter_tra;
    [my_e_o_a_2, 1.5, 1, 4] call my_emitter_air;
    [my_e_o_i_2, 1.5, 16, 48] call my_emitter_inf;
    [my_e_o_m_2, 1.5, 1, 6] call my_emitter_mot;
    [my_e_o_t_2, 1.5, 1, 4] call my_emitter_tra;
};
my_phase_3 = {
    [] call my_phase_off;
    my_phase = "3";
    [my_e_b_a_3, 1.0, 1, 0] call my_emitter_air;
    [my_e_b_i_3, 1.0, 16, 0] call my_emitter_inf;
    [my_e_b_m_3, 1.0, 1, 0] call my_emitter_mot;
    [my_e_b_t_3, 1.0, 1, 0] call my_emitter_tra;
    [my_e_o_a_3, 1.5, 1, 0] call my_emitter_air;
    [my_e_o_i_3, 1.5, 16, 0] call my_emitter_inf;
    [my_e_o_m_3, 1.5, 1, 0] call my_emitter_mot;
    [my_e_o_t_3, 1.5, 1, 0] call my_emitter_tra;
};
my_phase_4 = {
    [] call my_phase_off;
    my_phase = "4";
    [my_e_b_a_4, 1.0, 1, 0] call my_emitter_air;
    [my_e_b_i_4, 1.0, 12, 0] call my_emitter_inf;
    [my_e_b_m_4, 1.0, 1, 0] call my_emitter_mot;
    [my_e_b_t_4, 1.0, 1, 0] call my_emitter_tra;
    [my_e_o_a_4, 1.5, 1, 1] call my_emitter_air;
    [my_e_o_i_4, 1.5, 16, 48] call my_emitter_inf;
    [my_e_o_m_4, 1.5, 1, 1] call my_emitter_mot;
    [my_e_o_t_4, 1.5, 1, 1] call my_emitter_tra;
};
my_phase_off = {
    my_phase = "off";
    [
        my_e_b_a_1, my_e_b_a_2, my_e_b_a_3, my_e_b_a_4,
        my_e_b_i_1, my_e_b_i_2, my_e_b_i_3, my_e_b_i_4,
        my_e_b_m_1, my_e_b_m_2, my_e_b_m_3, my_e_b_m_4,
        my_e_b_t_1, my_e_b_t_2, my_e_b_t_3, my_e_b_t_4,
        my_e_o_a_1, my_e_o_a_2, my_e_o_a_3, my_e_o_a_4,
        my_e_o_i_1, my_e_o_i_2, my_e_o_i_3, my_e_o_i_4,
        my_e_o_m_1, my_e_o_m_2, my_e_o_m_3, my_e_o_m_4,
        my_e_o_t_1, my_e_o_t_2, my_e_o_t_3, my_e_o_t_4
    ] apply {[_x] call jib_emitter_disable};
};

my_task_1 = {
    [
        true, "task_1",
        [
            "Seize observation post at <marker name='obj_1'>OBJ 1</marker>.",
            "Seize OBJ 1", "obj_1"
        ],
        markerPos "obj_1", "CREATED", -1, true, "attack", false
    ] call BIS_fnc_taskCreate;
    [
        true, "task_2",
        [
            "Seize observation post at <marker name='obj_2'>OBJ 2</marker>.",
            "Seize OBJ 2", "obj_2"
        ],
        markerPos "obj_2", "CREATED", -1, true, "attack", false
    ] call BIS_fnc_taskCreate;
    [
        true, "task_3",
        [
            "Secure the town at <marker name='obj_3'>OBJ 3</marker>.",
            "Secure OBJ 3", "obj_3"
        ],
        markerPos "obj_3", "CREATED", -1, true, "attack", false
    ] call BIS_fnc_taskCreate;
    [
        true, "task_4",
        [
            "Patrol the forest at <marker name='obj_4'>OBJ 4</marker>.",
            "Patrol OBJ 4", "obj_4"
        ],
        markerPos "obj_4", "CREATED", -1, true, "attack", false
    ] call BIS_fnc_taskCreate;
    ["task_1", "ASSIGNED"] call BIS_fnc_taskSetState;
};
my_task_2 = {
    ["task_1", "SUCCEEDED"] call BIS_fnc_taskSetState;
    uiSleep 1;
    ["task_2", "ASSIGNED"] call BIS_fnc_taskSetState;
};
my_task_3 = {
    ["task_2", "SUCCEEDED"] call BIS_fnc_taskSetState;
    uiSleep 1;
    ["task_3", "ASSIGNED"] call BIS_fnc_taskSetState;
};
my_task_4 = {
    ["task_3", "SUCCEEDED"] call BIS_fnc_taskSetState;
    uiSleep 1;
    ["task_4", "ASSIGNED"] call BIS_fnc_taskSetState;
};
my_task_done = {
    ["task_4", "SUCCEEDED"] call BIS_fnc_taskSetState;
};
[] spawn my_task_1;

[] call jib_garbage_start;
