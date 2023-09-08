my_rally = {
    params ["_player"];
    my_teleport_2 setVehiclePosition [getPos _player, [], 0, "NONE"];
    "rally" setMarkerPos _player;
};

my_tp = {
    params ["_player", "_selected"];
    _selected select {!isPlayer _x} apply {
        _x setVehiclePosition [getMarkerPos "rally", [], 0, "NONE"];
        sleep 0.3;
    };
};

[] call jib_garbage_start;
[false] remoteExec ["enableRadio", 0, true];

[
    "obj_cp", "obj_town_1", "obj_town_2", "obj_town_3"
] apply {_x setMarkerAlpha 0};

[arrow_cp_0, arrow_cp_1, arrow_cp_2] apply {
    if (!isNull _x) then {
        "obj_cp" setMarkerPos getPosATL _x;
    };
};

private _arrows = [
    arrow_0, arrow_1, arrow_2, arrow_3, arrow_4, arrow_5,
    arrow_6, arrow_7, arrow_8, arrow_9, arrow_10
] select {!isNull _x};
if (count _arrows != 3) then {throw "Invalid number of arrows!"};
"obj_town_1" setMarkerPos getPosATL (_arrows # 0);
"obj_town_2" setMarkerPos getPosATL (_arrows # 1);
"obj_town_3" setMarkerPos getPosATL (_arrows # 2);

addMissionEventHandler ["EntityRespawned", {
    params ["_newEntity", "_oldEntity"];
    if (!isPlayer _newEntity) then {
        _newEntity setVehiclePosition [getMarkerPos "rally", [], 0, "NONE"];
    };
}];

my_hc = {
    params ["_player"];
    [_player] call jib_hc_demote;
    [a, b, c, d] apply {
        [_player, _x] call jib_hc_add;
    };
};

my_air_fn = {my_air = true; publicVariable "my_air";};

waitUntil {sleep 1; alive leader a && isPlayer leader a;};
[leader a, [a, b, c, d]] call jib_hc_setup;
