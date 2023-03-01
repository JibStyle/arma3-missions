my_spawn_debug = true;
my_blu_limit_1 = 30;
my_opf_limit_1 = 60;

my_blu_limit_2 = 50;
my_blu_limit_3 = 50;
my_blu_limit_4 = 50;
my_opf_limit_2 = 50;
my_opf_limit_3 = 50;
my_opf_limit_4 = 50;

my_alive = {
    [[], {
        [] call jib_alive_profileEnable;
        [] call jib_alive_opcomEnable;
    }] remoteExec ["spawn", 2];
};

my_respawn_activate = {
    if (!isServer) exitWith {};
    params ["_num"];

    "my_respawn_1" setMarkerAlpha 1;
    "my_respawn_2" setMarkerAlpha 1;
    "my_respawn_3" setMarkerAlpha 1;
    "my_respawn_4" setMarkerAlpha 1;
    "my_respawn_5" setMarkerAlpha 1;
    "my_respawn_6" setMarkerAlpha 1;
    "my_respawn_7" setMarkerAlpha 1;
    "my_respawn_8" setMarkerAlpha 1;
    "my_respawn_9" setMarkerAlpha 1;

    private _marker = format ["my_respawn_%1", _num];
    _marker setMarkerAlpha 0;
    "respawn" setMarkerPos getMarkerPos _marker;
    "respawn" setMarkerText markerText _marker;
};

my_menu_ao_1_blu_start = {
    my_blu_enabled_1 = true;
    publicVariable "my_blu_enabled_1";
};

my_menu_ao_1_opf_start = {
    my_opf_enabled_1 = true;
    publicVariable "my_opf_enabled_1";
};

my_menu_ao_1_blu_end = {
    my_blu_enabled_1 = false;
    publicVariable "my_blu_enabled_1";
};

my_menu_ao_1_opf_end = {
    my_opf_enabled_1 = false;
    publicVariable "my_opf_enabled_1";
};

my_menu_ao_1_cleanup = {
    my_blu_enabled_1 = false;
    publicVariable "my_blu_enabled_1";
    my_opf_enabled_1 = false;
    publicVariable "my_opf_enabled_1";
    my_cleanup_1 = true;
    publicVariable "my_cleanup_1";
};

my_menu = [
    ["Mission", true],
    ["AO 1", [2], "#USER:my_menu_ao_1", -5, [], "1", "1"],
    ["AO 2", [3], "#USER:my_menu_ao_2", -5, [], "1", "1"],
    ["Objective", [4], "#USER:my_menu_objective", -5, [], "1", "1"]
];

my_menu_ao_1 = [
    ["Alpha", true],
    [
        "BLU Start", [2], "", -5, [
            ["expression", "[] call my_menu_ao_1_blu_start"]
        ], "1", "1"
    ],
    [
        "OPF Start", [3], "", -5, [
            ["expression", "[] call my_menu_ao_1_opf_start"]
        ], "1", "1"
    ],
    [
        "BLU End", [4], "", -5, [
            ["expression", "[] call my_menu_ao_1_blu_end"]
        ], "1", "1"
    ],
    [
        "OPF End", [5], "", -5, [
            ["expression", "[] call my_menu_ao_1_opf_end"]
        ], "1", "1"
    ],
    [
        "Cleanup", [6], "", -5, [
            ["expression", "[] call my_menu_ao_1_cleanup;"]
        ], "1", "1"
    ]
];

my_menu_ao_2 = [
    ["Bravo", true]
];

my_menu_objective = [
    ["Objective", true],
    [
        "TODO", [2], "", -5, [
            ["expression", ""]
        ], "1", "1"
    ]
];
