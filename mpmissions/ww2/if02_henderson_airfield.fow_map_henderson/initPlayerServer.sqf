params ["_player", "_jip"];
[
    _player, [
        "Mission Menu", {showCommandingMenu (_this # 3 # 0)},
        [
            [
                "Mission Menu",
                [
                    [
                        "Phase 1", "[] remoteExec [""my_phase_1"", 2]",
                        "1", true
                    ],
                    [
                        "Phase 2", "[] remoteExec [""my_phase_2"", 2]",
                        "1", true
                    ],
                    [
                        "Phase 3", "[] remoteExec [""my_phase_3"", 2]",
                        "1", true
                    ],
                    [
                        "Phase 4", "[] remoteExec [""my_phase_4"", 2]",
                        "1", true
                    ],
                    [
                        "Phase Off", "[] remoteExec [""my_phase_off"", 2]",
                        "1", true
                    ],
                    [
                        "Update Rally",
                        "[player] remoteExec [""my_rally"", 2]",
                        "1", true
                    ],
                    [
                        "TP Selected",
                        toString {
                            [player, groupSelectedUnits player] remoteExec [
                                "my_tp", 2
                            ];
                        },
                        "1", true
                    ]
                ]
            ] call jib_menu_create
        ],
        4, false, true, "",
        toString {
            (!isMultiplayer || serverCommandAvailable "#kick")
                && _target == player
        }, 2
    ]
] call jib_menu_action;
[_player] call jib_menu_player;
