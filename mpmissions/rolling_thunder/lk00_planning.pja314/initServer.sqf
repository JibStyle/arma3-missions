my_phase = "start";

my_p_on = {
    my_phase = "on";
    [my_e_w_inf] call jib_emitter_enable_infantry;
    [my_e_w_mot] call jib_emitter_enable_motorized;
    [my_e_w_mec] call jib_emitter_enable_motorized;
    [my_e_w_arm] call jib_emitter_enable_motorized;
    [my_e_w_air] call jib_emitter_enable_air;
    [my_e_e_inf] call jib_emitter_enable_infantry;
    [my_e_e_mot] call jib_emitter_enable_motorized;
    [my_e_e_mec] call jib_emitter_enable_motorized;
    [my_e_e_arm] call jib_emitter_enable_motorized;
    [my_e_e_air] call jib_emitter_enable_air;
};

my_p_off = {
    my_phase = "off";
    [my_e_w_inf] call jib_emitter_disable;
    [my_e_w_mot] call jib_emitter_disable;
    [my_e_w_mec] call jib_emitter_disable;
    [my_e_w_arm] call jib_emitter_disable;
    [my_e_w_air] call jib_emitter_disable;
    [my_e_e_inf] call jib_emitter_disable;
    [my_e_e_mot] call jib_emitter_disable;
    [my_e_e_mec] call jib_emitter_disable;
    [my_e_e_arm] call jib_emitter_disable;
    [my_e_e_air] call jib_emitter_disable;
};

jib_menu_mission = [
    ["Mission Menu", true],
    [
        "Phase On", [2], "", -5,
        [["expression", "[] remoteExec [""my_p_on"", 2]"]],
        "1", "1"
    ],
    [
        "Phase Off", [3], "", -5,
        [["expression", "[] remoteExec [""my_p_off"", 2]"]],
        "1", "1"
    ]
];
publicVariable "jib_menu_mission";

[] call jib_garbage_start;
