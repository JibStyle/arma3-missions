my_rally = {
    params ["_player"];
    my_teleport_1 hideObjectGlobal false;
    my_teleport_2 hideObjectGlobal false;
    my_teleport_2 setVehiclePosition [
        getPos _player, [], 0, "NONE"
    ];
    "rally" setMarkerAlphaLocal 1;
    "rally" setMarkerPos _player;
};

my_phase = "start";
my_phase_o_a = {
    [] call my_phase_off;
    my_phase = "OPF Air";
    [
        my_e_o_a, [1, 1, 1],
        0, 1, 0, 0,
        0, 0, 0, 0,
        0, 1, [300, 300, 1200],
        1.2, 1, 0, 0, 300, 1200
    ] call jib_emitter_enable;
};
my_phase_b_m = {
    [] call my_phase_off;
    my_phase = "BLU Motorized";
    [
        my_e_b_m, [1, 1, 1],
        0, 2, 0, 24,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 5, 5
    ] call jib_emitter_enable;
};
my_phase_both = {
    [] call my_phase_off;
    my_phase = "BLU Motorized + OPF Air";
    [
        my_e_b_m, [1, 1, 1],
        0, 2, 0, 24,
        0, 0, 0, 0,
        1, 0, [0, 0, 0],
        1, 1, 0, 0, 5, 5
    ] call jib_emitter_enable;
    [
        my_e_o_a, [1, 1, 1],
        0, 1, 0, 0,
        0, 0, 0, 0,
        0, 1, [300, 300, 1200],
        1.2, 1, 0, 0, 300, 1200
    ] call jib_emitter_enable;
};
my_phase_off = {
    my_phase = "off";
    [my_e_b_m, my_e_o_a] apply {[_x] call jib_emitter_disable};
};

[] call jib_garbage_start;

my_task_create = {
    [
        true, "task_1",
        [
            "Patrol <marker name='obj_acacia'>OBJ Acacia</marker> for Russian presence.",
            "Patrol OBJ Acacia", "obj_acacia"
        ],
        markerPos "obj_acacia", "CREATED", -1, true, "scout", false
    ] call BIS_fnc_taskCreate;
    [
        true, "task_2",
        [
            "Patrol <marker name='obj_birch'>OBJ Birch</marker> for Russian presence.",
            "Patrol OBJ Birch", "obj_birch"
        ],
        markerPos "obj_birch", "CREATED", -1, true, "scout", false
    ] call BIS_fnc_taskCreate;
    [
        true, "task_3",
        [
            "Patrol <marker name='obj_cedar'>OBJ Cedar</marker> for Russian presence.",
            "Patrol OBJ Cedar", "obj_cedar"
        ],
        markerPos "obj_cedar", "CREATED", -1, true, "scout", false
    ] call BIS_fnc_taskCreate;
    [
        true, "task_4",
        [
            "Assist Echo 1 from the southwest to secure <marker name='obj_driftwood'>OBJ Driftwood</marker>.",
            "Secure OBJ Driftwood", "obj_driftwood"
        ],
        markerPos "obj_driftwood", "CREATED", -1, true, "attack", false
    ] call BIS_fnc_taskCreate;
    ["task_1", "ASSIGNED"] call BIS_fnc_taskSetState;
};
my_task_done_1 = {
    ["task_1", "SUCCEEDED"] call BIS_fnc_taskSetState;
    ["task_2", "ASSIGNED"] call BIS_fnc_taskSetState;
};
my_task_done_2 = {
    ["task_2", "SUCCEEDED"] call BIS_fnc_taskSetState;
    ["task_3", "ASSIGNED"] call BIS_fnc_taskSetState;
};
my_task_done_3 = {
    ["task_3", "SUCCEEDED"] call BIS_fnc_taskSetState;
    ["task_4", "ASSIGNED"] call BIS_fnc_taskSetState;
};
my_task_done_4 = {
    ["task_4", "SUCCEEDED"] call BIS_fnc_taskSetState;
    [] spawn {
        uiSleep 10;
        [] remoteExec ["BIS_fnc_endMission", 0, true];
    };
};
[] spawn my_task_create;
