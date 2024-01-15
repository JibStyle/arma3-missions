terminate (missionNamespace getVariable ["my_marker_script", scriptNull]);
missionNamespace setVariable ["my_marker_script", [] spawn {
    "obj_2" setMarkerAlpha 0;
    waitUntil {uiSleep 0.5; missionNamespace getVariable ["done_intel", false]};
    "obj_2" setMarkerAlpha 1;
    [arrow_1, arrow_2, arrow_3, arrow_4] apply {
        if (alive _x) then {
            "obj_2" setMarkerPos _x;
        };
    };
}];
