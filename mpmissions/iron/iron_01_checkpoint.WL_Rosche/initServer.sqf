[
    west,
    500,
    [
        ["Land_BagFence_Long_F", 5],
        ["Land_BagFence_Round_F", 5],
        ["Land_Razorwire_F", 5],
        ["Land_BagBunker_Small_F", 25],
        ["Land_Plank_01_4m_F", 2],
        ["Land_Plank_01_8m_F", 4]
    ]
] call ace_fortify_fnc_registerObjects;
[{
    params ["_unit", "_object", "_cost"];
    isTouchingGround _object;
}] call ace_fortify_fnc_addDeployHandler;

my_flex_off = {
    [my_e_o_a, 0, 0, 1] call jib_emitter_budget;
    [my_e_o_b, 0, 0, 1] call jib_emitter_budget;
    [my_e_b, 0, 0, 1] call jib_emitter_budget;
};
my_flex_easy = {
    [my_e_o_a, 10, 1, 120, 5] call jib_emitter_budget;
    [my_e_o_b, 5, 1, 120] call jib_emitter_budget;
    [my_e_b, 5, 1, 120] call jib_emitter_budget;
};
my_flex_normal = {
    [my_e_o_a, 20, 2, 120, 10] call jib_emitter_budget;
    [my_e_o_b, 10, 2, 120] call jib_emitter_budget;
    [my_e_b, 10, 2, 120] call jib_emitter_budget;
};
my_flex_hard = {
    [my_e_o_a, 40, 4, 60] call jib_emitter_budget;
    [my_e_o_b, 20, 4, 60] call jib_emitter_budget;
    [my_e_b, 20, 4, 60] call jib_emitter_budget;
};
my_flex_custom = {
    [my_e_o_a, 30, 6, 5] call jib_emitter_budget;
    [my_e_o_b, 30, 6, 5] call jib_emitter_budget;
    [my_e_b, 30, 6, 5] call jib_emitter_budget;
};
call my_flex_normal;

terminate (missionNamespace getVariable ["my_phase", scriptNull]);
missionNamespace setVariable ["my_phase", [] spawn {
    done_setup = false;
    done_defend = false;
    waitUntil {uiSleep 0.5; done_setup == true;};
    [my_e_o_a] call jib_emitter_enable;
    [my_e_o_b] call jib_emitter_enable;
    [my_e_b] call jib_emitter_enable;
    waitUntil {
        uiSleep 0.5;
        done_defend || (
            [my_e_o_a] call jib_emitter_tickets <= 0
        )
    };
    done_defend = true;
    [my_e_o_a] call jib_emitter_disable;
    [my_e_o_b] call jib_emitter_disable;
    // [my_e_b] call jib_emitter_disable;
}];
