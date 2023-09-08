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
            ],
            [
                "Convoy Done", toString {
                    [
                        "task_scout", nil, nil, nil, "SUCCEEDED", nil, nil
                    ] call BIS_fnc_setTask;
                }
            ]
        ]
    ]
] call jib_menu_dynamic_action;

my_radio radioChannelAdd [_newUnit];
