[] spawn {
    waitUntil { sleep 1; alive ([] call jib_zeus_admin) };
    private _admin = [] call jib_zeus_admin;
    [_admin, "my_menu"] remoteExecCall ["BIS_fnc_addCommMenuItem", _admin];
};

// my_loadouts_save = {
//     units my_players apply {
//         _x setVariable ["my_loadout", getUnitLoadout _x];
//     };
// };

// addMissionEventHandler ["EntityRespawned" ,{
//     params ["_unit", "_corpse"];
//     private _loadout =
//         _corpse getVariable ["my_loadout", getUnitLoadout _unit];
//     _unit setVariable ["my_loadout", _loadout];
//     _unit setUnitLoadout [_loadout, true];
// }];
