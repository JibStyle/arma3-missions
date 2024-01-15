my_flex_attack_off = {
    [my_e_1] call jib_emitter_disable;
};
my_flex_attack_easy = {
    [my_e_1, 16, 2, 60, 2] call jib_emitter_budget;
    [my_e_1] call jib_emitter_enable;
};
my_flex_attack_medium = {
    [my_e_1, 24, 4, 60, 4] call jib_emitter_budget;
    [my_e_1] call jib_emitter_enable;
};
my_flex_attack_hard = {
    [my_e_1, 48, 8, 20, 8] call jib_emitter_budget;
    [my_e_1] call jib_emitter_enable;
};
my_flex_attack_custom = {
    [my_e_1, 48, 8, 5] call jib_emitter_budget;
    [my_e_1] call jib_emitter_enable;
};

my_flex_defend_off = {
    [my_e_2] call jib_emitter_disable;
};
my_flex_defend_easy = {
    [my_e_2, 16, 2, 60, 2] call jib_emitter_budget;
    [my_e_2] call jib_emitter_enable;
};
my_flex_defend_medium = {
    [my_e_2, 24, 4, 60, 4] call jib_emitter_budget;
    [my_e_2] call jib_emitter_enable;
};
my_flex_defend_hard = {
    [my_e_2, 48, 8, 20, 8] call jib_emitter_budget;
    [my_e_2] call jib_emitter_enable;
};
my_flex_defend_custom = {
    [my_e_2, 48, 8, 5] call jib_emitter_budget;
    [my_e_2] call jib_emitter_enable;
};
