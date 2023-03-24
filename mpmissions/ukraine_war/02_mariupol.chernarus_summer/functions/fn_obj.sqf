my_obj_lost = {
    params ["_trigger", "_marker", "_respawn"];
    _marker setMarkerColor "ColorEAST";
    deleteVehicle _respawn;
    [_trigger] call my_spawn_deactivate_trigger;
};
