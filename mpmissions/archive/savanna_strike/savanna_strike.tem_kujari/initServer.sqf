units assassin_1 apply {
    _x setVariable ["my_loadout", getUnitLoadout _x];
};

addMissionEventHandler ["EntityRespawned" ,{
    params ["_unit", "_corpse"];
    private _loadout =
        _corpse getVariable ["my_loadout", getUnitLoadout _unit];
    _unit setVariable ["my_loadout", _loadout];
    _unit setUnitLoadout [_loadout, true];
}];
