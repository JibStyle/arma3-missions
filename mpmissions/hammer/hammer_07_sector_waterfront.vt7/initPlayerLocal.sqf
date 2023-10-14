my_script_showMissionStatus = [] spawn {
    while {true} do {
        waitUntil {uiSleep 0.5; !isNull findDisplay 312;};
        waitUntil {uiSleep 0.5; isNull findDisplay 312;};
        [] call BIS_fnc_showMissionStatus;
    };
};
showHUD [
    true, // scriptedHUD
    true, // info
    true, // radar
    true, // compass
    true, // direction
    true, // menu
    true, // group
    true, // cursors
    true, // panels
    false, // kills
    false  // showIcon3D
];
