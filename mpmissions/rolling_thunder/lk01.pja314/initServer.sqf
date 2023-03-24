my_phase = "start";

my_p_on = {
    my_phase = "on";
    [
        my_e_e_inf, [1, 1, 2], // emitter, emission
        0, 0, 0, 16,         // concurrent B, V, G, U
        0, 0, 0, 100,          // budget B, V, G, U
        1, 0, [0, 0, 0],     // coef mem, coef rand, rand
        1, 1.2, 0, 0, 0, 120 // coef exp, exp, coef pow, pow, min, max
    ] call jib_emitter_enable;
    [
        my_e_e_mot, [1, 1, 1], // emitter, emission
        0, 2, 0, 9,         // concurrent B, V, G, U
        0, 6, 0, 0,          // budget B, V, G, U
        1, 0, [0, 0, 0],     // coef mem, coef rand, rand
        1, 1.2, 0, 0, 0, 120 // coef exp, exp, coef pow, pow, min, max
    ] call jib_emitter_enable;
};

my_p_off = {
    my_phase = "off";
    [my_e_e_inf] call jib_emitter_disable;
    [my_e_e_mot] call jib_emitter_disable;
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
