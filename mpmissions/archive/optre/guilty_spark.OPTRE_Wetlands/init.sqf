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

    if (isNil "flood_start") then {
        for "_i" from count waypoints my_bof - 1 to 0 step -1 do {
	    deleteWaypoint [my_bof, _i];
        };
        my_bof addWaypoint [getMarkerPos _marker, 0];
        [my_bof, 0] setWaypointType "HOLD";
        [my_bof, 0] setWaypointFormation "WEDGE";
    };
};

my_insert = {
    insert_start = true;
    publicVariable "insert_start";
};

my_extract_ingress = {
    extract_ingress = true;
    publicVariable "extract_ingress";

    extract1 addWaypoint [pad3, 0];
    [
        extract1, count waypoints extract1 - 1
    ] setWaypointType "SCRIPTED";
    [
        extract1, count waypoints extract1 - 1
    ] setWaypointScript "A3\functions_f\waypoints\fn_wpLand.sqf";

    extract2 addWaypoint [pad4, 0];
    [
        extract2, count waypoints extract2 - 1
    ] setWaypointType "SCRIPTED";
    [
        extract2, count waypoints extract2 - 1
    ] setWaypointScript "A3\functions_f\waypoints\fn_wpLand.sqf";

    for "_i" from count waypoints my_bof - 1 to 0 step -1 do {
	deleteWaypoint [my_bof, _i];
    };
    my_bof addWaypoint [getMarkerPos "bof_wait", 0];
    [my_bof, 0] setWaypointType "MOVE";
    // my_bof addWaypoint [getMarkerPos "bof_wait", 0];
    // [my_bof, 1] setWaypointType "GETIN";
    // [
    //     extract2, count waypoints extract2 - 1
    // ] synchronizeWaypoint [[my_bof, 0], [my_bof, 1]];
};

my_extract_egress = {
    extract_egress = true;
    publicVariable "extract_egress";
};

my_menu = [
    ["My Menu", true],
    [
        "Save Loadouts", [2], "", -5, [
            ["expression", "[] remoteExec [""my_loadouts_save"", 2]"]
        ], "1", "1"
    ],
    [
        "Begin Insert", [3], "", -5, [
            ["expression", "[] call my_insert"]
        ], "1", "1"
    ],
    [
        "Start ALiVE", [4], "", -5, [
            ["expression", "[] call my_alive;"]
        ], "1", "1"
    ],
    [
        "Extract Ingress", [5], "", -5, [
            ["expression", "[] call my_extract_ingress"]
        ], "1", "1"
    ],
    [
        "Extract Egress", [6], "", -5, [
            ["expression", "[] call my_extract_egress"]
        ], "1", "1"
    ]
];

my_flood = {
    if (!isServer) exitWith {};
    flood_start = true;
    publicVariable "flood_start";
    units my_bof apply { _x allowDamage true };

    private _n = 6;
    private _delay = 0.3;
    infection_group = createGroup independent;
    for "_i" from 0 to _n - 1 step 1 do {
        infection_group createUnit [
            "dev_flood_infection_i", skull1, [], 0, "CAN_COLLIDE"
        ] setDir getDir skull1;
        infection_group createUnit [
            "dev_flood_infection_i", skull2, [], 0, "CAN_COLLIDE"
        ] setDir getDir skull2;
        uiSleep _delay;
    };
};

my_skull = {
    if (!isServer) exitWith {};
    params ["_skull", "_radius", "_n"];
    private _delay = 0.3;
    private _group = createGroup independent;
    private _options = [
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_infection_i",
        "dev_flood_carrier_i",
        "dev_flood_carrier_i",
        "dev_flood_carrier_i",
        "dev_flood_carrier_i",
        "dev_flood_sangheili_i",
        "dev_flood_sangheili_i",
        "dev_flood_sangheili_i",
        "dev_flood_sangheili_i",
        "dev_flood_sangheili_t25_i",
        "dev_flood_sangheili_t25_i",
        "dev_flood_sangheili_t25_i",
        "dev_flood_sangheili_t25_i",
        "dev_flood_sangheili_at_i"
    ];
    for "_i" from 0 to _n - 1 step 1 do {
        private _option = selectRandom _options;
        _group createUnit [_option, _skull, [], _radius, "NONE"];
        uiSleep _delay;
    };
    uiSleep _delay;
    [_group, my_players] spawn BIS_fnc_stalk;
};
