my_admin = {
    private _admin = objNull;
    if (hasInterface) then {
        _admin = player;
    } else {
        allPlayers apply {
            if (admin owner _x > 0) then {
                _admin = _x;
            };
        };
    };
    _admin;
};

my_alive = {
    [[], {
        [] call jib_alive_profileEnable;
        [] call jib_alive_opcomEnable;
    }] remoteExec ["spawn", 2];
};
publicVariable "my_alive";

my_menu = [
    ["My Menu", true],
    [
        "Begin Insert", [2], "", -5, [
            ["expression", "insert_start = true; publicVariable ""insert_start"";"]
        ], "1", "1"
    ],
    [
        "Start ALiVE", [3], "", -5, [
            ["expression", "[] call my_alive;"]
        ], "1", "1"
    ]
];
publicVariable "my_menu";

[] spawn {
    waitUntil { sleep 1; alive ([] call my_admin) };
    private _admin = [] call my_admin;
    [_admin, "my_menu"] remoteExecCall ["BIS_fnc_addCommMenuItem", _admin];
};

[
    west, [
        "CUP_B_US_Soldier_SL_UCP",
        "CUP_B_US_Soldier_AT_UCP",
        "CUP_B_US_Soldier_AR_UCP",
        "CUP_B_US_Crew_UCP",
        "CUP_B_US_Soldier_Engineer_EOD_UCP",
        "CUP_B_US_Soldier_Marksman_EBR_UCP",
        "CUP_B_US_Medic_UCP",
        "CUP_B_US_Soldier_ACOG_UCP",
        "CUP_B_US_Pilot"
    ]
] call BIS_fnc_setRespawnInventory;
