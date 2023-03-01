player addAction [
    "Group Menu", {showCommandingMenu "#USER:my_menu_group"},
    [], 1.5, false, true, "", "[] call my_can_group"
];
player addAction [
    "Spawn Units", {showCommandingMenu "#USER:my_menu_unit"},
    [], 1.5, false, true, "", "[] call my_can_unit"
];
player addAction [
    "Spawn Vehicles", {showCommandingMenu "#USER:my_menu_vehicle"},
    [], 1.5, false, true, "", "[] call my_can_vehicle"
];

call my_spawnMenu;
