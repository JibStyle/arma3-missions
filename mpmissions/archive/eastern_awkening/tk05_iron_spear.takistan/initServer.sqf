my_emitter_blu_emitters = [
    // emitter_blu_cars,
    emitter_blu_inf,
    emitter_blu_tanks
];

my_emitter_opf_emitters = [
    emitter_opf_cars,
    emitter_opf_inf,
    emitter_opf_tanks
];

my_emitter_phases = [
    [
        // emitter_wp_blu_cars_1,
        emitter_wp_blu_inf_1,
        emitter_wp_blu_tanks_1,
        // emitter_wp_opf_cars_1,
        emitter_wp_opf_inf_1,
        emitter_wp_opf_tanks_1
    ], [
        // emitter_wp_blu_cars_2,
        emitter_wp_blu_inf_2,
        emitter_wp_blu_tanks_2,
        // emitter_wp_opf_cars_2,
        emitter_wp_opf_inf_2,
        emitter_wp_opf_tanks_2
    ], [
        // emitter_wp_blu_cars_3,
        emitter_wp_blu_inf_3,
        emitter_wp_blu_tanks_3,
        // emitter_wp_opf_cars_3,
        emitter_wp_opf_inf_3,
        emitter_wp_opf_tanks_3
    ]
];

my_emitter_blu_enable = {
    my_emitter_blu_emitters apply {[_x] spawn jib_emitter_enable};
};

my_emitter_blu_disable = {
    my_emitter_blu_emitters apply {[_x] spawn jib_emitter_disable};
};

my_emitter_opf_enable = {
    my_emitter_opf_emitters apply {[_x] spawn jib_emitter_enable};
};

my_emitter_opf_disable = {
    my_emitter_opf_emitters apply {[_x] spawn jib_emitter_disable};
};

my_emitter_phase = {
    params ["_choice"]; // 1 based
    for "_i" from 0 to count my_emitter_phases - 1 do {
        my_emitter_phases # _i apply {
            if (_i == _choice - 1) then {
                [_x] call jib_emitter_waypoint_enable;
            } else {
                [_x] call jib_emitter_waypoint_disable;
            };
        };
    };
};

my_emitter_limit = {
    [emitter_blu_inf,   -1, -1, -1, 24] call jib_emitter_limit;
    // [emitter_blu_cars,  -1, -1, -1, 24] call jib_emitter_limit;
    [emitter_blu_tanks, -1, 8, -1, 24] call jib_emitter_limit;
    [emitter_opf_inf,   -1, -1, -1, 24] call jib_emitter_limit;
    [emitter_opf_cars,  -1, 8, -1, 24] call jib_emitter_limit;
    [emitter_opf_tanks, -1, 8, -1, 24] call jib_emitter_limit;
};

my_emitter_count = {
    [
        [

            [
                if (emitter_blu_inf getVariable [
                    "jib_emitter_enabled", false
                ]) then {1} else {0},
                count ([
                    emitter_blu_inf
                ] call jib_emitter__getDeserializedVehicles),
                count ([
                    emitter_blu_inf
                ] call jib_emitter__getDeserializedUnits)
            ],
            [
                if (emitter_blu_tanks getVariable [
                    "jib_emitter_enabled", false
                ]) then {1} else {0},
                count ([
                    emitter_blu_tanks
                ] call jib_emitter__getDeserializedVehicles),
                count ([
                    emitter_blu_tanks
                ] call jib_emitter__getDeserializedUnits)
            ]
        ],
        [
            [
                if (emitter_opf_inf getVariable [
                    "jib_emitter_enabled", false
                ]) then {1} else {0},
                count ([
                    emitter_opf_inf
                ] call jib_emitter__getDeserializedVehicles),
                count ([
                    emitter_opf_inf
                ] call jib_emitter__getDeserializedUnits)
            ],
            [
                if (emitter_opf_cars getVariable [
                    "jib_emitter_enabled", false
                ]) then {1} else {0},
                count ([
                    emitter_opf_cars
                ] call jib_emitter__getDeserializedVehicles),
                count ([
                    emitter_opf_cars
                ] call jib_emitter__getDeserializedUnits)
            ],
            [
                if (emitter_opf_tanks getVariable [
                    "jib_emitter_enabled", false
                ]) then {1} else {0},
                count ([
                    emitter_opf_tanks
                ] call jib_emitter__getDeserializedVehicles),
                count ([
                    emitter_opf_tanks
                ] call jib_emitter__getDeserializedUnits)
            ]
        ]
    ]
};

my_emitter_enable = {
    [] call my_emitter_blu_enable;
    [] call my_emitter_opf_enable;
};

my_emitter_disable = {
    [] call my_emitter_blu_disable;
    [] call my_emitter_opf_disable;
};

[1] call my_emitter_phase;
[] call my_emitter_limit;
