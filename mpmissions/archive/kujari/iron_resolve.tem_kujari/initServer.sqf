my_admin = {
    private _admin = objNull;
    if (hasInterface) then { _admin = player; } else {
        allPlayers apply {
            if (admin owner _x > 0) then { _admin = _x; };
        };
    };
    _admin;
};

[] spawn {
    waitUntil { sleep 1; alive ([] call my_admin) };
    private _admin = [] call my_admin;
    [_admin, "my_menu"] remoteExecCall ["BIS_fnc_addCommMenuItem", _admin];
};
