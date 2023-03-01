my_spawn_delay = 0.3;

my_spawn_register_batch = {
    params ["_logic"];
    private _units = synchronizedObjects _logic select {
        _x call BIS_fnc_objectType select 0 == "Soldier";
    };
    private _vehicles = _units apply { assignedVehicle _x };
    _vehicles = (_vehicles arrayIntersect _vehicles) - [objNull];
    private _groups = (_units apply { group _x })
        + (flatten (_vehicles apply { crew _x apply { group _x }}));
    _groups = _groups arrayIntersect _groups;
    [
        _groups apply {[
            groupId _x,
            true, // isGroupDeletedWhenEmpty
            side _x,
            formation _x,
            combatMode _x,
            speedMode _x,
            units _x apply {
                [
                    typeOf _x,
                    getPosATL _x,
                    direction _x,
                    rank _x,
                    skill _x,
                    combatBehaviour _x,
                    combatMode _x,
                    [assignedVehicle _x] apply {
                        private _v = _x;
                        _vehicles findIf {_x == _v};
                    } select 0,
                    assignedVehicleRole _x
                ];
            }
        ]},
        _vehicles apply {[
            typeOf _x,
            getPosATL _x,
            direction _x
        ]}
    ];
};

my_spawn_register_emitter = {
    params [
        "_logic",
        [
            "_groups", [
                [
                    east,
                    [
                        ["O_Soldier_SL_F", "SERGEANT"],
                        ["O_Soldier_F", "PRIVATE"],
                        ["O_Soldier_F", "PRIVATE"],
                        ["O_Soldier_F", "PRIVATE"]
                    ],
                    [["O_MRAP_02_hmg_F", [3, 2]]],
                    east,
                    [],
                    [],
                    1
                ],
                [
                    east,
                    [
                        ["O_Soldier_SL_F", "SERGEANT"],
                        ["O_Soldier_F", "PRIVATE"],
                        ["O_Soldier_F", "PRIVATE"],
                        ["O_Soldier_F", "PRIVATE"]
                    ],
                    [],
                    east,
                    [["O_Soldier_F", "SERGEANT"]],
                    [["O_Truck_02_transport_F", [0]]],
                    1
                ]
            ],
            [[]]
        ],
        ["_weight", 1, [0]]
    ];
    _logic setVariable ["my_spawn_emitter_groups", _groups];
    _logic setVariable ["my_spawn_emitter_weight", _weight];
    _logic setVariable ["my_spawn_type", "emitter"];
};

my_spawn_register_waypoint = {
    params [
        "_logic",
        ["_weight", 1, [0]],
        ["_radius", 0, [0]],
        ["_type", "MOVE", [""]],
        ["_formation", "NO CHANGE", [""]],
        ["_behaviour", "UNCHANGED", [""]],
        ["_mode", "NO CHANGE", [""]],
        ["_speed", "UNCHANGED", [""]],
        ["_timeout", [0, 0, 0], [[]]]
    ];
    _logic setVariable ["my_spawn_wp_weight", _weight];
    _logic setVariable ["my_spawn_wp_radius", _radius];
    _logic setVariable ["my_spawn_wp_egress", false];
    _logic setVariable ["my_spawn_wp_type", _type];
    _logic setVariable ["my_spawn_wp_formation", _formation];
    _logic setVariable ["my_spawn_wp_behaviour", _behaviour];
    _logic setVariable ["my_spawn_wp_mode", _mode];
    _logic setVariable ["my_spawn_wp_speed", _speed];
    _logic setVariable ["my_spawn_wp_timeout", _timeout];
    _logic setVariable ["my_spawn_type", "waypoint"];
};

my_spawn_register_egress = {
    params [
        "_logic",
        ["_weight", 1, [0]],
        ["_radius", 0, [0]],
        ["_type", "MOVE", [""]],
        ["_formation", "NO CHANGE", [""]],
        ["_behaviour", "UNCHANGED", [""]],
        ["_mode", "NO CHANGE", [""]],
        ["_speed", "UNCHANGED", [""]],
        ["_timeout", [0, 0, 0], [[]]]
    ];
    _logic setVariable ["my_spawn_wp_weight", _weight];
    _logic setVariable ["my_spawn_wp_radius", _radius];
    _logic setVariable ["my_spawn_wp_egress", true];
    _logic setVariable ["my_spawn_wp_type", _type];
    _logic setVariable ["my_spawn_wp_formation", _formation];
    _logic setVariable ["my_spawn_wp_behaviour", _behaviour];
    _logic setVariable ["my_spawn_wp_mode", _mode];
    _logic setVariable ["my_spawn_wp_speed", _speed];
    _logic setVariable ["my_spawn_wp_timeout", _timeout];
    _logic setVariable ["my_spawn_type", "waypoint"];
};

