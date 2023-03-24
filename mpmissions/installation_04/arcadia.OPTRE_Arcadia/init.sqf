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

my_spawn_debug = true;
my_city_blu_limit = 50;
my_city_opf_limit = 50;
my_valley_blu_limit = 50;
my_valley_opf_limit = 50;

my_menu_city_blu_start = {
    my_city_blu_enabled = true;
    publicVariable "my_city_blu_enabled";
};

my_menu_city_opf_start = {
    my_city_opf_enabled = true;
    publicVariable "my_city_opf_enabled";
};

my_menu_city_blu_end = {
    my_city_blu_enabled = false;
    publicVariable "my_city_blu_enabled";
};

my_menu_city_opf_end = {
    my_city_opf_enabled = false;
    publicVariable "my_city_opf_enabled";
};

my_menu_city_cleanup = {
    my_city_blu_enabled = false;
    publicVariable "my_city_blu_enabled";
    my_city_opf_enabled = false;
    publicVariable "my_city_opf_enabled";
    my_city_cleanup = true;
    publicVariable "my_city_cleanup";
};

my_menu_valley_blu_start = {
    my_valley_blu_enabled = true;
    publicVariable "my_valley_blu_enabled";
};

my_menu_valley_opf_start = {
    my_valley_opf_enabled = true;
    publicVariable "my_valley_opf_enabled";
};

my_menu_valley_blu_end = {
    my_valley_blu_enabled = false;
    publicVariable "my_valley_blu_enabled";
};

my_menu_valley_opf_end = {
    my_valley_opf_enabled = false;
    publicVariable "my_valley_opf_enabled";
};

my_menu_valley_cleanup = {
    my_valley_blu_enabled = false;
    publicVariable "my_valley_blu_enabled";
    my_valley_opf_enabled = false;
    publicVariable "my_valley_opf_enabled";
    my_valley_cleanup = true;
    publicVariable "my_valley_cleanup";
};

my_menu_objective_tyrant = {
    [obj_tyrant, skull] remoteExec ["my_objective_tyrant", 2];
};

my_menu_objective_nuke = {
    [] remoteExec ["my_objective_nuke", 2];
};

my_menu = [
    ["Mission", true],
    ["City", [2], "#USER:my_menu_city", -5, [], "1", "1"],
    ["Valley", [3], "#USER:my_menu_valley", -5, [], "1", "1"],
    ["Objective", [4], "#USER:my_menu_objective", -5, [], "1", "1"]
];

my_menu_city = [
    ["City", true],
    [
        "BLU Start", [2], "", -5, [
            ["expression", "[] call my_menu_city_blu_start"]
        ], "1", "1"
    ],
    [
        "OPF Start", [3], "", -5, [
            ["expression", "[] call my_menu_city_opf_start"]
        ], "1", "1"
    ],
    [
        "BLU End", [4], "", -5, [
            ["expression", "[] call my_menu_city_blu_end"]
        ], "1", "1"
    ],
    [
        "OPF End", [5], "", -5, [
            ["expression", "[] call my_menu_city_opf_end"]
        ], "1", "1"
    ],
    [
        "Cleanup", [6], "", -5, [
            ["expression", "[] call my_menu_city_cleanup;"]
        ], "1", "1"
    ]
];

my_menu_valley = [
    ["Valley", true],
    [
        "BLU Start", [2], "", -5, [
            ["expression", "[] call my_menu_valley_blu_start"]
        ], "1", "1"
    ],
    [
        "OPF Start", [3], "", -5, [
            ["expression", "[] call my_menu_valley_opf_start"]
        ], "1", "1"
    ],
    [
        "BLU End", [4], "", -5, [
            ["expression", "[] call my_menu_valley_blu_end"]
        ], "1", "1"
    ],
    [
        "OPF End", [5], "", -5, [
            ["expression", "[] call my_menu_valley_opf_end"]
        ], "1", "1"
    ],
    [
        "Cleanup", [6], "", -5, [
            ["expression", "[] call my_menu_valley_cleanup;"]
        ], "1", "1"
    ],
    [
        "Detonate Nuke", [7], "", -5, [
            ["expression", "[] call my_menu_valley_nuke;"]
        ], "1", "1"
    ]
];

my_menu_objective = [
    ["Objective", true],
    [
        "Enable Tyrant", [2], "", -5, [
            ["expression", "[] call my_menu_objective_tyrant"]
        ], "1", "1"
    ],
    [
        "Detaonate Nuke", [3], "", -5, [
            ["expression", "[] call my_menu_objective_nuke"]
        ], "1", "1"
    ]
];
