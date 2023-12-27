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
