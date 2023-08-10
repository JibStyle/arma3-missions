[
    [bird_0, 10], [bird_1, 10], [plane, 22]
] apply {
    _x params ["_vehicle", "_offset"];
    [
        _vehicle,
        _vehicle getVariable ["my_flight_data", []],
        [_vehicle, "my_flight_done"],
        false,
        nil,
        nil,
        _offset
    ] spawn BIS_fnc_unitPlay;
    [_vehicle] spawn {
        params ["_vehicle"];
        waitUntil {
            uiSleep 0.5;
            _vehicle getVariable ["my_flight_done", false];
        };
        deleteVehicleCrew _vehicle;
        deleteVehicle _vehicle;
    };
};
[bird_0, bird_1] apply {
    [_x] spawn {
        params ["_vehicle"];
        waitUntil {uiSleep 0.5; isTouchingGround _vehicle};
        crew _vehicle - units driver _vehicle apply {
            group _x leaveVehicle _vehicle;
            moveOut _x;
        };
    };
};
