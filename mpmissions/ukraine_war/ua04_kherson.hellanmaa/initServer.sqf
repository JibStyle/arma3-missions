[emitter_blu_1, -1, -1, -1, 2] call jib_emitter_limit;
[emitter_blu_2, -1, -1, -1, 24] call jib_emitter_limit;
[emitter_blu_3, -1, 1, -1, -1] call jib_emitter_limit;
[emitter_blu_4, -1, -1, -1, 24] call jib_emitter_limit;
[emitter_opf_1, -1, -1, -1, 24] call jib_emitter_limit;
[emitter_opf_2, -1, 1, -1, -1] call jib_emitter_limit;
[emitter_opf_3, -1, -1, -1, 24] call jib_emitter_limit;
my_phase = "start";

my_phase_village = {
    my_phase = "village";
    [emitter_blu_1] spawn jib_emitter_enable;
    [emitter_blu_2] spawn jib_emitter_enable;
    [emitter_blu_3] spawn jib_emitter_enable;
    [emitter_blu_4] spawn jib_emitter_disable;
    [emitter_opf_1] spawn jib_emitter_enable;
    [emitter_opf_2] spawn jib_emitter_enable;
    [emitter_opf_3] spawn jib_emitter_disable;
};

my_phase_industrial = {
    my_phase = "industrial";
    [emitter_blu_1] spawn jib_emitter_enable;
    [emitter_blu_2] spawn jib_emitter_disable;
    [emitter_blu_3] spawn jib_emitter_enable;
    [emitter_blu_4] spawn jib_emitter_enable;
    [emitter_opf_1] spawn jib_emitter_disable;
    [emitter_opf_2] spawn jib_emitter_enable;
    [emitter_opf_3] spawn jib_emitter_enable;
};

my_phase_off = {
    my_phase = "off";
    [emitter_blu_1] spawn jib_emitter_disable;
    [emitter_blu_2] spawn jib_emitter_disable;
    [emitter_blu_3] spawn jib_emitter_disable;
    [emitter_blu_4] spawn jib_emitter_disable;
    [emitter_opf_1] spawn jib_emitter_disable;
    [emitter_opf_2] spawn jib_emitter_disable;
    [emitter_opf_3] spawn jib_emitter_disable;
};

jib_menu_mission = [
    ["Mission Menu", true],
    [
        "Phase Village", [2], "", -5,
        [["expression", "[] remoteExec [""my_phase_village"", 2]"]],
        "1", "1"
    ],
    [
        "Phase Industrial", [3], "", -5,
        [["expression", "[] remoteExec [""my_phase_industrial"", 2]"]],
        "1", "1"
    ],
    [
        "Phase Off", [4], "", -5,
        [["expression", "[] remoteExec [""my_phase_off"", 2]"]],
        "1", "1"
    ]
];
publicVariable "jib_menu_mission";

my_simplex_init = {
    params ["_vehicle"];
    if (!isServer) exitWith {};
    if (!canSuspend) then {throw "Cannot suspend!"};
    _vehicle addItemCargoGlobal ["ACE_EarPlugs", 8];
    [_vehicle, 5] call ace_cargo_fnc_setSpace;
    [
        [emitter_crate_ammo] call jib_emitter_crate, _vehicle, true
    ] call ace_cargo_fnc_loadItem;
    [
        [emitter_crate_medical] call jib_emitter_crate, _vehicle, true
    ] call ace_cargo_fnc_loadItem;
};
publicVariable "my_simplex_init";

[] call jib_garbage_start;