my_spawn_egress_complete = {
    params ["_leader"];
    if (!local group _leader) exitWith {};
    private _vehicles = [];
    units group _leader apply {
        _vehicles pushBackUnique vehicle _x;
    };
    _vehicles apply {
        deleteVehicleCrew _x;
        deleteVehicle _x;
    };
};

my_spawn_activate_trigger = {
    params [
        "_trigger",
        ["_randomNum", [1, 1, 1], [[]]]
    ];
    if (!canSuspend) then {throw "Cannot suspend!"};
    private _n = round random _randomNum;
    for "_i" from 0 to (_n - 1) do {
        [
            [_trigger] call my_spawn_choose_emitter
        ] call my_spawn_activate_emitter;
        uiSleep my_spawn_delay;
    };
};

my_spawn_activate_emitter = {
    params ["_logic"];
    if (!canSuspend) then {throw "Cannot suspend!"};
    private _posATL = getPosATL _logic;
    [_logic] call my_spawn_choose_group params [
        "_side", "_units", "_vehicles",
        "_tr_side", "_tr_units", "_tr_vehicles"
    ];
    [_logic] call my_spawn_choose_waypoints params [
        "_waypoints", "_tr_waypoints"
    ];
    foo = _waypoints;
    private _spawn_unit = {
        uiSleep my_spawn_delay;
        params ["_group", "_unit"];
        _unit params ["_type", "_rank"];
        _unit = _group createUnit [
            _type, _posATL, [], 0, "NONE"
        ];
        _unit allowDamage false;
        _unit setRank _rank;
        _unit;
    };
    private _spawn_vehicle = {
        uiSleep my_spawn_delay;
        params ["_vehicle"];
        _vehicle params ["_type", "_indices"];
        _vehicle = _type createVehicle _posATL;
        _vehicle allowDamage false;
        [
            _vehicle,
            _indices
        ];
    };
    private _move_in = {
        params ["_units", "_vehicle"];
        _vehicle params ["_vehicle", "_indices"];
        _indices apply {
            _units select _x moveInAny _vehicle;
        };
    };
    private _move_in_transport = {
        params ["_tr_vehicles", "_unit"];
        _index = 0;
        while {_index < count _tr_vehicles} do {
            if (_unit moveInAny (_tr_vehicles # _index # 0)) then {
                break;
            } else {
                _index = _index + 1;
            };
        };

    };
    private _add_waypoint = {
        params ["_group", "_index", "_waypoint"];
        _waypoint params [
            ["_type", "MOVE", [""]],
            ["_posATL", [0, 0, 0], [[]]],
            ["_radius", 0, [0]],
            ["_formation", "NO CHANGE", [""]],
            ["_behaviour", "UNCHANGED", [""]],
            ["_mode", "NO CHANGE", [""]],
            ["_speed", "UNCHANGED", [""]],
            ["_timeout", [0, 0, 0], [[]]]
        ];
        _group addWaypoint [_posATL, _radius];
        [_group, _index] setWaypointType _type;
        [_group, _index] setWaypointFormation _formation;
        [_group, _index] setWaypointBehaviour _behaviour;
        [_group, _index] setWaypointCombatMode _mode;
        [_group, _index] setWaypointSpeed _speed;
        [_group, _index] setWaypointTimeout _timeout;
    };
    private _index = 0;

    _vehicles = _vehicles apply {[_x] call _spawn_vehicle};
    _tr_vehicles = _tr_vehicles apply {[_x] call _spawn_vehicle};

    private _group = createGroup [_side, true];
    _units = _units apply {[_group, _x] call _spawn_unit};
    _vehicles apply {[_units, _x] call _move_in};

    private _tr_group = grpNull;
    if (count _tr_units > 0) then {
        _tr_group = createGroup [_tr_side, true];
    };
    _tr_units = _tr_units apply {[_tr_group, _x] call _spawn_unit};
    _tr_vehicles apply {[_tr_units, _x] call _move_in};
    _units apply {[_tr_vehicles, _x] call _move_in_transport};

    _index = 1;
    _tr_waypoints apply {
        [_tr_group, _index, _x] call _add_waypoint;
        _index = _index + 1;
    };
    [_tr_group, count waypoints _tr_group - 1] setWaypointStatements [
        "true", "[this] call my_spawn_egress_complete"
    ];

    _index = 1;
    _waypoints apply {
        [_group, _index, _x] call _add_waypoint;
        _index = _index + 1;
    };

    uiSleep my_spawn_delay;
    _units apply {_x allowDamage true};
    _vehicles apply {_x # 0 allowDamage true};
    _tr_units apply {_x allowDamage true};
    _tr_vehicles apply {_x # 0 allowDamage true};
};

my_spawn_choose_emitter = {
    params ["_trigger"];
    private _emitters = [];
    synchronizedObjects _trigger select {
        _x call BIS_fnc_objectType params ["_category", "_type"];
        _category == "Logic"
            && _type == "Logic"
            && _x getVariable ["my_spawn_type", ""] == "emitter";
    } apply {
        _emitters pushBack _x;
        _emitters pushBack (
            _x getVariable ["my_spawn_emitter_weight", 1]
        );
    };
    if (count _emitters < 2) exitWith {"Invalid emitters"};
    selectRandomWeighted _emitters;
};

my_spawn_choose_group = {
    params ["_logic"];
    private _groups = [];
    _logic getVariable ["my_spawn_emitter_groups", []] apply {
        _x params [
            "_side", "_units", "_vehicles",
            "_tr_side", "_tr_units", "_tr_vehicles",
            "_weight"
        ];
        _groups pushBack [
            _side, _units, _vehicles,
            _tr_side, _tr_units, _tr_vehicles
        ];
        _groups pushBack _weight;
    };
    if (count _groups < 2) exitWith {"Invalid groups"};
    selectRandomWeighted _groups;
};

my_spawn_choose_waypoints = {
    params ["_logic"];
    private _visited = [_logic];
    private _transport = [];
    private _get_fringe = {
        params ["_logic", "_visited", "_egress"];
        private _fringe = [];
        synchronizedObjects _logic select {
            _x call BIS_fnc_objectType params ["_category", "_type"];
            _category == "Logic"
                && _type == "Logic"
                && !(_x in _visited)
                && _x getVariable ["my_spawn_type", ""] == "waypoint"
                && (
                    _x getVariable ["my_spawn_wp_egress", false]
                        == _egress
                );
        } apply {
            _fringe pushBack _x;
            _fringe pushBack (
                _x getVariable ["my_spawn_wp_weight", 1]
            );
        };
        _fringe;
    };

    private _fringe = [_logic, _visited, false] call _get_fringe;
    while {count _fringe != 0} do {
        private _next = selectRandomWeighted _fringe;
        _visited pushBack _next;
        _fringe = [_next, _visited, false] call _get_fringe;
        if (
            _next getVariable ["my_spawn_wp_type", ""] == "TR UNLOAD"
        ) then {
            _transport = _visited;
            _visited = [_next];
        };
    };
    _visited deleteAt 0;

    if (count _transport > 0) then {
        _fringe = [
            _transport # (count _transport - 1), _transport, true
        ] call _get_fringe;
        while {count _fringe != 0} do {
            private _next = selectRandomWeighted _fringe;
            _transport pushBack _next;
            _fringe = [_next, _transport, false] call _get_fringe;
        };
        _transport deleteAt 0;
    };

    private _transform = {[
        _x getVariable ["my_spawn_wp_type", "MOVE"],
        getPosATL _x,
        _x getVariable ["my_spawn_wp_radius", 0],
        _x getVariable ["my_spawn_wp_formation", "NO CHANGE"],
        _x getVariable ["my_spawn_wp_behaviour", "UNCHANGED"],
        _x getVariable ["my_spawn_wp_mode", "NO CHANGE"],
        _x getVariable ["my_spawn_wp_speed", "UNCHANGED"],
        _x getVariable ["my_spawn_wp_timeout", [0, 0, 0]]
    ]};
    _visited = _visited apply _transform;
    _transport = _transport apply _transform;
    [_visited, _transport];
};
