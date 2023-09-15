removeMissionEventHandler [
    "EntityCreated",
    missionNamespace getVariable ["my_missionEventHandlerEntityCreated", -1]
];
missionNamespace setVariable [
    "my_missionEventHandlerEntityCreated",
    addMissionEventHandler [
        "EntityCreated", {
	    params ["_entity"];
            if (
                typeOf _entity in [
                    "CUP_B_FR_Soldier_TL",
                    "CUP_B_FR_Soldier_AR",
                    "CUP_B_FR_Soldier_GL",
                    "CUP_B_FR_Soldier_Marksman",
                    "CUP_B_FR_Saboteur",
                    "CUP_B_FR_Medic",
                    "CUP_B_USMC_Sniper_M40A3",
                    "CUP_B_USMC_Spotter",
                    "CUP_O_RU_Soldier_TL_M_VDV_EMR_V2",
                    "CUP_O_RU_Soldier_AR_M_VDV_EMR_V2",
                    "CUP_O_RU_Soldier_AT_M_VDV_EMR_V2",
                    "CUP_O_RU_Soldier_Medic_M_VDV_EMR_V2",
                    "CUP_O_RU_Spotter_M_EMR",
                    "CUP_O_RU_Sniper_M_EMR"
                ]
            ) then {
                [_entity] spawn {
                    params ["_entity"];
                    sleep 5;
                    _entity setCombatBehaviour "STEALTH";
                };
            };
            if (side _entity in [west, east]) then {
                _entity linkItem "ItemAndroid";
            };
        }
    ]
];
