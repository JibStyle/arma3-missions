my_heal = {
    units group player apply {
        if (_x distance player < 10) then {
            [_x] remoteExec ["jib_service_heal", 2];
        };
    };
};

my_rearm = {
    [units group player select {
        _x distance player < 10 && !isPlayer _x
    }] remoteExec ["jib_service_rearmLoad", 2];
};

my_can_group = {
    leader player == player;
};

my_can_service = {
    vehicle player != player && effectiveCommander player == player;
};

my_init_laptop = {
    params ["_object", "_destinations"];
    _destinations apply {
        _x params ["_title", "_other"];
        _object addAction [
            format ["Teleport to %1", _title],
            {player setPos getPos (_this # 3 # 0)}, [_other], 10
        ];
    };
};

my_init_crate = {
    params ["_object"];
    _object addAction [
        "Rearm Nearby AI Group Units",
        {call my_rearm}, [], 10
    ];
    _object addAction [
        "Load My Respawn Loadout",
        {[[player]] remoteExec ["jib_service_rearmLoad", 2]}, [], 10
    ];
    _object addAction [
        "Save My Respawn Loadout",
        {[[player]] remoteExec ["jib_service_rearmSave", 2]}, [], 10
    ];
};

my_init_depot = {
    params ["_object"];
    _object addAction [
        "Full Vehicle Service",
        {[vehicle player] call jib_service_vehicle},
        [], 10, true, true, "", "call my_can_service", 30
    ];
    _object addAction [
        "Pylon Manager",
        {[vehicle player] call zen_pylons_fnc_configure},
        [], 10, true, true, "", "call my_can_service", 30
    ];
    _object addAction [
        "Edit Inventory",
        {[vehicle player] call zen_inventory_fnc_configure},
        [], 10, true, true, "", "call my_can_service", 30
    ];
};

my_init_fak = {
    params ["_object"];
    _object addAction [
        "Heal Nearby Group Units",
        {[] call my_heal}, [], 10
    ];
};

my_top = {
    [player, groupSelectedUnits player] remoteExec [
        "jib_service_top", 2
    ];
    showCommandingMenu "#USER:my_menu_group";
};

my_bottom = {
    [player, groupSelectedUnits player] remoteExec [
        "jib_service_bottom", 2
    ];
    showCommandingMenu "#USER:my_menu_group";
};

my_menu_group = [
    ["Edit Group", true],
    [
        "Selected Units to Top", [2], "", -5,
        [["expression", "call my_top"]], "1", "1"
    ],
    [
        "Selected Units to Bottom", [3], "", -5,
        [["expression", "call my_bottom"]], "1", "1"
    ],
    [
        "Delete Selected Units", [4], "", -5,
        [["expression", "call my_despawn"]], "1", "1"
    ]
];

my_despawn = {
    [player, groupSelectedUnits player] call jib_service_despawn;
    showCommandingMenu "#USER:my_menu_group";
};

my_can_unit = {
    params [["_pending", 0, [0]]];
    player getVariable ["my_spawn_data", []] params [
        ["_unitLimit", 0, [0]],
        ["_unitMarker", "", [""]],
        ["_unitType", [], [[]]],
        ["_vehicleLimit", 0, [0]],
        ["_vehicleMarker", "", [""]],
        ["_vehicleType", [], [[]]]
    ];
    count units group player < _unitLimit - _pending;
};

my_can_vehicle = {
    params [["_pending", 0, [0]]];
    player getVariable ["my_spawn_data", []] params [
        ["_unitLimit", 0, [0]],
        ["_unitMarker", "", [""]],
        ["_unitType", [], [[]]],
        ["_vehicleLimit", 0, [0]],
        ["_vehicleMarker", "", [""]],
        ["_vehicleType", [], [[]]]
    ];
    private _vehicles = [];
    units group player apply {
        _vehicles pushBackUnique assignedVehicle _x;
    };
    count _vehicles < _vehicleLimit - _pending;
};

my_spawnMenu = {
    my_menu_unit = [["Spawn Units", true]];
    player getVariable ["my_spawn_data", []] params [
        ["_unitLimit", 0, [0]],
        ["_unitMarker", "", [""]],
        ["_unitType", [], [[]]],
        ["_vehicleLimit", 0, [0]],
        ["_vehicleMarker", "", [""]],
        ["_vehicleType", [], [[]]]
    ];
    private _index = 2;
    _unitType apply {
        _x params ["_name", "_type"];
        my_menu_unit pushBack [
            _name, [_index], "", -5, [["expression", format [
                "[""%1"", ""%2""] call my_spawnUnit",
                _type, _unitMarker
            ]]], "1", "1"
        ];
        _index = _index + 1;
    };
    _index = 2;
    my_menu_vehicle = [["Spawn Vehicles", true]];
    _vehicleType apply {
        _x params ["_name", "_type"];
        my_menu_vehicle pushBack [
            _name, [_index], "", -5, [["expression", format [
                "[""%1"", ""%2""] call my_spawnVehicle",
                _type, _vehicleMarker
            ]]], "1", "1"
        ];
        _index = _index + 1;
    };
};

my_spawnUnit = {
    params ["_type", "_marker"];
    [player, _type, getMarkerPos _marker] call jib_service_spawnUnit;
    if ([] call my_can_unit) then {
        [] spawn {
            showCommandingMenu "#USER:my_menu_unit";
        };
    };
};

my_spawnVehicle = {
    params ["_type", "_marker"];
    [player, _type, getMarkerPos _marker] call jib_service_spawnVehicle;
    if ([] call my_can_vehicle) then {
        [] spawn {
            showCommandingMenu "#USER:my_menu_vehicle";
        };
    };
};
