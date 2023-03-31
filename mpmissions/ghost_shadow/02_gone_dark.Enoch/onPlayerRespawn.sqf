params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
[
    _newUnit,
    jib_menu_condition_admin,
    [
        "Mission Menu",
        [
            [
                "Convoy Start", toString {
                    convoy_start = true;
                    publicVariable "convoy_start";
                }
            ]
        ]
    ]
] call jib_menu_dynamic_action;

my_radio radioChannelAdd [_newUnit];
