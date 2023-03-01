my_objective_hev = {
    params ["_leader"];
    private _group = group _leader;
    private _posAGL =
        waypointPosition [_group, currentWaypoint _group];
    [
        _posAGL, // should be ATL
        units _group
    ] spawn OPTRE_fnc_HEV;
};

my_objective_respawn = {
    params ["_arrow"];
    if (!isServer) exitWith {};
    my_respawn_posATL = getPosATL _arrow;
    publicVariable "my_respawn_posATL";
    deleteVehicle _arrow;
};

my_objective_tyrant = {
    params ["_tyrant", "_target"];
    if (!isServer) exitWith {};
    if (!canSuspend) exitWith {};
    private _burst = 3;
    private _gap = 1;
    private _reload = 5;
    _tyrant enableSimulationGlobal true;
    sleep _reload;
    _tyrant doWatch _target;
    while {true} do {
        waitUntil {_tyrant aimedAtTarget [_target] > 0};
        for "_i" from 1 to _burst do {
            _tyrant fireAtTarget [_target];
            sleep _gap;
        };
        _tyrant setVehicleAmmo 1;
        sleep _reload;
    };
};

my_objective_arm = {
    if (!hasInterface) exitWith {};
    removeBackpack player;
    [fury, false] remoteExec ["hideObjectGlobal", 2];
    my_objective_action = [
        player,
        "Detonate Tactical Nuke",
        "\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\destroy_ca.paa",
        "\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\destroy_ca.paa",
        "true",
        "true",
        {},
        {},
        {
            [
                player, my_objective_action
            ] call BIS_fnc_holdActionRemove;
            [] remoteExec ["my_objective_nuke", 2];
        },
        {},
        [],
        5,
        1000,
        true,
        false,
        false
    ] call BIS_fnc_holdActionAdd;
};

my_objective_nuke = {
    if (!isServer) exitWith {};
    private _posASL = getPosASL fury;
    deleteVehicle fury;
    [_posASL, 200, 300, true] remoteExec [
        "zen_modules_fnc_moduleNukeLocal"
    ];
    obj_tyrant setDamage 1;
};
