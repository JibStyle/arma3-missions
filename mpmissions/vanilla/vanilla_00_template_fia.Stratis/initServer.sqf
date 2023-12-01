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
    [my_e_inf, 0, 0, 1] call jib_emitter_budget;
    [my_e_mot, 0, 0, 1] call jib_emitter_budget;
};
my_flex_easy = {
    [my_e_inf, 1, 1, 1, 1] call jib_emitter_budget;
    [my_e_mot, 1, 1, 1, 1] call jib_emitter_budget;
    [20] call my_ao_limit;
};
my_flex_normal = {
    [my_e_inf, 10, 1, 1, 2] call jib_emitter_budget;
    [my_e_mot, 10, 1, 1, 1] call jib_emitter_budget;
    [40] call my_ao_limit;
};
my_flex_hard = {
    [my_e_inf, 20, 1, 120, 5] call jib_emitter_budget;
    [my_e_mot, 20, 2, 120, 5] call jib_emitter_budget;
    [60] call my_ao_limit;
};
my_flex_custom = {
    [my_e_inf, 20, 1, 120] call jib_emitter_budget;
    [my_e_mot, 20, 2, 120] call jib_emitter_budget;
    [100] call my_ao_limit;
};
