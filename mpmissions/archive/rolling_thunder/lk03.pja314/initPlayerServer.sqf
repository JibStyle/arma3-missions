params ["_player", "_jip"];
[
    _player, [
        "Mission Menu", {showCommandingMenu (_this # 3 # 0)},
        [
            [
                "Mission Menu",
                [
                    [
                        "OPF Air", "[] remoteExec [""my_phase_o_a"", 2]",
                        "1", true
                    ],
                    [
                        "BLU Mot", "[] remoteExec [""my_phase_b_m"", 2]",
                        "1", true
                    ],
                    [
                        "Both", "[] remoteExec [""my_phase_both"", 2]",
                        "1", true
                    ],
                    [
                        "Emitters Off", "[] remoteExec [""my_phase_off"", 2]",
                        "1", true
                    ],
                    [
                        "Update Rally", "[player] remoteExec [""my_rally"", 2]",
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
