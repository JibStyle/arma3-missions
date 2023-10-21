my_count_garrison = {
    {
        _x getVariable ["my_tag", ""] in [
            "camp", "dismissed", "dump truck",
            "outlier", "overwatch", "supplies"
        ];
    } count allUnits;
};
[] spawn {
    waitUntil {uiSleep 5; [] call my_count_garrison < 70;};
    [my_e_qrf, 12, 2, 60, 8] call jib_emitter_budget;
    waitUntil {uiSleep 5; [] call my_count_garrison < 55;};
    [my_e_qrf, 18, 4, 60, 8] call jib_emitter_budget;
    waitUntil {uiSleep 5; [] call my_count_garrison < 40;};
    [my_e_qrf, 32, 8, 60, 8] call jib_emitter_budget;
};
