params ["_player", "_jip"];
[
    _player, [
        "Mission Menu", {showCommandingMenu (_this # 3 # 0)},
        [
            [
                "Mission Menu",
                [
                    [
                        "Update Rally",
                        toString {[player] remoteExec ["my_rally", 2]},
                        "1", true
                    ]
                ]
            ] call jib_menu_create
        ],
        4, false, true, "",
        toString {
            (!isMultiplayer || serverCommandAvailable "#kick")
                && _originalTarget == player
        }, 2
    ]
] call jib_menu_action;
[_player] call jib_menu_player;
