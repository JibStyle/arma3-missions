[ghosthawk_1, hummingbird_1, hummingbird_2, ghosthawk_2] apply {
    [
        _x,
        _x getVariable ["my_data", []],
        [_x, "my_done"],
        false,
        nil,
        nil,
        10
    ] spawn BIS_fnc_unitPlay;
    [_x] spawn {
        params ["_veh"];
        waitUntil {uiSleep 0.5; _veh getVariable ["my_done", false];};
        deleteVehicleCrew _veh;
        deleteVehicle _veh;
    };
};
[hummingbird_1, hummingbird_2] apply {
    [_x] spawn {
        params ["_veh"];
        waitUntil {uiSleep 0.5; isTouchingGround _veh;};
        assassin leaveVehicle _veh;
        crew _veh arrayIntersect units assassin apply {
            [_x] spawn {
                params ["_unit"];
                uiSleep 5;
                [_unit, true] remoteExec ["allowDamage"];
            };
            moveOut _x;
        };
    };
};
