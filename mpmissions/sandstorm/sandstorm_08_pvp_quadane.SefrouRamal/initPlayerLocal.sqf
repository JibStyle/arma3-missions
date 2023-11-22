terminate (missionNamespace getVariable ["my_mission_status", scriptNull]);
missionNamespace setVariable [
    "my_mission_status",
    [] spawn {
        scriptName "my_mission_status";
        while {true} do {
            waitUntil {uiSleep 0.5; !isNull findDisplay 312;};
            waitUntil {uiSleep 0.5; isNull findDisplay 312;};
            [] call BIS_fnc_showMissionStatus;
        };
    }
];

terminate (missionNamespace getVariable ["my_disable_hud", scriptNull]);
missionNamespace setVariable [
    "my_disable_hud",
    [] spawn {
        scriptName "my_disable_hud";
        while {true} do {
            uiSleep 1;
            showHUD [
                true, // scriptedHUD
                true, // info
                true, // radar
                true, // compass
                true, // direction
                true, // menu
                true, // group
                true, // cursors
                true, // panels
                false, // kills
                false  // showIcon3D
            ];
            showScoretable 0;
        };
    }
];

terminate (missionNamespace getVariable ["my_markers_show", scriptNull]);
missionNamespace setVariable [
    "my_markers_show",
    [] spawn {
        scriptName "my_markers_sides";
        while {true} do {
            uiSleep 0.5;
            [
                "east_x", "east_y", "east_z", "west_x", "west_y", "west_z"
            ] apply {_x setMarkerAlphaLocal 0};
            switch true do
            {
                case (side player == east): {
                    [
                        "east_x", "east_y", "east_z"
                    ] apply {_x setMarkerAlphaLocal 1};
                };
                case (side player == west): {
                    [
                        "west_x", "west_y", "west_z"
                    ] apply {_x setMarkerAlphaLocal 1};
                };
                default {};
            };
        };
    }
];

waitUntil {uiSleep 0.5; !isNull (findDisplay 46);};
findDisplay 46 displayRemoveEventHandler [
    "KeyDown", missionNamespace getVariable ["my_command_disable", -1]
];
missionNamespace setVariable [
    "my_command_disable",
    findDisplay 46 displayAddEventHandler ["KeyDown", {
        params ["_displayOrControl", "_key", "_shift", "_ctrl", "_alt"];
        // https://community.bistudio.com/wiki/inputAction/actions
        private _blacklist = [
            // "ActionInMap",
            "navigateMenu",
            "selectAll",
            "switchCommand",
            "SelectGroupUnit1",
            "SelectGroupUnit2",
            "SelectGroupUnit3",
            "SelectGroupUnit4",
            "SelectGroupUnit5",
            "SelectGroupUnit6",
            "SelectGroupUnit7",
            "SelectGroupUnit8",
            "SelectGroupUnit9",
            "SelectGroupUnit0",
            "SetTeamRed",
            "SetTeamGreen",
            "SetTeamBlue",
            "SetTeamYellow",
            "SetTeamWhite",
            "SelectTeamRed",
            "SelectTeamGreen",
            "SelectTeamBlue",
            "SelectTeamYellow",
            "SelectTeamWhite",
            "CommandingMenu1",
            "CommandingMenu2",
            "CommandingMenu3",
            "CommandingMenu4",
            "CommandingMenu5",
            "CommandingMenu6",
            "CommandingMenu7",
            "CommandingMenu8",
            "CommandingMenu9",
            "CommandingMenu0"
            // "commandWatch",
            // "commandLeft",
            // "commandRight",
            // "commandForward",
            // "commandBack",
            // "commandFast",
            // "commandSlow"
        ];
        {inputAction _x > 0} count _blacklist > 0;
    }]
];
