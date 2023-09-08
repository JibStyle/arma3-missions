my_alive_start = {
    if (!isServer) then {throw "Not server!"};
    [] call jib_alive_profileEnable;
    [] call jib_alive_opcomEnable;
};
my_wp_magic = {
    params ["_leader"];
    private _curPos = getPosATL _leader;
    private _xSum = 0;
    private _ySum = 0;
    private _count = 0;
    allPlayers apply {
        _xSum = _xSum + getPosATL _x # 0;
        _ySum = _ySum + getPosATL _x # 1;
        _count = _count + 1;
    };
    private _avgPos = [_xSum / _count, _ySum / _count, 0];
    private _angle = random [-90, 0, 90];
    private _wpPos = [
    ]
};
