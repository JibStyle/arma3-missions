my_cars = [car_1, car_2, car_3, car_4];
my_crates = [crate_1, crate_2];

my_crate_allLoaded = {
    {_x getVariable ["my_crate_isLoaded", false]} count my_crates
        == count my_crates;
};

my_crate_canLoad = {
    params ["_crate", "_player"];
    private _car = [_crate, my_cars] call my_crate_nearestCar;
    _crate getVariable ["my_crate_isLoaded", false] == false
        && _car getVariable ["my_crate_space", 0] > 0
        && _crate distance _player < 5
        && _crate distance _car < 10
};

my_crate_nearestCar = {
    params ["_crate", "_cars"];
    private _result = objNull;
    _cars apply {
        if (alive _x && _crate distance _x < _crate distance _result) then {
            _result = _x;
        };
    };
    _result;
};

// "\a3\data_f_destroyer\data\UI\IGUI\Cfg\holdactions\holdAction_unloadVehicle_ca.paa"
my_crate_setup = {
    params ["_crate"];
    [
        _crate,
        "Load into Vehicle",
        "\a3\data_f_destroyer\data\UI\IGUI\Cfg\holdactions\holdAction_loadVehicle_ca.paa",
        "\a3\data_f_destroyer\data\UI\IGUI\Cfg\holdactions\holdAction_loadVehicle_ca.paa",
        toString {[_target, player] call my_crate_canLoad},
        toString {[_target, player] call my_crate_canLoad},
        {},
        {},
        {
            private _car = [_target, my_cars] call my_crate_nearestCar;
            private _offset = [0,0,0];
            private _space = 0;
            private _seats = [];
            if (_car isKindOf "OPFa_mas_VehE_Truck_02_transport_F") then {
                if (_car getVariable ["my_crate_space", 0] > 1) then {
                    _offset = [0,-0.105835,.1];
                    _space = 1;
                } else {
                    _offset = [0,-2.39233,.1];
                    _space = 0;
                };
                _seats = [2,3,4,5,6,7,8,9,10,11,12,13];
            } else {
                _offset = [0,-1.7229,0.25];
                _space = 0;
                _seats = [1,2,3,4];
            };
            _target attachTo [_car, _offset];
            _target setDir 90;
            _target attachTo [_car, _offset];
            _target setDir 90;
            _target setVariable ["my_crate_isLoaded", true, true];
            _car setVariable ["my_crate_space", _space, true];
            _seats apply {_car lockCargo [_x, true]};
        },
        {},
        [],
        10,
        1000,
        false,
        false,
        true
    ] call BIS_fnc_holdActionAdd;
};

my_crates apply {[_x] call my_crate_setup};
