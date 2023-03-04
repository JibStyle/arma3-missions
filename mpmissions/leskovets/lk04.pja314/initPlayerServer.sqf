params ["_player", "_jip"];
[
    _player, [
        "Mission Menu", {
            [
                "Mission Menu",
                [
                    [
                        "Update Rally",
                        toString {[player] remoteExec ["my_rally", 2]},
                        "1", true
                    ],
                    ["ALiVE", "", "1", false, jib_alive_menu]
                ]
            ] call jib_menu_dynamic
        },
        [], 4, false, true, "",
        toString {
            (!isMultiplayer || serverCommandAvailable "#kick")
                && _originalTarget == player
        }, 2
    ]
] call jib_menu_action;
[_player] call jib_group_menu;
