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
    ["Capture", [3], "#USER:my_menu_capture", -5, [], "1", "1"],
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

my_menu_capture = [
    ["Capture", true],
    [
        "Start", [2], "", -5, [
            ["expression", "[] call my_menu_capture_start"]
        ], "1", "1"
    ],
    [
        "Stop", [3], "", -5, [
            ["expression", "[] call my_menu_capture_stop"]
        ], "1", "1"
    ]
];

my_menu_capture_start = {
    [] remoteExec ["my_objective_capture_start", 0];
};
my_menu_capture_stop = {
    [] remoteExec ["my_objective_capture_stop", 0];
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

my_menu_ant = [
    ["Ant", true],
    [
        "Start", [2], "", -5, [
            ["expression", "[] call my_menu_ant_start"]
        ], "1", "1"
    ],
    [
        "Stop", [3], "", -5, [
            ["expression", "[] call my_menu_ant_stop"]
        ], "1", "1"
    ]
];

my_menu_ant_start = {};
my_menu_ant_stop = {};

my_menu_bear = [
    ["Bear", true],
    [
        "Start", [2], "", -5, [
            ["expression", "[] call my_menu_bear_start"]
        ], "1", "1"
    ],
    [
        "Stop", [3], "", -5, [
            ["expression", "[] call my_menu_bear_stop"]
        ], "1", "1"
    ]
];

my_menu_bear_start = {};
my_menu_bear_stop = {};

my_menu_crow = [
    ["Crow", true],
    [
        "Start", [2], "", -5, [
            ["expression", "[] call my_menu_crow_start"]
        ], "1", "1"
    ],
    [
        "Stop", [3], "", -5, [
            ["expression", "[] call my_menu_crow_stop"]
        ], "1", "1"
    ]
];

my_menu_crow_start = {};
my_menu_crow_stop = {};

my_menu_deer = [
    ["Deer", true],
    [
        "Start", [2], "", -5, [
            ["expression", "[] call my_menu_deer_start"]
        ], "1", "1"
    ],
    [
        "Stop", [3], "", -5, [
            ["expression", "[] call my_menu_deer_stop"]
        ], "1", "1"
    ]
];

my_menu_deer_start = {};
my_menu_deer_stop = {};

my_menu_eagle = [
    ["Eagle", true],
    [
        "Start", [2], "", -5, [
            ["expression", "[] call my_menu_eagle_start"]
        ], "1", "1"
    ],
    [
        "Stop", [3], "", -5, [
            ["expression", "[] call my_menu_eagle_stop"]
        ], "1", "1"
    ]
];

my_menu_eagle_start = {};
my_menu_eagle_stop = {};

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
