params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

if (!isNull _oldUnit) then {
    waitUntil {alive player};
    player allowDamage false;
    player setPosATL getPosATL arrow;
    uiSleep 5;
    player allowDamage true;
};

[
    _newUnit,
    jib_menu_condition_admin,
    [
        "Mission Menu",
        [
            [
                "Tasks", "", "1", false,
                [
                    "Tasks",
                    [
                        [
                            "Mission Success", "", "1", false,
                            [
                                "Confirm Mission Success?",
                                [
                                    [
                                        "Mission Success", toString {
                                            mission_success = true;
                                            publicVariable "mission_success";
                                        }, "1"
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]
] call jib_menu_dynamic_action;
