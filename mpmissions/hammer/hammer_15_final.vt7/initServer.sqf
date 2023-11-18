my_despawnDelay = 10;
my_despawnDistance = 200;
my_despawnInterval = 0.3;
my_ao = 0;
my_tags_1 = ["ao_1_inner", "ao_1_outer", "ao_1_obj"];
my_tags_2 = ["ao_2_inner", "ao_2_outer", "ao_2_obj"];
my_tags_3 = ["ao_3_inner", "ao_3_outer", "ao_3_obj"];
my_emitters_1 = [my_e_o_1];
my_emitters_2 = [my_e_o_inf_2, my_e_o_arm_2];
my_emitters_3 = [my_e_o_3];

my_ao_start = {
    params ["_tags"];
    allUnits select {_x getVariable ["my_tag",""] in _tags} apply {
        private _veh = vehicle _x;
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
        _veh hideObjectGlobal false;
        _veh enableSimulationGlobal true;
    };
};
my_ao_finish = {
    params ["_tags"];
    scriptName format ["my_ao_finish: %1", _tags];
    uiSleep my_despawnDelay;
    private _units = allUnits select {_x getVariable ["my_tag",""] in _tags};
    while {{!isNull _x} count _units > 0} do {
        _units select {
            private _unit = _x;
            private _nearestPlayer = objNull;
            allPlayers apply {
                if (_x distance _unit < _nearestPlayer distance _unit) then {
                    _nearestPlayer = _x;
                };
            };
            _nearestPlayer distance _unit > my_despawnDistance;
        } apply {
            private _veh = vehicle _x;
            deleteVehicleCrew _veh;
            deleteVehicle _veh;
            uiSleep my_despawnInterval;
        };
        uiSleep my_despawnInterval;
    };
};
my_emitters_start = {
    params ["_emitters", "_tags", "_count"];
    waitUntil {
        uiSleep 0.5;
        {
            _x getVariable ["my_tag",""] in _tags && alive _x
        } count allUnits < _count;
    };
    _emitters apply {[_x] call jib_emitter_enable;};
};
my_emitters_finish = {
    params ["_emitters", "_tags", ["_count", 1e6]];
    waitUntil {
        uiSleep 0.5;
        {
            _x getVariable ["my_tag",""] in _tags && alive _x
        } count allUnits < _count;
    };
    _emitters apply {[_x] call jib_emitter_disable;};
};

[] spawn {
    [my_emitters_1, my_tags_1, 50] spawn my_emitters_start;
    [my_emitters_1, my_tags_1, 20] spawn my_emitters_finish;

    waitUntil {uiSleep 0.5; my_ao == 2;};
    [my_tags_1] spawn my_ao_finish;
    // [my_tags_2] spawn my_ao_start;
    [my_emitters_1, my_tags_1] spawn my_emitters_finish;
    [my_emitters_2, my_tags_2, 40] spawn my_emitters_start;
    [my_emitters_2, my_tags_2, 20] spawn my_emitters_finish;

    waitUntil {uiSleep 0.5; my_ao == 3;};
    [my_tags_2] spawn my_ao_finish;
    // [my_tags_3] spawn my_ao_start;
    [my_emitters_2, my_tags_2] spawn my_emitters_finish;
    [my_emitters_3, my_tags_3, 40] spawn my_emitters_start;
    [my_emitters_3, my_tags_3, 15] spawn my_emitters_finish;

    waitUntil {uiSleep 0.5; my_ao == 4;};
    [my_tags_3] spawn my_ao_finish;
    [my_emitters_3, my_tags_3] spawn my_emitters_finish;
};

my_flex_off = {
    [my_e_o_1, 0, 0, 1] call jib_emitter_budget;
    [my_e_o_inf_2, 0, 0, 1] call jib_emitter_budget;
    [my_e_o_arm_2, 0, 0, 1] call jib_emitter_budget;
    [my_e_o_3, 0, 0, 1] call jib_emitter_budget;
};
my_flex_easy = {
    [my_e_o_1, 6, 1, 300, 5] call jib_emitter_budget;
    [my_e_o_inf_2, 6, 1, 300, 5] call jib_emitter_budget;
    [my_e_o_arm_2, 6, 1, 300, 5] call jib_emitter_budget;
    [my_e_o_3, 6, 1, 300, 5] call jib_emitter_budget;
};
my_flex_normal = {
    [my_e_o_1, 14, 2, 120, 20] call jib_emitter_budget;
    [my_e_o_inf_2, 14, 2, 120, 20] call jib_emitter_budget;
    [my_e_o_arm_2, 14, 2, 120, 20] call jib_emitter_budget;
    [my_e_o_3, 14, 2, 120, 20] call jib_emitter_budget;
};
my_flex_hard = {
    [my_e_o_1, 20, 4, 1] call jib_emitter_budget;
    [my_e_o_inf_2, 20, 4, 1] call jib_emitter_budget;
    [my_e_o_arm_2, 20, 4, 1] call jib_emitter_budget;
    [my_e_o_3, 20, 4, 1] call jib_emitter_budget;
};
my_flex_custom = {
    [my_e_o_1, 20, 4, 1] call jib_emitter_budget;
    [my_e_o_inf_2, 20, 4, 1] call jib_emitter_budget;
    [my_e_o_arm_2, 20, 4, 1] call jib_emitter_budget;
    [my_e_o_3, 20, 4, 1] call jib_emitter_budget;
};
call my_flex_normal;
