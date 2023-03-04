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

[
    [map_1, map_2, map_3],
    [
        [
            ["obj_hq"],
            [my_arrow_coy_0, my_arrow_coy_1]
        ],
        [
            ["obj_op_1", "obj_op_2", "obj_op_3", "obj_op_4"],
            [my_arrow_op_0, my_arrow_op_1, my_arrow_op_2, my_arrow_op_3]
        ],
        [
            ["obj_plt_1", "obj_plt_2", "obj_plt_3"],
            [
                my_arrow_plt_0, my_arrow_plt_1, my_arrow_plt_2,
                my_arrow_plt_3, my_arrow_plt_4, my_arrow_plt_5
            ]
        ]
    ],
    {"Russian garrisons marked on your map."}
] call jib_objective_intel;
