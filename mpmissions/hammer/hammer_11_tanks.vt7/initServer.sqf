// [my_e_inf_1, my_e_inf_2, my_e_inf_3]
// [my_e_arm_1, my_e_arm_2]
// [my_e_civ_1, my_e_civ_2, my_e_civ_3]
// [my_e_air_3]
// [my_e_tra_3]

my_ao = 1;

my_flex_off = {
    [my_e_civ_1, my_e_civ_2, my_e_civ_3] apply {
        [_x, 0, 0, 0] call jib_emitter_budget;
    };
    [my_e_inf_1, my_e_inf_2, my_e_inf_3] apply {
        [_x, 0, 0, 0] call jib_emitter_budget;
    };
    [my_e_arm_1, my_e_arm_2] apply {
        [_x, 0, 0, 0] call jib_emitter_budget;
    };
    [my_e_air_3, 0, 0, 0] call jib_emitter_budget;
    [my_e_tra_3, 0, 0, 0] call jib_emitter_budget;
};

my_flex_easy = {
    [my_e_civ_1, my_e_civ_2, my_e_civ_3] apply {
        [_x, 4, 2, 20] call jib_emitter_budget;
    };
    [my_e_inf_1, my_e_inf_2, my_e_inf_3] apply {
        [_x, 6, 1, 60] call jib_emitter_budget;
    };
    [my_e_arm_1, my_e_arm_2] apply {
        [_x, 4, 2, 60] call jib_emitter_budget;
    };
    [my_e_air_3, 0, 0, 0] call jib_emitter_budget;
    [my_e_tra_3, 4, 1, 0] call jib_emitter_budget;
};

my_flex_normal = {
    [my_e_civ_1, my_e_civ_2, my_e_civ_3] apply {
        [_x, 6, 3, 20] call jib_emitter_budget;
    };
    [my_e_inf_1, my_e_inf_2, my_e_inf_3] apply {
        [_x, 8, 2, 20] call jib_emitter_budget;
    };
    [my_e_arm_1, my_e_arm_2] apply {
        [_x, 20, 6, 20] call jib_emitter_budget;
    };
    [my_e_air_3, 6, 1, 300] call jib_emitter_budget;
    [my_e_tra_3, 20, 1, 120] call jib_emitter_budget;
};

my_flex_hard = {
    [my_e_civ_1, my_e_civ_2, my_e_civ_3] apply {
        [_x, 8, 4, 20] call jib_emitter_budget;
    };
    [my_e_inf_1, my_e_inf_2, my_e_inf_3] apply {
        [_x, 16, 4, 20] call jib_emitter_budget;
    };
    [my_e_arm_1, my_e_arm_2] apply {
        [_x, 30, 10, 20] call jib_emitter_budget;
    };
    [my_e_air_3, 4, 1, 60] call jib_emitter_budget;
    [my_e_tra_3, 20, 2, 10] call jib_emitter_budget;
};

my_flex_custom = {
    [my_e_civ_1, my_e_civ_2, my_e_civ_3] apply {
        [_x, 6, 3, 0] call jib_emitter_budget;
    };
    [my_e_inf_1, my_e_inf_2, my_e_inf_3] apply {
        [_x, 8, 2, 0] call jib_emitter_budget;
    };
    [my_e_arm_1, my_e_arm_2] apply {
        [_x, 20, 6, 0] call jib_emitter_budget;
    };
    [my_e_air_3, 6, 1, 0] call jib_emitter_budget;
    [my_e_tra_3, 20, 2, 0] call jib_emitter_budget;
};

call my_flex_normal;
