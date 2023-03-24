// Default Respawn Inventories
{ [_x, true] call BIS_fnc_moduleRespawnInventory } forEach allCurators;
[west, ["B_mas_usm_Recon_TL_F", "B_mas_usm_Recon_M_F", "B_mas_usm_Recon_OP_F", "B_mas_usm_Recon_medic_F", "B_mas_usm_Recon_exp_F"]] call BIS_fnc_setRespawnInventory;
// "B_Protagonist_VR_F"
[east, ["O_Protagonist_VR_F"]] call BIS_fnc_setRespawnInventory;
[independent, ["I_Protagonist_VR_F"]] call BIS_fnc_setRespawnInventory;
[civilian, ["C_Protagonist_VR_F"]] call BIS_fnc_setRespawnInventory;

// Side relations
west setFriend [independent, 0];
independent setFriend [west, 0];
east setFriend [independent, 0];
independent setFriend [east, 0];

// Make respawn module curator editable
{
    _x addCuratorEditableObjects [
        allMissionObjects "ModuleRespawnPosition_F",
        true
    ];
} forEach allCurators;
