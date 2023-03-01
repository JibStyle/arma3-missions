jib_marker_enabled = false;
publicVariable "jib_marker_enabled";

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

[] spawn {
    waitUntil { sleep 1; alive ([] call my_admin) };
    private _admin = [] call my_admin;
    [_admin, "my_menu"] remoteExecCall ["BIS_fnc_addCommMenuItem", _admin];
};

// [
//     west, [
//         "OPTRE_FC_Marines_Soldier_SquadLead",
//         "OPTRE_FC_Marines_Soldier_Sniper",
//         "OPTRE_FC_Marines_Soldier_Marksman",
//         "OPTRE_FC_Marines_Soldier_AT_Specialist",
//         "OPTRE_FC_Marines_Soldier_Autorifleman",
//         "OPTRE_FC_Marines_Soldier_Engineer",
//         "OPTRE_FC_Marines_Soldier_Rifleman_BR",
//         "OPTRE_FC_Marines_Soldier_Crewman",
//         "OPTRE_UNSC_Marine_Soldier_Corpsman",
//         "OPTRE_UNSC_Airforce_Soldier_Airman"
//     ]
// ] call BIS_fnc_setRespawnInventory;

my_loadouts_save = {
    units my_players apply {
        _x setVariable ["my_loadout", getUnitLoadout _x];
    };
};

addMissionEventHandler ["EntityRespawned" ,{
    params ["_unit", "_corpse"];
    private _loadout =
        _corpse getVariable ["my_loadout", getUnitLoadout _unit];
    _unit setVariable ["my_loadout", _loadout];
    _unit setUnitLoadout [_loadout, true];
}];
