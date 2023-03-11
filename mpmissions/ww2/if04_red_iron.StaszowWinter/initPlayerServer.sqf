params ["_player", "_jip"];

my_emitter_menu = [
    "Emitters",
    [
        ["B Mot", "[] remoteExec [""my_emitter_b_mot"", 2]", "1", true],
        ["B Arm", "[] remoteExec [""my_emitter_b_arm"", 2]", "1", true],
        ["B Air", "[] remoteExec [""my_emitter_b_air"", 2]", "1", true],
        ["O Air", "[] remoteExec [""my_emitter_o_air"", 2]", "1", true],
        ["Off", "[] remoteExec [""my_emitter_off"", 2]", "1", true]
    ]
];
publicVariable "my_emitter_menu";

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
                    // ["ALiVE", "", "1", false, jib_alive_menu],
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
