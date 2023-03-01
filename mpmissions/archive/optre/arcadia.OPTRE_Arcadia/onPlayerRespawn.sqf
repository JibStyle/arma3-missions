params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
waitUntil {alive player && !isNil "my_respawn_posATL"};
player setPosATL my_respawn_posATL;
