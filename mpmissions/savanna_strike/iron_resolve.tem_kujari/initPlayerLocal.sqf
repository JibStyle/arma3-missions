player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- <marker name='obj_assassin1'>Assassin 1</marker>: Player Force Recon team, 30 MHz<br/>
- <marker name='obj_echo22'>Echo 2-2</marker>: Mechanized support squad<br/>
- <marker name='obj_rodeo1'>Rodeo 1</marker>: Evac Ghosthawk<br/>
- <marker name='obj_uniform'>Raptor 4</marker>: Downed pilots"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Clear the village <marker name='obj_kumbotso'>Kumbotso</marker> with support from <marker name='obj_echo22'>Echo 2-2</marker>.<br/>
2. Secure checkpoints <marker name='cp_1'>Romeo</marker>, <marker name='cp_2'>Sierra</marker>, and <marker name='cp_3'>Tango</marker>.<br/>
3. Locate and rescue the pilots <marker name='obj_uniform'>Raptor 4</marker>.<br/>
4. Retreat to <marker name='obj_victor'>LZ Victor</marker> and evac via <marker name='obj_rodeo1'>Rodeo 1</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Locate and rescue the <marker name='obj_uniform'>two pilots</marker>. Extract at <marker name='obj_victor'>LZ Victor</marker>."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Blackfoot helicopter Raptor 4 was <marker name='obj_uniform'>shot down</marker> behind enemy lines. The pilots will soon be captured by enemy forces. We have organized a small CSAR force to rescue them. An enemy <marker name='obj_opf_inf'>infantry company</marker> patrols the jungle, and a <marker name='obj_opf_mech'>mechanized platoon</marker> patrols the plains. We will play as a Force Recon team supported by a mechanized squad and evac helicopter."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation

call my_spawnMenu;

my_alive = {
    [] remoteExec ["jib_alive_profileEnable", 2];
    [] remoteExec ["jib_alive_opcomEnable", 2];
};

my_menu = [
    ["My Menu", true],
    [
        "Start ALiVE", [2], "", -5,
        [["expression", "[] call my_alive"]], "1", "1"
    ]
];
