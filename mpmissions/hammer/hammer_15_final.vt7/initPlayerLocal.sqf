[] spawn {
    waitUntil {uiSleep 0.5; alive player;};
    sleep 5;
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
    showScoretable 0;
};
