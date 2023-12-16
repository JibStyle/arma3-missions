["track1"] remoteExec ["playMusic"];
[[heli_1, 0], [heli_2, 0]] apply {
    _x params ["_vehicle", "_offset"];
    [
        _vehicle,
        _vehicle getVariable ["my_data", []],
        [_vehicle, "my_done"], nil, nil, nil, _offset
    ] spawn BIS_fnc_unitPlay;
    terminate (_vehicle getVariable ["my_dismount", scriptNull]);
    _vehicle setVariable ["my_dismount", [_vehicle] spawn {
        params ["_vehicle"];
        scriptName "my_dismount";
        waitUntil {uiSleep 0.5; isTouchingGround _vehicle};
        private _units = crew _vehicle - units driver _vehicle;
        _units apply {
            group _x leaveVehicle _vehicle;
            moveOut _x;
        };
        uiSleep 10;
        _units apply {
            [_x, true] remoteExec ["allowDamage"];
        };
    }];
    terminate (_vehicle getVariable ["my_delete", scriptNull]);
    _vehicle setVariable ["my_delete", [_vehicle] spawn {
        params ["_vehicle"];
        scriptName "my_delete";
        _vehicle setVariable ["my_done", nil];
        waitUntil {uiSleep 0.5; _vehicle getVariable ["my_done", false];};
        deleteVehicleCrew _vehicle;
        deleteVehicle _vehicle;
    }];
};

my_ao_limit = {
    params ["_target"];
    private _units =
        allUnits select {
            private _tag = _x getVariable ["my_tag", ""];
            _tag in ["inner", "outer", "obj"];
        };
    private _probability = _target / (count _units max 1);
    _units select {random 1 > _probability} apply {
        private _veh = vehicle _x;
        deleteVehicleCrew _veh;
        deleteVehicle _veh;
    };
};
my_flex_off = {
    [0] call my_ao_limit;
};
my_flex_easy = {
    [10] call my_ao_limit;
};
my_flex_normal = {
    [20] call my_ao_limit;
};
my_flex_hard = {
    [30] call my_ao_limit;
};
my_flex_custom = {
    [15] call my_ao_limit;
};
call my_flex_hard;
