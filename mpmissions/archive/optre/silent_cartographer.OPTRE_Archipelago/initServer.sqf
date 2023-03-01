jib_marker_enabled = false;
publicVariable "jib_marker_enabled";

my_loadouts_save = {
    params ["_units"];
    _units apply {
        _x setVariable ["my_loadout", getUnitLoadout _x];
    };

    addMissionEventHandler ["EntityRespawned" ,{
        params ["_unit", "_corpse"];
        private _loadout =
            _corpse getVariable ["my_loadout", getUnitLoadout _unit];
        _unit setVariable ["my_loadout", _loadout];
        _unit setUnitLoadout [_loadout, true];
    }];

    loadouts_done = true;
    publicVariable "loadouts_done";
};

my_admin = {
    private _admin = objNull;
    if (hasInterface) then {
        _admin = player;
    } else {
        allPlayers apply {
            if (admin owner _x > 0) then {
                _admin = _x;
            };
        };
    };
    _admin;
};

my_menu = [
    ["My Menu", true],
    [
        "Save Loadouts", [2], "", -5, [
            ["expression", "[units assassin11] remoteExecCall [""my_loadouts_save"", 0];"]
        ], "1", "1"
    ],
    [
        "Begin Insert", [3], "", -5, [
            ["expression", "insert_start = true; publicVariable ""insert_start"";"]
        ], "1", "1"
    ]
];
publicVariable "my_menu";

[] spawn {
    waitUntil { sleep 1; alive ([] call my_admin) };
    private _admin = [] call my_admin;
    [_admin, "my_menu"] remoteExecCall ["BIS_fnc_addCommMenuItem", _admin];
};
