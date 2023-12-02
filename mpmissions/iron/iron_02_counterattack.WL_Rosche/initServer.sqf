my_flex_off = {
    [my_e_o_1, 0, 0, 1] call jib_emitter_budget;
    [my_e_o_2, 0, 0, 1] call jib_emitter_budget;
    [my_e_o_3, 0, 0, 1] call jib_emitter_budget;
};
my_flex_easy = {
    [my_e_o_1, 10, 1, 120, 5] call jib_emitter_budget;
    [my_e_o_2, 10, 1, 120, 5] call jib_emitter_budget;
    [my_e_o_3, 10, 1, 120, 5] call jib_emitter_budget;
};
my_flex_normal = {
    [my_e_o_1, 20, 2, 120, 10] call jib_emitter_budget;
    [my_e_o_2, 20, 2, 120, 10] call jib_emitter_budget;
    [my_e_o_3, 20, 2, 120, 10] call jib_emitter_budget;
};
my_flex_hard = {
    [my_e_o_1, 40, 4, 60] call jib_emitter_budget;
    [my_e_o_2, 40, 4, 60] call jib_emitter_budget;
    [my_e_o_3, 40, 4, 60] call jib_emitter_budget;
};
my_flex_custom = {
    [my_e_o_1, 30, 6, 5] call jib_emitter_budget;
    [my_e_o_2, 30, 6, 5] call jib_emitter_budget;
    [my_e_o_3, 30, 6, 5] call jib_emitter_budget;
};
call my_flex_normal;
