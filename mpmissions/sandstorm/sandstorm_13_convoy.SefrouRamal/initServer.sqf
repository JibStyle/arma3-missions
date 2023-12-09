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
    [my_e_o, 0, 0, 5] call jib_emitter_budget;
};
my_flex_easy = {
    [20] call my_ao_limit;
    [my_e_o, 10, 1, 120, 3] call jib_emitter_budget;
};
my_flex_normal = {
    [40] call my_ao_limit;
    // [my_e_o, 20, 2, 5, 5] call jib_emitter_budget;
    [my_e_o, 20, 2, 120, 5] call jib_emitter_budget;
};
my_flex_hard = {
    [60] call my_ao_limit;
    [my_e_o, 30, 3, 60] call jib_emitter_budget;
};
my_flex_custom = {
    [5] call my_ao_limit;
    // [my_e_o, 40, 4, 5, 1] call jib_emitter_budget;
    [my_e_o, 40, 4, 5] call jib_emitter_budget;
};
call my_flex_normal;
