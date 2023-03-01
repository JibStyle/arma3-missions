my_objective_capture_enable = true;
my_objective_capture_delay = 0.25;
my_objective_capture_distance = 7;

my_objective_capture_register = {
    params ["_unit"];
    _unit setVariable ["my_objective_capture_registered", true];
    if (local _unit) then {
        _unit setCaptive true;
    };
};

my_objective_capture_start = {
    my_objective_capture_enable = false;
    uiSleep my_objective_capture_delay * 2;
    my_objective_capture_enable = true;
    while {my_objective_capture_enable} do {
        uiSleep my_objective_capture_delay;
        private _target = cursorObject;
        if (
            _target getVariable [
                "my_objective_capture_registered", false
            ] && (
                _target distance player
                    < my_objective_capture_distance
            )
        ) then {
            [
                "ace_captives_setSurrendered",
                [_target, true],
                _target
            ] call CBA_fnc_targetEvent;
        };
    };
};

my_objective_capture_stop = {
    my_objective_capture_enable = false;
};
