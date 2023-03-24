// Setup HC
my_hc_setup = {
    if (!isServer) exitWith {};
    [
        leader my_crossroads,
        [
            my_crossroads,
            my_assassin11,
            my_assassin12,
            my_assassin13,
            my_assassin14
        ]
    ] call jib_hc_setup;
};

// Fix bug
my_hc_fix = {
    params ["_leader"];
    if (!isServer) exitWith {};
    private _groups = hcAllGroups _leader;
    hcRemoveAllGroups _leader;
    _groups apply {
        _leader hcSetGroup [_x];
    };
};
