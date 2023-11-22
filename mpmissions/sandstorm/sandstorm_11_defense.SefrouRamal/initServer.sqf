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
    [my_e_i, 0, 0, 1] call jib_emitter_budget;
};
my_flex_easy = {
    [my_e_i, 10, 1, 120, 5] call jib_emitter_budget;
};
my_flex_normal = {
    [my_e_i, 20, 2, 120, 10] call jib_emitter_budget;
};
my_flex_hard = {
    [my_e_i, 40, 4, 60] call jib_emitter_budget;
};
my_flex_custom = {
    [my_e_i, 30, 6, 5] call jib_emitter_budget;
};
call my_flex_normal;

terminate (missionNamespace getVariable ["my_phase", scriptNull]);
missionNamespace setVariable ["my_phase", [] spawn {
    my_limit = 3;
    my_fortify_time = 20 * 60;
    done_fortify = false;
    done_defend = false;
    waitUntil {uiSleep 0.5; done_fortify || time > my_fortify_time;};
    done_fortify = true;
    [my_e_i] call jib_emitter_enable;
    waitUntil {
        uiSleep 0.5;
        done_defend || (
            [my_e_i] call jib_emitter_tickets <= 0
                && {side _x == independent} count allUnits < my_limit
        )
    };
    done_defend = true;
    [my_e_i] call jib_emitter_disable;
}];

terminate (missionNamespace getVariable ["my_watch_crew", scriptNull]);
missionNamespace setVariable ["my_watch_crew", [] spawn {
    while {true} do {
        allGroups select {side _x == independent} apply {
            private _group = _x;
            assignedVehicles _group apply {
                if (count (crew _x select {alive _x}) < 2) then {
                    _group leaveVehicle _x;
                };
            };
        };
        uiSleep 1;
    };
}];
