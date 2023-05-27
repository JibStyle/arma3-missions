params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

if (!isNull _oldUnit) then {
    waitUntil {alive player};
    player allowDamage false;
    player setPosATL getPosATL arrow;
    uiSleep 5;
    player allowDamage true;
};
