my_ao = {
    params ["_tags", "_n"];
    private _units = allUnits select {
        _x getVariable ["my_tag", ""] in _tags
    };
    private _probability = _n / (count _units max 1);
    _units select {random 1 > _probability} apply {
        private _veh = vehicle _x;
        deleteVehicleCrew _veh;
        deleteVehicle _veh;
    };
};

// my_flex_off = {
//     [0] call my_ao_limit;
// };
// my_flex_easy = {
//     [10] call my_ao_limit;
// };
// my_flex_normal = {
//     [20] call my_ao_limit;
// };
// my_flex_hard = {
//     [30] call my_ao_limit;
// };
// my_flex_custom = {
//     [15] call my_ao_limit;
// };
// call my_flex_hard;
