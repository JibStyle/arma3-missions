my_despawnDelay = 120;
my_despawnInterval = 1;
my_ao = 0;
[] spawn {
    waitUntil {uiSleep 0.5; my_ao == 1;};
    allUnits select {_x getVariable ["my_tag",""] == "garrison_1"} apply {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    };

    waitUntil {uiSleep 0.5; my_ao == 2;};
    allUnits select {_x getVariable ["my_tag",""] == "garrison_2"} apply {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    };
    uiSleep my_despawnDelay;
    allUnits select {_x getVariable ["my_tag",""] == "garrison_1"} apply {
        private _veh = _x;
        deleteVehicleCrew _veh;
        deleteVehicle _veh;
        uiSleep my_despawnInterval;
    };

    waitUntil {uiSleep 0.5; my_ao == 3;};
    allUnits select {_x getVariable ["my_tag",""] == "garrison_3"} apply {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    };
    uiSleep my_despawnDelay;
    allUnits select {_x getVariable ["my_tag",""] == "garrison_2"} apply {
        private _veh = _x;
        deleteVehicleCrew _veh;
        deleteVehicle _veh;
        uiSleep my_despawnInterval;
    };
    [my_e_o_inf] call jib_emitter_disable;
    [my_e_o_arm] call jib_emitter_disable;

    waitUntil {uiSleep 0.5; my_ao == 4;};
    allUnits select {_x getVariable ["my_tag",""] == "garrison_4"} apply {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    };
    uiSleep my_despawnDelay;
    allUnits select {_x getVariable ["my_tag",""] == "garrison_3"} apply {
        private _veh = _x;
        deleteVehicleCrew _veh;
        deleteVehicle _veh;
        uiSleep my_despawnInterval;
    };

    waitUntil {uiSleep 0.5; my_ao == 5;};
    uiSleep my_despawnDelay;
    allUnits select {_x getVariable ["my_tag",""] == "garrison_4"} apply {
        private _veh = _x;
        // deleteVehicleCrew _veh;
        // deleteVehicle _veh;
        // uiSleep my_despawnInterval;
    };
};

my_flex_off = {
    [my_e_o_inf, 0, 0, 1] call jib_emitter_budget;
    [my_e_o_arm, 0, 0, 1] call jib_emitter_budget;
};
my_flex_easy = {
    [my_e_o_inf, 6, 1, 120] call jib_emitter_budget;
    [my_e_o_arm, 10, 1, 300] call jib_emitter_budget;
};
my_flex_normal = {
    [my_e_o_inf, 8, 1, 10] call jib_emitter_budget;
    [my_e_o_arm, 10, 1, 60] call jib_emitter_budget;
};
my_flex_hard = {
    [my_e_o_inf, 12, 1, 10] call jib_emitter_budget;
    [my_e_o_arm, 10, 3, 30] call jib_emitter_budget;
};
my_flex_custom = {
    [my_e_o_inf, 12, 1, 1] call jib_emitter_budget;
    [my_e_o_arm, 10, 2, 1] call jib_emitter_budget;
};
call my_flex_normal;
