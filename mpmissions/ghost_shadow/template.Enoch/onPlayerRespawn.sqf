params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
[
    _newUnit,
    jib_menu_condition_admin,
    [
        "Mission Menu",
        [
            [
                "Foo", toString {
                    systemChat "Bar";
                }
            ]
        ]
    ]
] call jib_menu_dynamic_action;
