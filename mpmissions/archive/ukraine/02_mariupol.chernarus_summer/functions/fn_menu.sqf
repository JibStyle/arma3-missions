my_alive_opcomDisable = {};
my_alive_opcomEnable = {};
my_alive_profileDisable = {};
my_alive_profileEnable = {};
my_alive_registerDisable = {};
my_alive_registerEnable = {};
my_zeus_admin = {};

my_menu = [
    ["Mission", true],
    ["ALiVE", [2], "#USER:my_menu_alive", -5, [], "1", "1"],
    ["Spawn Emitters", [3], "#USER:my_menu_spawn", -5, [], "1", "1"],
    ["Edit Group", [4], "#USER:my_menu_group", -5, [], "1", "1"]
];

my_menu_alive = [
    ["ALiVE", true],
    [
        "ALiVE Start", [2], "", -5, [
            ["expression", "[] call my_menu_alive_start"]
        ], "1", "1"
    ],
    [
        "ALiVE Stop", [3], "", -5, [
            ["expression", "[] call my_menu_alive_stop"]
        ], "1", "1"
    ],
    [
        "ALiVE Register Enable", [4], "", -5, [
            ["expression", "[] call my_menu_alive_registerEnable"]
        ], "1", "1"
    ],
    [
        "ALiVE Register Disable", [5], "", -5, [
            ["expression", "[] call my_menu_alive_registerDisable"]
        ], "1", "1"
    ]
];

my_menu_alive_start = {
    [[], {
        [] call my_alive_profileEnable;
        [] call my_alive_opcomEnable;
    }] remoteExec ["spawn", 2];
};

my_menu_alive_stop = {
    [[], {
        [] call my_alive_profileDisable;
        [] call my_alive_opcomDisable;
    }] remoteExec ["spawn", 2];
};

my_menu_alive_registerEnable = {
    [] remoteExec ["my_alive_registerEnable", 2];
};

my_menu_alive_registerDisable = {
    [] remoteExec ["my_alive_registerDisable", 2];
};

my_menu_spawn = [
    ["Spawn Emitters", true],
    [
        "BLU Start", [2], "", -5,
        [["expression", "call my_menu_spawn_blu_start"]], "1", "1"
    ],
    [
        "BLU Stop", [3], "", -5,
        [["expression", "call my_menu_spawn_blu_stop"]], "1", "1"
    ],
    [
        "OPF Start", [4], "", -5,
        [["expression", "call my_menu_spawn_opf_start"]], "1", "1"
    ],
    [
        "OPF Stop", [5], "", -5,
        [["expression", "call my_menu_spawn_opf_stop"]], "1", "1"
    ]
];

my_menu_spawn_blu_start = {
    my_blu_enabled_1 = true;
    publicVariable "my_blu_enabled_1";
};

my_menu_spawn_blu_stop = {
    my_blu_enabled_1 = false;
    publicVariable "my_blu_enabled_1";
};

my_menu_spawn_opf_start = {
    my_opf_enabled_1 = true;
    publicVariable "my_opf_enabled_1";
};

my_menu_spawn_opf_stop = {
    my_opf_enabled_1 = false;
    publicVariable "my_opf_enabled_1";
};

my_menu_group = [
    ["Edit Group", true],
    [
        "Selected Units to Top", [2], "", -5,
        [["expression", "call my_menu_group_top"]], "1", "1"
    ],
    [
        "Selected Units to Bottom", [3], "", -5,
        [["expression", "call my_menu_group_bottom"]], "1", "1"
    ]
];

my_menu_group_top = {
    [player, groupSelectedUnits player] remoteExec [
        "jib_service_top", 2
    ];
    showCommandingMenu "#USER:my_menu_group";
};

my_menu_group_bottom = {
    [player, groupSelectedUnits player] remoteExec [
        "jib_service_bottom", 2
    ];
    showCommandingMenu "#USER:my_menu_group";
};

my_menu_setup = {
    if (!isServer) exitWith {};
    if (!canSuspend) exitWith {};
    waitUntil { sleep 1; alive ([] call my_zeus_admin) };
    private _admin = [] call my_zeus_admin;
    [_admin, "my_menu"] remoteExecCall [
        "BIS_fnc_addCommMenuItem", _admin
    ];
};

[] spawn my_menu_setup;
