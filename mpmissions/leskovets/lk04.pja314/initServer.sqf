my_rally = {
    params ["_player"];
    my_teleport_1 hideObjectGlobal false;
    my_teleport_2 hideObjectGlobal false;
    my_teleport_2 setVehiclePosition [
        getPos _player, [], 0, "NONE"
    ];
    "rally" setMarkerAlphaLocal 1;
    "rally" setMarkerPos _player;
};

[] call jib_garbage_start;
