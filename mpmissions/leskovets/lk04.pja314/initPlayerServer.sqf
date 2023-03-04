params ["_player", "_jip"];

my_emitter_menu = [
    "Emitters",
    [
        ["Inf", "[] remoteExec [""my_emitter_start_inf"", 2]", "1", true],
        ["Mot", "[] remoteExec [""my_emitter_start_mot"", 2]", "1", true],
        ["Arm", "[] remoteExec [""my_emitter_start_arm"", 2]", "1", true],
        ["Air", "[] remoteExec [""my_emitter_start_air"", 2]", "1", true],
        ["Tra", "[] remoteExec [""my_emitter_start_tra"", 2]", "1", true],
        ["Off", "[] remoteExec [""my_emitter_stop_all"", 2]", "1", true]
    ]
];

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
                    ["ALiVE", "", "1", false, jib_alive_menu],
                    ["Emitters", "", "1", false, my_emitter_menu]
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
