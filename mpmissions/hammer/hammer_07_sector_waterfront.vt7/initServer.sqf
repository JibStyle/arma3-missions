[600] call BIS_fnc_countdown;
[] spawn {
    waitUntil {
        uiSleep 0.5;
        {[_x] call BIS_fnc_respawnTickets == 0} count [
            west, east, independent, civilian
        ] > 0 || [0] call BIS_fnc_countdown == 0;
    };
    "sidetickets" call BIS_fnc_endMissionServer;
};
