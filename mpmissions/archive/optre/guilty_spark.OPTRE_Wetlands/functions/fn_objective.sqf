my_objective_control_room = {
    params [
        "_object",
        ["_scale", 4, [0]],
        ["_brightness", 15, [0]],
        ["_color", [.5, .5, 1], [[]]]
    ];
    private _light =
        "#lightpoint" createVehicleLocal getPosATL _object;
    _light setLightColor _color;
    _light setLightAmbient _color;
    _light setLightBrightness _brightness;
    _light setLightDayLight true;
    if (isServer) then {
        _object hideObjectGlobal false;
        _object setObjectScale _scale;
    };
};
