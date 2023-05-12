my_alive_start = {
    if (!isServer) then {throw "Not server!"};
    [] call jib_alive_profileEnable;
    [] call jib_alive_opcomEnable;
};

my_wp_magic = {
    params ["_leader"];
    if (!local group _leader) exitWith {};
    private _curPos = getPosATL _leader;
    private _xSum = 0;
    private _ySum = 0;
    private _count = 0;
    allPlayers apply {
        _xSum = _xSum + getPosATL _x # 0;
        _ySum = _ySum + getPosATL _x # 1;
        _count = _count + 1;
    };
    private _avgPos = [_xSum / _count, _ySum / _count, 0];
    private _angle = random [-90, 0, 90];
    private _wpPos = [
    ]
};

my_run = {
    params ["_leader", "_task"];
    private _group = group _leader;
    if (!local _group) exitWith {};
    if (!canSuspend) then {throw "my_run must be scheduled"};
    units _group commandFollow units _group # 0;
    _group setVariable ["my_run_task", _task];
    private _leaderchanged_handler = {
	params ["_group", "_leader"];
        [
            _group getVariable ["my_run_task", ""],
            [_leader, true]
        ] call BIS_fnc_taskSetDestination;
    };
    private _killed_handler = {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
        if ({alive _x} count units group _unit == 0) then {
            [
                group _unit getVariable ["my_run_task", ""],
                "FAILED"
            ] call BIS_fnc_taskSetState;
        };
    };
    _group removeEventHandler [
        "LeaderChanged",
        _group getVariable ["my_run_leaderchanged", -1]
    ];
    _group setVariable [
        "my_run_leaderchanged",
        _group addEventHandler ["LeaderChanged", _leaderchanged_handler]
    ];
    units _group apply {
        _x removeEventHandler [
            "Killed",
            _x getVariable ["my_run_killed", -1]
        ];
        _x setVariable [
            "my_run_killed",
            _x addEventHandler ["Killed", _killed_handler]
        ];
    };
    waitUntil {
        uiSleep 0.5;
        [_task] call BIS_fnc_taskExists;
    };
    [_group, leader _group] call _leaderchanged_handler;
    [_leader] call _killed_handler;
};
