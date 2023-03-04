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

my_emitter_start_inf = {
    private _emitter = my_emitter_o_inf;
    [
        _emitter, [1, 1, 1],
        0, 1, 0, 8,
        0, 0, 0, 0,
        0, 1, [30, 30, 120],
        1, 1, 0, 0, 0, 1200
    ] call jib_emitter_enable;
};

my_emitter_start_mot = {
    private _emitter = my_emitter_o_mot;
    [
        _emitter, [1, 1, 1],
        0, 1, 0, 8,
        0, 0, 0, 0,
        0, 1, [300, 600, 1200],
        1, 1, 0, 0, 0, 1200
    ] call jib_emitter_enable;
};

my_emitter_start_arm = {
    private _emitter = my_emitter_o_arm;
    [
        _emitter, [1, 1, 1],
        0, 1, 0, 8,
        0, 0, 0, 0,
        0, 1, [300, 600, 1200],
        1, 1, 0, 0, 0, 1800
    ] call jib_emitter_enable;
};

my_emitter_start_air = {
    private _emitter = my_emitter_o_air;
    [
        _emitter, [1, 1, 1],
        0, 1, 0, 8,
        0, 0, 0, 0,
        0, 1, [300, 600, 1200],
        1, 1, 0, 0, 0, 1200
    ] call jib_emitter_enable;
};

my_emitter_start_tra = {
    private _emitter = my_emitter_o_tra;
    [
        _emitter, [1, 1, 1],
        0, 0, 0, 8,
        0, 0, 0, 0,
        0, 1, [10, 10, 10],
        1, 1, 0, 0, 0, 1200
    ] call jib_emitter_enable;
};

my_emitter_stop_all = {
    [
        my_emitter_o_inf, my_emitter_o_mot, my_emitter_o_arm,
        my_emitter_o_air, my_emitter_o_tra
    ] apply {
        [_x] call jib_emitter_disable;
    };
}
