[
    [cache_1,cache_2,cache_3,cache_4,cache_5,cache_6,cache_7,cache_8,cache_9]
] spawn {
    params ["_caches"];
    waitUntil {
        uiSleep 0.5;
        {damage _x < 0.8} count (_caches select {!isNull _x}) <= 2;
    };
    [
        "MyCustom",
        [
            "CACHE DESTROYED",
            "2 caches remaining.",
            "\A3\ui_f\data\igui\cfg\simpleTasks\types\destroy_ca.paa"
        ]
    ] remoteExec ["BIS_fnc_showNotification"];
    [my_e_b_inf, 6, 1, 10] call jib_emitter_budget;
    [my_e_b_arm, 4, 2, 10] call jib_emitter_budget;
    [my_e_o_inf, 6, 1, 10] call jib_emitter_budget;
    [my_e_o_arm, 4, 2, 10] call jib_emitter_budget;

    waitUntil {
        uiSleep 0.5;
        {damage _x < 0.8} count (_caches select {!isNull _x}) <= 1;
    };
    [
        "MyCustom",
        [
            "CACHE DESTROYED",
            "1 cache remaining.",
            "\A3\ui_f\data\igui\cfg\simpleTasks\types\destroy_ca.paa"
        ]
    ] remoteExec ["BIS_fnc_showNotification"];
    [my_e_b_inf, 6, 1, 10] call jib_emitter_budget;
    [my_e_b_arm, 4, 1, 10] call jib_emitter_budget;
    [my_e_o_inf, 6, 1, 10] call jib_emitter_budget;
    [my_e_o_arm] call jib_emitter_disable;

    waitUntil {
        uiSleep 0.5;
        {damage _x < 0.8} count (_caches select {!isNull _x}) <= 0;
    };
    ["task_destroy", "SUCCEEDED"] call BIS_fnc_taskSetState;
    [my_e_b_inf, 6, 1, 10] call jib_emitter_budget;
    [my_e_b_arm, 4, 2, 10] call jib_emitter_budget;
    [my_e_o_inf] call jib_emitter_disable;
    [my_e_o_arm] call jib_emitter_disable;
};
