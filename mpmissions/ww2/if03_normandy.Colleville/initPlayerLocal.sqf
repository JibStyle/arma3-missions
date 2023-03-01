my_intel = {
    params ["_objects"];
    _objects apply {
        [
            _x,
            "Examine Intel",
            "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
            "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
            "true",
            "true",
            {},
            {},
            {
                params ["_target", "_caller", "_actionId", "_arguments"];
                _arguments params ["_objects"];
                _objects apply {deleteVehicle _x};
                "obj_cp" setMarkerAlpha 1;
                hint format [
                    "German Command Post marked at %1",
                    mapGridPosition getMarkerPos "obj_cp"
                ];
                uiSleep 10;
                hintSilent "";
            },
            {},
            [_objects],
            5
        ] call BIS_fnc_holdActionAdd;
    };
};

my_intel_cp = {
    params ["_objects"];
    _objects apply {
        [
            _x,
            "Examine Intel",
            "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
            "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
            "true",
            "true",
            {},
            {},
            {
                params ["_target", "_caller", "_actionId", "_arguments"];
                _arguments params ["_objects"];
                _objects apply {deleteVehicle _x};
                [
                    "obj_town_1", "obj_town_2", "obj_town_3"
                ] apply {_x setMarkerAlpha 1};
                hint format [
                    "German occupied buildings marked on map."
                ];
                uiSleep 10;
                hintSilent "";
            },
            {},
            [_objects],
            5
        ] call BIS_fnc_holdActionAdd;
    };
};

[
    [
        intel_0, intel_1, intel_2, intel_3, intel_4, intel_5, intel_6,
        intel_7, intel_8, intel_9, intel_10, intel_11, intel_12, intel_13
    ] select {!isNull _x}
] call my_intel;
[
    [
        intel_cp_0, intel_cp_1, intel_cp_2, intel_cp_3, intel_cp_4,
        intel_cp_5, intel_cp_6, intel_cp_7, intel_cp_8, intel_cp_9,
        intel_cp_10, intel_cp_11, intel_cp_12, intel_cp_13, intel_cp_14,
        intel_cp_15, intel_cp_16, intel_cp_17, intel_cp_18, intel_cp_19,
        intel_cp_20, intel_cp_21, intel_cp_22, intel_cp_23, intel_cp_24,
        intel_cp_25, intel_cp_26, intel_cp_27, intel_cp_28, intel_cp_29,
        intel_cp_30, intel_cp_31, intel_cp_32, intel_cp_33, intel_cp_34,
        intel_cp_35, intel_cp_36, intel_cp_37, intel_cp_38, intel_cp_39,
        intel_cp_40, intel_cp_41, intel_cp_42, intel_cp_43, intel_cp_44,
        intel_cp_45, intel_cp_46, intel_cp_47, intel_cp_48, intel_cp_49,
        intel_cp_50
    ] select {!isNull _x}
] call my_intel_cp;
