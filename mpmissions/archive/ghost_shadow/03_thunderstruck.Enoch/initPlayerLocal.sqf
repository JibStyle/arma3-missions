params ["_player", "_didJIP"];

waitUntil {uiSleep 1; alive _player;};

[my_arsenal] apply {
    [_x, _player getVariable ["my_arsenal", []]] call ace_arsenal_fnc_initBox;
};
