[] spawn {
    while {true} do {uiSleep 1; [] call BIS_fnc_showMissionStatus;};
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
