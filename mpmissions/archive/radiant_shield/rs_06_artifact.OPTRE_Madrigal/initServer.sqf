data_script = [] execVM "capture_data.sqf";

[veh_3, veh_4, veh_5, veh_6] apply {
    [_x] spawn {
        params ["_veh"];
        waitUntil {
            uiSleep 0.5;
            !isNil "_veh" && {isTouchingGround _veh};
        };
        fullCrew _veh select {
            _x params ["_unit", "_role"];
            _role in ["turret", "cargo"];
        } apply {
            _x params ["_unit", "_role"];
            group _unit leaveVehicle _veh;
            moveOut _unit;
            uiSleep 1;
        };
    };
};

my_unitPlay = {
    params ["_veh", "_data"];
    if (!canSuspend) then {throw "Cannot suspend!"};
    [_veh] + crew _veh apply {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    };
    [_veh, _data, [_veh, "my_unitPlay_done"]] spawn BIS_fnc_unitPlay;
    waitUntil {
        uiSleep 0.5;
        !isNil {_veh getVariable "my_unitPlay_done"};
    };
    deleteVehicleCrew _veh;
    deleteVehicle _veh;
};

insert_a1 = [] spawn {
    waitUntil {
        uiSleep 1;
        missionNamespace getVariable ["insert_a1_start", false];
    };
    [0,"BLACK",3,1] call BIS_fnc_fadeEffect;
    uiSleep 4;
    [[veh_1, veh_data_1, hog_1], [veh_2, veh_data_2, hog_2]] apply {
        _x params ["_veh", "_data", "_hog"];
        [_veh, _data] spawn my_unitPlay;
        [_veh, _hog] call jib_optre_pelican_load;
    };
    uiSleep 1;
    [1,"BLACK",3,1] call BIS_fnc_fadeEffect;
};

insert_a2 = [] spawn {
    waitUntil {
        uiSleep 1;
        missionNamespace getVariable ["insert_a2_start", false];
    };
    [0,"BLACK",3,1] call BIS_fnc_fadeEffect;
    uiSleep 4;
    [[veh_1, veh_data_1, hog_3]] apply {
        _x params ["_veh", "_data", "_hog"];
        [_veh, _data] spawn my_unitPlay;
        [_veh, _hog] call jib_optre_pelican_load;
    };
    uiSleep 1;
    [1,"BLACK",3,1] call BIS_fnc_fadeEffect;
};

insert_b = [] spawn {
    waitUntil {
        uiSleep 1;
        missionNamespace getVariable ["insert_b_start", false];
    };
    [[veh_3, veh_data_3], [veh_4, veh_data_4]] apply {
        _x params ["_veh", "_data"];
        [_veh, _data] spawn my_unitPlay;
    };
};

insert_c = [] spawn {
    waitUntil {
        uiSleep 1;
        missionNamespace getVariable ["insert_c_start", false];
    };
    [[veh_5, veh_data_5], [veh_6, veh_data_6]] apply {
        _x params ["_veh", "_data"];
        [_veh, _data] spawn my_unitPlay;
    };
};
