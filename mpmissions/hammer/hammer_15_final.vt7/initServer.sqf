my_despawnDelay = 120;
my_despawnInterval = 0.3;
my_ao = 0;
my_tags_1 = ["ao_1_inner", "ao_1_outer", "ao_1_obj"];
my_tags_2 = ["ao_2_inner", "ao_2_outer", "ao_2_obj"];
my_tags_3 = ["ao_3_inner", "ao_3_outer", "ao_3_obj"];
my_emitters_1 = [my_e_o_1, my_e_c_1];
my_emitters_2 = [];
my_emitters_3 = [];

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
    uiSleep my_despawnDelay;
    allUnits select {_x getVariable ["my_tag",""] in _tags} apply {
        private _veh = vehicle _x;
        deleteVehicleCrew _veh;
        deleteVehicle _veh;
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
    params ["_emitters", "_tags", "_count"];
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
    [my_tags_2] spawn my_ao_start;
    [my_emitters_1, my_tags_1, 1e6] spawn my_emitters_finish;
    [my_emitters_2, my_tags_2, 50] spawn my_emitters_start;
    [my_emitters_2, my_tags_2, 20] spawn my_emitters_finish;

    waitUntil {uiSleep 0.5; my_ao == 3;};
    [my_tags_2] spawn my_ao_finish;
    [my_tags_3] spawn my_ao_start;
    [my_emitters_2, my_tags_2, 1e6] spawn my_emitters_finish;
    [my_emitters_3, my_tags_3, 50] spawn my_emitters_start;
    [my_emitters_3, my_tags_3, 20] spawn my_emitters_finish;

    waitUntil {uiSleep 0.5; my_ao == 4;};
    [my_tags_3] spawn my_ao_finish;
    [my_emitters_3, my_tags_3, 1e6] spawn my_emitters_finish;
};

my_flex_off = {
    [my_e_o_1, 0, 0, 1] call jib_emitter_budget;
};
my_flex_easy = {
    [my_e_o_1, 8, 1, 300, 5] call jib_emitter_budget;
};
my_flex_normal = {
    [my_e_o_1, 14, 2, 120, 20] call jib_emitter_budget;
};
my_flex_hard = {
    [my_e_o_1, 20, 4, 1] call jib_emitter_budget;
};
my_flex_custom = {
    [my_e_o_1, 20, 4, 1] call jib_emitter_budget;
};
call my_flex_normal;
