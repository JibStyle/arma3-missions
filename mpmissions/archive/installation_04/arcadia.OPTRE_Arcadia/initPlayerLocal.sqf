player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Signal_title",
        "- Omega: Player squad (30 MHz)<br/>
- Assassin: ODSTs<br/>
- Hitman: Marines<br/>
- Warpig: Armor<br/>
- Rodeo: Pelicans"
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Execution_title",
        "1. Orbital drop to New Delphi.<br/>
2. Repel Covenant forces.<br/>
3. Ride Pelican to Lykaion Outpost.<br/>
4. Destroy Covenant forces in the valley."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Mission_title",
        "Drop from orbit into New Delphi and repel Covenant forces, allowing civilians to reach the space port and evacuate. Afterwards, deploy to Lykaion Outpost and destroy Covenant forces in the nearby valley."
    ]
];
player createDiaryRecord [
    "Diary",
    [
        localize "STR_A3_Diary_Situation_title",
        "Two Covenant cruisers arrived over tourism colony Arcadia. A UNSC battle group destroyed one, but the other launched a ground invasion. The Covenant 1st Battalion is attacking civilian targets in the capital New Delphi, and 2nd Battalion occupies the valley between towns Patras and Erseke. UNSC Marines and ODSTs are engaging in both AOs, and Spartan II Team Omega has been dispatched from the UNSC Spirit of Fire."
    ]
];
uiSleep 1;
player selectDiarySubject "Diary:Record3"; // Situation
