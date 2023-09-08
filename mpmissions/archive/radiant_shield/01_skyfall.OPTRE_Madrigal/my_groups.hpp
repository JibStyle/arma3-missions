#define MY_G_O_1 side=0; rank="PRIVATE";
#define MY_G_O_2 side=0; rank="CORPORAL";
#define MY_G_O_3 side=0; rank="SERGEANT";
#define MY_G_O_4 side=0; rank="LIEUTENANT";
#define MY_G_O_5 side=0; rank="CAPTAIN";
#define MY_G_O_6 side=0; rank="MAJOR";
#define MY_G_O_7 side=0; rank="COLONEL";
#define MY_G_B_1 side=1; rank="PRIVATE";
#define MY_G_B_2 side=1; rank="CORPORAL";
#define MY_G_B_3 side=1; rank="SERGEANT";
#define MY_G_B_4 side=1; rank="LIEUTENANT";
#define MY_G_B_5 side=1; rank="CAPTAIN";
#define MY_G_B_6 side=1; rank="MAJOR";
#define MY_G_B_7 side=1; rank="COLONEL";
#define MY_G_I_1 side=2; rank="PRIVATE";
#define MY_G_I_2 side=2; rank="CORPORAL";
#define MY_G_I_3 side=2; rank="SERGEANT";
#define MY_G_I_4 side=2; rank="LIEUTENANT";
#define MY_G_I_5 side=2; rank="CAPTAIN";
#define MY_G_I_6 side=2; rank="MAJOR";
#define MY_G_I_7 side=2; rank="COLONEL";

#define MY_G_O_OPTRE_JACKAL_SECTION side=0; faction="my_o_wbk";      \
    class 0 {MY_G_O_2 vehicle="OPTRE_Jackal_Major_F";};              \
    class 1 {MY_G_O_1 vehicle="OPTRE_Jackal_F";};                    \
    class 2 {MY_G_O_1 vehicle="OPTRE_Jackal_F";};                    \
    class 3 {MY_G_O_1 vehicle="OPTRE_Jackal_F";};
#define MY_G_O_OPTRE_JACKAL_PATROL side=0; faction="my_o_wbk";       \
    class 4 {MY_G_O_2 vehicle="OPTRE_Jackal_F";};                    \
    class 5 {MY_G_O_1 vehicle="OPTRE_Jackal_F";};
#define MY_G_O_OPTRE_JACKAL_SNIPER_TEAM side=0; faction="my_o_wbk";  \
    class 6 {MY_G_O_3 vehicle="OPTRE_Jackal_Sniper_F";};             \
    class 7 {MY_G_O_2 vehicle="OPTRE_Jackal_Sharpshooter_F";};
#define MY_G_O_OPTRE_JACKAL_RECON_TEAM side=0; faction="my_o_wbk";   \
    class 8 {MY_G_O_2 vehicle="OPTRE_Jackal_Sharpshooter_F";};       \
    class 9 {MY_G_O_1 vehicle="OPTRE_Jackal_Sharpshooter_F";};       \
    class 10 {MY_G_O_1 vehicle="OPTRE_Jackal_Sharpshooter_F";};      \
    class 11 {MY_G_O_1 vehicle="OPTRE_Jackal_Sniper_F";};
#define MY_G_O_OPTRE_ELITE_SECTION side=0; faction="my_o_wbk";       \
    class 12 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Major";};             \
    class 13 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Minor";};             \
    class 14 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Minor";};             \
    class 15 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Minor2";};
#define MY_G_O_OPTRE_ELITE_AA_SECTION side=0; faction="my_o_wbk";    \
    class 16 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Major";};             \
    class 17 {MY_G_O_1 vehicle="OPTRE_FC_Elite_MinorAA";};           \
    class 18 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Minor";};             \
    class 19 {MY_G_O_1 vehicle="OPTRE_FC_Elite_MinorAA";};
#define MY_G_O_OPTRE_ELITE_AT_SECTION side=0; faction="my_o_wbk";    \
    class 20 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Major";};             \
    class 21 {MY_G_O_1 vehicle="OPTRE_FC_Elite_MinorAT";};           \
    class 22 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Minor";};             \
    class 23 {MY_G_O_1 vehicle="OPTRE_FC_Elite_MinorAT";};
#define MY_G_O_OPTRE_ELITE_PATROL side=0; faction="my_o_wbk";        \
    class 24 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Minor";};             \
    class 25 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Minor";};
#define MY_G_O_OPTRE_ELITE_SNIPER_TEAM side=0; faction="my_o_wbk";   \
    class 26 {MY_G_O_3 vehicle="OPTRE_FC_Elite_SpecOps";};           \
    class 27 {MY_G_O_2 vehicle="OPTRE_FC_Elite_SpecOps2";};
#define MY_G_O_OPTRE_ELITE_RECON_TEAM side=0; faction="my_o_wbk";    \
    class 28 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Ultra3";};            \
    class 29 {MY_G_O_1 vehicle="OPTRE_FC_Elite_SpecOps2";};          \
    class 30 {MY_G_O_1 vehicle="OPTRE_FC_Elite_SpecOps2";};          \
    class 31 {MY_G_O_1 vehicle="OPTRE_FC_Elite_SpecOps";};
#define MY_G_O_OPTRE_ELITE_COMMAND_TEAM side=0; faction="my_o_wbk";  \
    class 32 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Zealot";};            \
    class 33 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Major";};             \
    class 34 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Major";};
#define MY_G_O_OPTRE_ELITE_COMMAND_SQUAD side=0; faction="my_o_wbk"; \
    class 35 {MY_G_O_3 vehicle="OPTRE_FC_Elite_FieldMarshal";};      \
    class 36 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Zealot";};            \
    class 37 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Major";};             \
    class 38 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Major";};             \
    class 39 {MY_G_O_1 vehicle="OPTRE_FC_Elite_HonorGuard";};        \
    class 40 {MY_G_O_1 vehicle="OPTRE_FC_Elite_HonorGuard";};
#define MY_G_O_OPTRE_MIXED_LEVY side=0; faction="my_o_wbk";          \
    class 41 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Minor";};             \
    class 42 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 43 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 44 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};
#define MY_G_O_OPTRE_MIXED_SECTION side=0; faction="my_o_wbk";       \
    class 45 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Minor";};             \
    class 46 {MY_G_O_1 vehicle="OPTRE_Jackal_F";};                   \
    class 47 {MY_G_O_1 vehicle="OPTRE_Jackal_F";};                   \
    class 48 {MY_G_O_1 vehicle="OPTRE_Jackal_Sharpshooter_F";};
#define MY_G_O_OPTRE_MIXED_RECON_TEAM side=0; faction="my_o_wbk";    \
    class 49 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Ultra3";};            \
    class 50 {MY_G_O_1 vehicle="OPTRE_FC_Elite_SpecOps2";};          \
    class 51 {MY_G_O_1 vehicle="OPTRE_Jackal_SpecOps_F";};           \
    class 52 {MY_G_O_1 vehicle="OPTRE_Jackal_SpecOps_F";};           \
    class 53 {MY_G_O_1 vehicle="OPTRE_FC_Elite_SpecOps";};
#define MY_G_O_OPTRE_MIXED_COMMAND_TEAM side=0; faction="my_o_wbk";  \
    class 54 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Zealot2";};           \
    class 55 {MY_G_O_1 vehicle="OPTRE_FC_Elite_Major";};             \
    class 56 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry_F";};          \
    class 57 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry_F";};
#define MY_G_O_OPTRE_MIXED_FILE side=0; faction="my_o_wbk";          \
    class 58 {MY_G_O_3 vehicle="OPTRE_FC_Elite_Zealot2";};           \
    class 59 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Major";};             \
    class 60 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry_F";};          \
    class 61 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 62 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 63 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 64 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 65 {MY_G_O_1 vehicle="OPTRE_Jackal_F";};                   \
    class 66 {MY_G_O_1 vehicle="OPTRE_Jackal_F";};                   \
    class 67 {MY_G_O_1 vehicle="OPTRE_Jackal_Sharpshooter_F";};      \
    class 68 {MY_G_O_1 vehicle="OPTRE_Jackal_Sharpshooter_F";};      \
    class 69 {MY_G_O_1 vehicle="OPTRE_FC_Elite_MinorAT";};           \
    class 70 {MY_G_O_1 vehicle="OPTRE_FC_Elite_MinorAA";};
#define MY_G_O_OPTRE_MIXED_SPEC_OPS_FILE side=0; faction="my_o_wbk"; \
    class 71 {MY_G_O_3 vehicle="OPTRE_FC_Elite_Zealot2";};           \
    class 72 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Ultra3";};            \
    class 73 {MY_G_O_1 vehicle="OPTRE_Jackal_SpecOps3_F";};          \
    class 74 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 75 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 76 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 77 {MY_G_O_1 vehicle="OPTRE_Jackal_SpecOps_F";};           \
    class 78 {MY_G_O_1 vehicle="OPTRE_Jackal_SpecOps2_F";};          \
    class 79 {MY_G_O_1 vehicle="OPTRE_Jackal_SpecOps3_F";};          \
    class 80 {MY_G_O_1 vehicle="OPTRE_Jackal_Sharpshooter_F";};      \
    class 81 {MY_G_O_1 vehicle="OPTRE_Jackal_Sharpshooter_F";};      \
    class 82 {MY_G_O_1 vehicle="OPTRE_FC_Elite_MinorAT";};           \
    class 83 {MY_G_O_1 vehicle="OPTRE_FC_Elite_MinorAA";};
#define MY_G_O_OPTRE_SPECTRE_ARMED side=0; faction="my_o_optre";     \
    class 84 {MY_G_O_3 vehicle="OPTRE_FC_Spectre";};
#define MY_G_O_OPTRE_SPECTRE_MIXED side=0; faction="my_o_optre";     \
    class 85 {MY_G_O_3 vehicle="OPTRE_FC_Spectre_Empty";};           \
    class 86 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Minor";};             \
    class 87 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 88 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};         \
    class 89 {MY_G_O_1 vehicle="OPTRE_Jackal_Infantry2_F";};
#define MY_G_O_OPTRE_SPECTRE_ELITE side=0; faction="my_o_optre";     \
    class 90 {MY_G_O_3 vehicle="OPTRE_FC_Spectre_Empty";};           \
    class 91 {MY_G_O_3 vehicle="OPTRE_FC_Elite_Major";};             \
    class 92 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Minor";};             \
    class 93 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Minor";};             \
    class 94 {MY_G_O_2 vehicle="OPTRE_FC_Elite_Minor2";};
#define MY_G_O_OPTRE_GHOST_PAIR side=0; faction="my_o_optre";        \
    class 95 {MY_G_O_3 vehicle="OPTRE_FC_Ghost";};                   \
    class 96 {MY_G_O_3 vehicle="OPTRE_FC_Ghost";};
#define MY_G_O_OPTRE_GHOST_HEAVY side=0; faction="my_o_optre";       \
    class 97 {MY_G_O_3 vehicle="OPTRE_FC_Ghost_Armor";};
#define MY_G_O_OPTRE_WRAITH side=0; faction="my_o_optre";            \
    class 98 {MY_G_O_3 vehicle="OPTRE_FC_Wraith";};

#define MY_G_O_WBK_GRUNT_SENTRY_MINOR side=0; faction="my_o_wbk";         \
    class 99 {MY_G_O_3 vehicle="WBK_Grunt_1";};                           \
    class 100 {MY_G_O_1 vehicle="WBK_Grunt_5";};
#define MY_G_O_WBK_GRUNT_SENTRY_ULTRA side=0; faction="my_o_wbk";         \
    class 101 {MY_G_O_3 vehicle="WBK_Grunt_4";};                          \
    class 102 {MY_G_O_1 vehicle="WBK_Grunt_4";};
#define MY_G_O_WBK_GRUNT_FIRETEAM_LIGHT side=0; faction="my_o_wbk";       \
    class 103 {MY_G_O_3 vehicle="WBK_Grunt_1";};                          \
    class 104 {MY_G_O_1 vehicle="WBK_Grunt_5";};                          \
    class 105 {MY_G_O_1 vehicle="WBK_Grunt_1";};                          \
    class 106 {MY_G_O_1 vehicle="WBK_Grunt_5";};
#define MY_G_O_WBK_GRUNT_FIRETEAM_MEDIUM side=0; faction="my_o_wbk";      \
    class 107 {MY_G_O_3 vehicle="WBK_Grunt_2";};                          \
    class 108 {MY_G_O_1 vehicle="WBK_Grunt_5";};                          \
    class 109 {MY_G_O_1 vehicle="WBK_Grunt_1";};                          \
    class 110 {MY_G_O_1 vehicle="WBK_Grunt_3";};
#define MY_G_O_WBK_GRUNT_FIRETEAM_HEAVY side=0; faction="my_o_wbk";       \
    class 111 {MY_G_O_3 vehicle="WBK_Grunt_4";};                          \
    class 112 {MY_G_O_1 vehicle="WBK_Grunt_3";};                          \
    class 113 {MY_G_O_1 vehicle="WBK_Grunt_3";};                          \
    class 114 {MY_G_O_1 vehicle="WBK_Grunt_3";};
#define MY_G_O_WBK_ELITE_SENTRY_MINOR side=0; faction="my_o_wbk";         \
    class 115 {MY_G_O_3 vehicle="WBK_EliteMainWeap_2";};                  \
    class 116 {MY_G_O_1 vehicle="WBK_EliteMainWeap_2";};
#define MY_G_O_WBK_ELITE_SENTRY_HONOR side=0; faction="my_o_wbk";         \
    class 117 {MY_G_O_3 vehicle="WBK_EliteMainWeap_7";};                  \
    class 118 {MY_G_O_1 vehicle="WBK_EliteMainWeap_7";};
#define MY_G_O_WBK_ELITE_SENTRY_ULTRA side=0; faction="my_o_wbk";         \
    class 119 {MY_G_O_3 vehicle="WBK_EliteMainWeap_9";};                  \
    class 120 {MY_G_O_1 vehicle="WBK_EliteMainWeap_9";};
#define MY_G_O_WBK_ELITE_SENTRY_SPEC side=0; faction="my_o_wbk";          \
    class 121 {MY_G_O_3 vehicle="WBK_EliteMainWeap_1";};                  \
    class 122 {MY_G_O_1 vehicle="WBK_EliteMainWeap_1";};
#define MY_G_O_WBK_ELITE_FIRETEAM_MAJOR side=0; faction="my_o_wbk";       \
    class 123 {MY_G_O_3 vehicle="WBK_EliteMainWeap_3";};                  \
    class 124 {MY_G_O_1 vehicle="WBK_EliteMainWeap_2";};                  \
    class 125 {MY_G_O_1 vehicle="WBK_EliteMainWeap_2";};                  \
    class 126 {MY_G_O_1 vehicle="WBK_EliteMainWeap_2";};
#define MY_G_O_WBK_ELITE_FIRETEAM_OFFICER side=0; faction="my_o_wbk";     \
    class 127 {MY_G_O_3 vehicle="WBK_EliteMainWeap_6";};                  \
    class 128 {MY_G_O_1 vehicle="WBK_EliteMainWeap_3";};                  \
    class 129 {MY_G_O_1 vehicle="WBK_EliteMainWeap_2";};                  \
    class 130 {MY_G_O_1 vehicle="WBK_EliteMainWeap_2";};
#define MY_G_O_WBK_ELITE_FIRETEAM_ULTRA side=0; faction="my_o_wbk";       \
    class 131 {MY_G_O_3 vehicle="WBK_EliteMainWeap_9";};                  \
    class 132 {MY_G_O_1 vehicle="WBK_EliteMainWeap_9";};                  \
    class 133 {MY_G_O_1 vehicle="WBK_EliteMainWeap_9";};                  \
    class 134 {MY_G_O_1 vehicle="WBK_EliteMainWeap_9";};
#define MY_G_O_WBK_ELITE_FIRETEAM_SPEC side=0; faction="my_o_wbk";        \
    class 135 {MY_G_O_3 vehicle="WBK_EliteMainWeap_4";};                  \
    class 136 {MY_G_O_1 vehicle="WBK_EliteMainWeap_1";};                  \
    class 137 {MY_G_O_1 vehicle="WBK_EliteMainWeap_1";};                  \
    class 138 {MY_G_O_1 vehicle="WBK_EliteMainWeap_1";};
#define MY_G_O_WBK_ELITE_FIRETEAM_ZEALOT side=0; faction="my_o_wbk";      \
    class 139 {MY_G_O_3 vehicle="WBK_EliteMainWeap_8";};                  \
    class 140 {MY_G_O_1 vehicle="WBK_EliteMainWeap_8";};                  \
    class 141 {MY_G_O_1 vehicle="WBK_EliteMainWeap_8";};                  \
    class 142 {MY_G_O_1 vehicle="WBK_EliteMainWeap_8";};
#define MY_G_O_WBK_ELITE_FIRETEAM_MARSHALL side=0; faction="my_o_wbk";    \
    class 143 {MY_G_O_3 vehicle="WBK_EliteMainWeap_5";};                  \
    class 144 {MY_G_O_1 vehicle="WBK_EliteMainWeap_8";};                  \
    class 145 {MY_G_O_1 vehicle="WBK_EliteMainWeap_8";};                  \
    class 146 {MY_G_O_1 vehicle="WBK_EliteMainWeap_8";};
#define MY_G_O_WBK_MIXED_FIRETEAM_MINOR side=0; faction="my_o_wbk";       \
    class 147 {MY_G_O_3 vehicle="WBK_EliteMainWeap_2";};                  \
    class 148 {MY_G_O_1 vehicle="WBK_Grunt_5";};                          \
    class 149 {MY_G_O_1 vehicle="WBK_Grunt_1";};                          \
    class 150 {MY_G_O_1 vehicle="WBK_Grunt_1";};
#define MY_G_O_WBK_MIXED_FIRETEAM_OFFICER side=0; faction="my_o_wbk";     \
    class 151 {MY_G_O_3 vehicle="WBK_EliteMainWeap_6";};                  \
    class 152 {MY_G_O_1 vehicle="WBK_Grunt_3";};                          \
    class 153 {MY_G_O_1 vehicle="WBK_Grunt_3";};                          \
    class 154 {MY_G_O_1 vehicle="WBK_Grunt_3";};
#define MY_G_O_WBK_MIXED_FIRETEAM_ULTRA side=0; faction="my_o_wbk";       \
    class 155 {MY_G_O_3 vehicle="WBK_EliteMainWeap_9";};                  \
    class 156 {MY_G_O_1 vehicle="WBK_Grunt_4";};                          \
    class 157 {MY_G_O_1 vehicle="WBK_Grunt_4";};                          \
    class 158 {MY_G_O_1 vehicle="WBK_Grunt_4";};
#define MY_G_O_WBK_HUNTER_SENTRY_BLUE side=0; faction="my_o_wbk";         \
    class 159 {MY_G_O_3 vehicle="WBK_HaloHunter_1";};                     \
    class 160 {MY_G_O_1 vehicle="WBK_HaloHunter_1";};
#define MY_G_O_WBK_HUNTER_SENTRY_GOLD side=0; faction="my_o_wbk";         \
    class 161 {MY_G_O_3 vehicle="WBK_HaloHunter_3";};                     \
    class 162 {MY_G_O_1 vehicle="WBK_HaloHunter_3";};
#define MY_G_O_WBK_HUNTER_SENTRY_RED side=0; faction="my_o_wbk";          \
    class 163 {MY_G_O_3 vehicle="WBK_HaloHunter_2";};                     \
    class 164 {MY_G_O_1 vehicle="WBK_HaloHunter_2";};
#define MY_G_O_WBK_MIXED_HUNTER_FIRETEAM_BLUE side=0; faction="my_o_wbk"; \
    class 165 {MY_G_O_3 vehicle="WBK_HaloHunter_1";};                     \
    class 166 {MY_G_O_1 vehicle="WBK_HaloHunter_1";};                     \
    class 167 {MY_G_O_1 vehicle="WBK_Grunt_2";};                          \
    class 168 {MY_G_O_1 vehicle="WBK_Grunt_1";};                          \
    class 169 {MY_G_O_1 vehicle="WBK_Grunt_5";};                          \
    class 170 {MY_G_O_1 vehicle="WBK_Grunt_3";};
#define MY_G_O_WBK_MIXED_HUNTER_FIRETEAM_GOLD side=0; faction="my_o_wbk"; \
    class 171 {MY_G_O_3 vehicle="WBK_HaloHunter_3";};                     \
    class 172 {MY_G_O_1 vehicle="WBK_HaloHunter_3";};                     \
    class 173 {MY_G_O_1 vehicle="WBK_Grunt_4";};                          \
    class 174 {MY_G_O_1 vehicle="WBK_Grunt_4";};                          \
    class 175 {MY_G_O_1 vehicle="WBK_Grunt_4";};                          \
    class 176 {MY_G_O_1 vehicle="WBK_Grunt_4";};
#define MY_G_O_WBK_MIXED_HUNTER_FIRETEAM_RED side=0; faction="my_o_wbk";  \
    class 177 {MY_G_O_3 vehicle="WBK_HaloHunter_2";};                     \
    class 178 {MY_G_O_1 vehicle="WBK_HaloHunter_2";};                     \
    class 179 {MY_G_O_1 vehicle="WBK_Grunt_2";};                          \
    class 180 {MY_G_O_1 vehicle="WBK_Grunt_2";};                          \
    class 181 {MY_G_O_1 vehicle="WBK_Grunt_2";};                          \
    class 182 {MY_G_O_1 vehicle="WBK_Grunt_2";};
#define MY_G_O_WBK_MIXED_HUNTER_FIRETEAM_SPEC side=0; faction="my_o_wbk"; \
    class 183 {MY_G_O_3 vehicle="WBK_HaloHunter_1";};                     \
    class 184 {MY_G_O_1 vehicle="WBK_HaloHunter_1";};                     \
    class 185 {MY_G_O_1 vehicle="WBK_EliteMainWeap_4";};                  \
    class 186 {MY_G_O_1 vehicle="WBK_EliteMainWeap_1";};                  \
    class 187 {MY_G_O_1 vehicle="WBK_Grunt_4";};                          \
    class 188 {MY_G_O_1 vehicle="WBK_Grunt_4";};

#define MY_G_B_ARMY_WDL_SENTRY side=1; faction="my_b_army_wdl";        \
    class 189 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_WDL";};            \
    class 190 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_WDL";};
#define MY_G_B_ARMY_WDL_FIRETEAM side=1; faction="my_b_army_wdl";      \
    class 191 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_WDL";};                  \
    class 192 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_WDL";};              \
    class 193 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_WDL";};       \
    class 194 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_WDL";};
#define MY_G_B_ARMY_WDL_SQUAD side=1; faction="my_b_army_wdl";         \
    class 195 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_WDL";};                 \
    class 196 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_WDL";};                     \
    class 197 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_WDL";};                  \
    class 198 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_WDL";};              \
    class 199 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_WDL";};       \
    class 200 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_WDL";};               \
    class 201 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_WDL";};                  \
    class 202 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_WDL";};              \
    class 203 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_WDL";};       \
    class 204 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_WDL";};               \
    class 205 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_WDL";};                  \
    class 206 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_WDL";};              \
    class 207 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_WDL";};       \
    class 208 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_WDL";};
#define MY_G_B_ARMY_WDL_WEAPONS_SQUAD side=1; faction="my_b_army_wdl"; \
    class 209 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_WDL";};                 \
    class 210 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_WDL";};                     \
    class 211 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_WDL";};                  \
    class 212 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_WDL";};             \
    class 213 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_WDL";};             \
    class 214 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_WDL";};             \
    class 215 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_WDL";};                  \
    class 216 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_WDL";};             \
    class 217 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_WDL";};             \
    class 218 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_WDL";};             \
    class 219 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_WDL";};                  \
    class 220 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Marksman_WDL";};                  \
    class 221 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Demolitions_WDL";};               \
    class 222 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Grenadier_WDL";};
#define MY_G_B_ARMY_WDL_SNIPER_TEAM side=1; faction="my_b_army_wdl";   \
    class 223 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Sniper_WDL";};                    \
    class 224 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_WDL";};
#define MY_G_B_ARMY_WDL_COMMAND_TEAM side=1; faction="my_b_army_wdl";  \
    class 225 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Officer_WDL";};                   \
    class 226 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_WDL";};           \
    class 227 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Radioman_WDL";};                  \
    class 228 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_WDL";};
#define MY_G_B_ARMY_WDL_HOG_MG side=1; faction="my_b_army_wdl";        \
    class 229 {MY_G_B_3 vehicle="OPTRE_M12_LRV";};
#define MY_G_B_ARMY_WDL_HOG_ROCKET side=1; faction="my_b_army_wdl";    \
    class 230 {MY_G_B_3 vehicle="OPTRE_M12A1_LRV";};
#define MY_G_B_ARMY_WDL_HOG_GAUSS side=1; faction="my_b_army_wdl";     \
    class 231 {MY_G_B_3 vehicle="OPTRE_M12G1_LRV";};
#define MY_G_B_ARMY_WDL_HOG_AA side=1; faction="my_b_army_wdl";        \
    class 232 {MY_G_B_3 vehicle="OPTRE_M12R_AA";};
#define MY_G_B_ARMY_WDL_WHEELED_IFV side=1; faction="my_b_army_wdl";   \
    class 233 {MY_G_B_3 vehicle="OPTRE_M412_IFV_UNSC";};
#define MY_G_B_ARMY_WDL_WHEELED_MGS side=1; faction="my_b_army_wdl";   \
    class 234 {MY_G_B_3 vehicle="OPTRE_M413_MGS_UNSC";};
#define MY_G_B_ARMY_WDL_TRACKED_IFV side=1; faction="my_b_army_wdl";   \
    class 235 {MY_G_B_3 vehicle="OPTRE_M494";};
#define MY_G_B_ARMY_WDL_SCORPION side=1; faction="my_b_army_wdl";      \
    class 236 {MY_G_B_3 vehicle="OPTRE_M808B_UNSC";};

#define MY_G_B_ARMY_OLI_SENTRY side=1; faction="my_b_army_oli";        \
    class 237 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_OLI";};            \
    class 238 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_OLI";};
#define MY_G_B_ARMY_OLI_FIRETEAM side=1; faction="my_b_army_oli";      \
    class 239 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_OLI";};                  \
    class 240 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_OLI";};              \
    class 241 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_OLI";};       \
    class 242 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_OLI";};
#define MY_G_B_ARMY_OLI_SQUAD side=1; faction="my_b_army_oli";         \
    class 243 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_OLI";};                 \
    class 244 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_OLI";};                     \
    class 245 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_OLI";};                  \
    class 246 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_OLI";};              \
    class 247 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_OLI";};       \
    class 248 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_OLI";};               \
    class 249 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_OLI";};                  \
    class 250 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_OLI";};              \
    class 251 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_OLI";};       \
    class 252 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_OLI";};               \
    class 253 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_OLI";};                  \
    class 254 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_OLI";};              \
    class 255 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_OLI";};       \
    class 256 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_OLI";};
#define MY_G_B_ARMY_OLI_WEAPONS_SQUAD side=1; faction="my_b_army_oli"; \
    class 257 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_OLI";};                 \
    class 258 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_OLI";};                     \
    class 259 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_OLI";};                  \
    class 260 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_OLI";};             \
    class 261 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_OLI";};             \
    class 262 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_OLI";};             \
    class 263 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_OLI";};                  \
    class 264 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_OLI";};             \
    class 265 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_OLI";};             \
    class 266 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_OLI";};             \
    class 267 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_OLI";};                  \
    class 268 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Marksman_OLI";};                  \
    class 269 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Demolitions_OLI";};               \
    class 270 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Grenadier_OLI";};
#define MY_G_B_ARMY_OLI_SNIPER_TEAM side=1; faction="my_b_army_oli";   \
    class 271 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Sniper_OLI";};                    \
    class 272 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_OLI";};
#define MY_G_B_ARMY_OLI_COMMAND_TEAM side=1; faction="my_b_army_oli";  \
    class 273 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Officer_OLI";};                   \
    class 274 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_OLI";};           \
    class 275 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Radioman_OLI";};                  \
    class 276 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_OLI";};
#define MY_G_B_ARMY_OLI_HOG_MG side=1; faction="my_b_army_oli";        \
    class 277 {MY_G_B_3 vehicle="OPTRE_M12_LRV";};
#define MY_G_B_ARMY_OLI_HOG_ROCKET side=1; faction="my_b_army_oli";    \
    class 278 {MY_G_B_3 vehicle="OPTRE_M12A1_LRV";};
#define MY_G_B_ARMY_OLI_HOG_GAUSS side=1; faction="my_b_army_oli";     \
    class 279 {MY_G_B_3 vehicle="OPTRE_M12G1_LRV";};
#define MY_G_B_ARMY_OLI_HOG_AA side=1; faction="my_b_army_oli";        \
    class 280 {MY_G_B_3 vehicle="OPTRE_M12R_AA";};
#define MY_G_B_ARMY_OLI_WHEELED_IFV side=1; faction="my_b_army_oli";   \
    class 281 {MY_G_B_3 vehicle="OPTRE_M412_IFV_UNSC";};
#define MY_G_B_ARMY_OLI_WHEELED_MGS side=1; faction="my_b_army_oli";   \
    class 282 {MY_G_B_3 vehicle="OPTRE_M413_MGS_UNSC";};
#define MY_G_B_ARMY_OLI_TRACKED_IFV side=1; faction="my_b_army_oli";   \
    class 283 {MY_G_B_3 vehicle="OPTRE_M494";};
#define MY_G_B_ARMY_OLI_SCORPION side=1; faction="my_b_army_oli";      \
    class 284 {MY_G_B_3 vehicle="OPTRE_M808B_UNSC";};

#define MY_G_B_ARMY_DES_SENTRY side=1; faction="my_b_army_des";        \
    class 285 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_DES";};            \
    class 286 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_DES";};
#define MY_G_B_ARMY_DES_FIRETEAM side=1; faction="my_b_army_des";      \
    class 287 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_DES";};                  \
    class 288 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_DES";};              \
    class 289 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_DES";};       \
    class 290 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_DES";};
#define MY_G_B_ARMY_DES_SQUAD side=1; faction="my_b_army_des";         \
    class 291 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_DES";};                 \
    class 292 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_DES";};                     \
    class 293 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_DES";};                  \
    class 294 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_DES";};              \
    class 295 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_DES";};       \
    class 296 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_DES";};               \
    class 297 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_DES";};                  \
    class 298 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_DES";};              \
    class 299 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_DES";};       \
    class 300 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_DES";};               \
    class 301 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_DES";};                  \
    class 302 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_DES";};              \
    class 303 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_DES";};       \
    class 304 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_DES";};
#define MY_G_B_ARMY_DES_WEAPONS_SQUAD side=1; faction="my_b_army_des"; \
    class 305 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_DES";};                 \
    class 306 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_DES";};                     \
    class 307 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_DES";};                  \
    class 308 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_DES";};             \
    class 309 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_DES";};             \
    class 310 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_DES";};             \
    class 311 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_DES";};                  \
    class 312 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_DES";};             \
    class 313 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_DES";};             \
    class 314 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_DES";};             \
    class 315 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_DES";};                  \
    class 316 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Marksman_DES";};                  \
    class 317 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Demolitions_DES";};               \
    class 318 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Grenadier_DES";};
#define MY_G_B_ARMY_DES_SNIPER_TEAM side=1; faction="my_b_army_des";   \
    class 319 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Sniper_DES";};                    \
    class 320 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_DES";};
#define MY_G_B_ARMY_DES_COMMAND_TEAM side=1; faction="my_b_army_des";  \
    class 321 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Officer_DES";};                   \
    class 322 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_DES";};           \
    class 323 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Radioman_DES";};                  \
    class 324 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_DES";};
#define MY_G_B_ARMY_DES_HOG_MG side=1; faction="my_b_army_des";        \
    class 325 {MY_G_B_3 vehicle="OPTRE_M12_LRV";};
#define MY_G_B_ARMY_DES_HOG_ROCKET side=1; faction="my_b_army_des";    \
    class 326 {MY_G_B_3 vehicle="OPTRE_M12A1_LRV";};
#define MY_G_B_ARMY_DES_HOG_GAUSS side=1; faction="my_b_army_des";     \
    class 327 {MY_G_B_3 vehicle="OPTRE_M12G1_LRV";};
#define MY_G_B_ARMY_DES_HOG_AA side=1; faction="my_b_army_des";        \
    class 328 {MY_G_B_3 vehicle="OPTRE_M12R_AA";};
#define MY_G_B_ARMY_DES_WHEELED_IFV side=1; faction="my_b_army_des";   \
    class 329 {MY_G_B_3 vehicle="OPTRE_M412_IFV_UNSC";};
#define MY_G_B_ARMY_DES_WHEELED_MGS side=1; faction="my_b_army_des";   \
    class 330 {MY_G_B_3 vehicle="OPTRE_M413_MGS_UNSC";};
#define MY_G_B_ARMY_DES_TRACKED_IFV side=1; faction="my_b_army_des";   \
    class 331 {MY_G_B_3 vehicle="OPTRE_M494";};
#define MY_G_B_ARMY_DES_SCORPION side=1; faction="my_b_army_des";      \
    class 332 {MY_G_B_3 vehicle="OPTRE_M808B_UNSC";};

#define MY_G_B_ARMY_URB_SENTRY side=1; faction="my_b_army_urb";        \
    class 333 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_URB";};            \
    class 334 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_URB";};
#define MY_G_B_ARMY_URB_FIRETEAM side=1; faction="my_b_army_urb";      \
    class 335 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_URB";};                  \
    class 336 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_URB";};              \
    class 337 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_URB";};       \
    class 338 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_URB";};
#define MY_G_B_ARMY_URB_SQUAD side=1; faction="my_b_army_urb";         \
    class 339 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_URB";};                 \
    class 340 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_URB";};                     \
    class 341 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_URB";};                  \
    class 342 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_URB";};              \
    class 343 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_URB";};       \
    class 344 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_URB";};               \
    class 345 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_URB";};                  \
    class 346 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_URB";};              \
    class 347 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_URB";};       \
    class 348 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_URB";};               \
    class 349 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_URB";};                  \
    class 350 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_URB";};              \
    class 351 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_URB";};       \
    class 352 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_URB";};
#define MY_G_B_ARMY_URB_WEAPONS_SQUAD side=1; faction="my_b_army_urb"; \
    class 353 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_URB";};                 \
    class 354 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_URB";};                     \
    class 355 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_URB";};                  \
    class 356 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_URB";};             \
    class 357 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_URB";};             \
    class 358 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_URB";};             \
    class 359 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_URB";};                  \
    class 360 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_URB";};             \
    class 361 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_URB";};             \
    class 362 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_URB";};             \
    class 363 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_URB";};                  \
    class 364 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Marksman_URB";};                  \
    class 365 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Demolitions_URB";};               \
    class 366 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Grenadier_URB";};
#define MY_G_B_ARMY_URB_SNIPER_TEAM side=1; faction="my_b_army_urb";   \
    class 367 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Sniper_URB";};                    \
    class 368 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_URB";};
#define MY_G_B_ARMY_URB_COMMAND_TEAM side=1; faction="my_b_army_urb";  \
    class 369 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Officer_URB";};                   \
    class 370 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_URB";};           \
    class 371 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Radioman_URB";};                  \
    class 372 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_URB";};
#define MY_G_B_ARMY_URB_HOG_MG side=1; faction="my_b_army_urb";        \
    class 373 {MY_G_B_3 vehicle="OPTRE_M12_LRV";};
#define MY_G_B_ARMY_URB_HOG_ROCKET side=1; faction="my_b_army_urb";    \
    class 374 {MY_G_B_3 vehicle="OPTRE_M12A1_LRV";};
#define MY_G_B_ARMY_URB_HOG_GAUSS side=1; faction="my_b_army_urb";     \
    class 375 {MY_G_B_3 vehicle="OPTRE_M12G1_LRV";};
#define MY_G_B_ARMY_URB_HOG_AA side=1; faction="my_b_army_urb";        \
    class 376 {MY_G_B_3 vehicle="OPTRE_M12R_AA";};
#define MY_G_B_ARMY_URB_WHEELED_IFV side=1; faction="my_b_army_urb";   \
    class 377 {MY_G_B_3 vehicle="OPTRE_M412_IFV_UNSC";};
#define MY_G_B_ARMY_URB_WHEELED_MGS side=1; faction="my_b_army_urb";   \
    class 378 {MY_G_B_3 vehicle="OPTRE_M413_MGS_UNSC";};
#define MY_G_B_ARMY_URB_TRACKED_IFV side=1; faction="my_b_army_urb";   \
    class 379 {MY_G_B_3 vehicle="OPTRE_M494";};
#define MY_G_B_ARMY_URB_SCORPION side=1; faction="my_b_army_urb";      \
    class 380 {MY_G_B_3 vehicle="OPTRE_M808B_UNSC";};

#define MY_G_B_ARMY_TRO_SENTRY side=1; faction="my_b_army_tro";        \
    class 381 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_TRO";};            \
    class 382 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_TRO";};
#define MY_G_B_ARMY_TRO_FIRETEAM side=1; faction="my_b_army_tro";      \
    class 383 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_TRO";};                  \
    class 384 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_TRO";};              \
    class 385 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_TRO";};       \
    class 386 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_TRO";};
#define MY_G_B_ARMY_TRO_SQUAD side=1; faction="my_b_army_tro";         \
    class 387 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_TRO";};                 \
    class 388 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_TRO";};                     \
    class 389 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_TRO";};                  \
    class 390 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_TRO";};              \
    class 391 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_TRO";};       \
    class 392 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_TRO";};               \
    class 393 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_TRO";};                  \
    class 394 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_TRO";};              \
    class 395 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_TRO";};       \
    class 396 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_TRO";};               \
    class 397 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_TRO";};                  \
    class 398 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_TRO";};              \
    class 399 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_TRO";};       \
    class 400 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_TRO";};
#define MY_G_B_ARMY_TRO_WEAPONS_SQUAD side=1; faction="my_b_army_tro"; \
    class 401 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_TRO";};                 \
    class 402 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_TRO";};                     \
    class 403 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_TRO";};                  \
    class 404 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_TRO";};             \
    class 405 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_TRO";};             \
    class 406 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_TRO";};             \
    class 407 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_TRO";};                  \
    class 408 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_TRO";};             \
    class 409 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_TRO";};             \
    class 410 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_TRO";};             \
    class 411 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_TRO";};                  \
    class 412 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Marksman_TRO";};                  \
    class 413 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Demolitions_TRO";};               \
    class 414 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Grenadier_TRO";};
#define MY_G_B_ARMY_TRO_SNIPER_TEAM side=1; faction="my_b_army_tro";   \
    class 415 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Sniper_TRO";};                    \
    class 416 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_TRO";};
#define MY_G_B_ARMY_TRO_COMMAND_TEAM side=1; faction="my_b_army_tro";  \
    class 417 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Officer_TRO";};                   \
    class 418 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_TRO";};           \
    class 419 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Radioman_TRO";};                  \
    class 420 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_TRO";};
#define MY_G_B_ARMY_TRO_HOG_MG side=1; faction="my_b_army_tro";        \
    class 421 {MY_G_B_3 vehicle="OPTRE_M12_LRV";};
#define MY_G_B_ARMY_TRO_HOG_ROCKET side=1; faction="my_b_army_tro";    \
    class 422 {MY_G_B_3 vehicle="OPTRE_M12A1_LRV";};
#define MY_G_B_ARMY_TRO_HOG_GAUSS side=1; faction="my_b_army_tro";     \
    class 423 {MY_G_B_3 vehicle="OPTRE_M12G1_LRV";};
#define MY_G_B_ARMY_TRO_HOG_AA side=1; faction="my_b_army_tro";        \
    class 424 {MY_G_B_3 vehicle="OPTRE_M12R_AA";};
#define MY_G_B_ARMY_TRO_WHEELED_IFV side=1; faction="my_b_army_tro";   \
    class 425 {MY_G_B_3 vehicle="OPTRE_M412_IFV_UNSC";};
#define MY_G_B_ARMY_TRO_WHEELED_MGS side=1; faction="my_b_army_tro";   \
    class 426 {MY_G_B_3 vehicle="OPTRE_M413_MGS_UNSC";};
#define MY_G_B_ARMY_TRO_TRACKED_IFV side=1; faction="my_b_army_tro";   \
    class 427 {MY_G_B_3 vehicle="OPTRE_M494";};
#define MY_G_B_ARMY_TRO_SCORPION side=1; faction="my_b_army_tro";      \
    class 428 {MY_G_B_3 vehicle="OPTRE_M808B_UNSC";};

#define MY_G_B_ARMY_SNO_SENTRY side=1; faction="my_b_army_sno";        \
    class 429 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_SNO";};            \
    class 430 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_Light_SNO";};
#define MY_G_B_ARMY_SNO_FIRETEAM side=1; faction="my_b_army_sno";      \
    class 431 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_SNO";};                  \
    class 432 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_SNO";};              \
    class 433 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_SNO";};       \
    class 434 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_SNO";};
#define MY_G_B_ARMY_SNO_SQUAD side=1; faction="my_b_army_sno";         \
    class 435 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_SNO";};                 \
    class 436 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_SNO";};                     \
    class 437 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_SNO";};                  \
    class 438 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_SNO";};              \
    class 439 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_SNO";};       \
    class 440 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_SNO";};               \
    class 441 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_SNO";};                  \
    class 442 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_SNO";};              \
    class 443 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_SNO";};       \
    class 444 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_SNO";};               \
    class 445 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_SNO";};                  \
    class 446 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Autorifleman_SNO";};              \
    class 447 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Assist_Autorifleman_SNO";};       \
    class 448 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Rifleman_AT_SNO";};
#define MY_G_B_ARMY_SNO_WEAPONS_SQUAD side=1; faction="my_b_army_sno"; \
    class 449 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_SquadLead_SNO";};                 \
    class 450 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_SNO";};                     \
    class 451 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_SNO";};                  \
    class 452 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_SNO";};             \
    class 453 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_SNO";};             \
    class 454 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AT_Specialist_SNO";};             \
    class 455 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_SNO";};                  \
    class 456 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_SNO";};             \
    class 457 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_SNO";};             \
    class 458 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_AA_Specialist_SNO";};             \
    class 459 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_TeamLead_SNO";};                  \
    class 460 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Marksman_SNO";};                  \
    class 461 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Demolitions_SNO";};               \
    class 462 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Grenadier_SNO";};
#define MY_G_B_ARMY_SNO_SNIPER_TEAM side=1; faction="my_b_army_sno";   \
    class 463 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Sniper_SNO";};                    \
    class 464 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_SNO";};
#define MY_G_B_ARMY_SNO_COMMAND_TEAM side=1; faction="my_b_army_sno";  \
    class 465 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Officer_SNO";};                   \
    class 466 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_ForwardObserver_SNO";};           \
    class 467 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Radioman_SNO";};                  \
    class 468 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Army_Soldier_Medic_SNO";};
#define MY_G_B_ARMY_SNO_HOG_MG side=1; faction="my_b_army_sno";        \
    class 469 {MY_G_B_3 vehicle="OPTRE_M12_LRV";};
#define MY_G_B_ARMY_SNO_HOG_ROCKET side=1; faction="my_b_army_sno";    \
    class 470 {MY_G_B_3 vehicle="OPTRE_M12A1_LRV";};
#define MY_G_B_ARMY_SNO_HOG_GAUSS side=1; faction="my_b_army_sno";     \
    class 471 {MY_G_B_3 vehicle="OPTRE_M12G1_LRV";};
#define MY_G_B_ARMY_SNO_HOG_AA side=1; faction="my_b_army_sno";        \
    class 472 {MY_G_B_3 vehicle="OPTRE_M12R_AA";};
#define MY_G_B_ARMY_SNO_WHEELED_IFV side=1; faction="my_b_army_sno";   \
    class 473 {MY_G_B_3 vehicle="OPTRE_M412_IFV_UNSC";};
#define MY_G_B_ARMY_SNO_WHEELED_MGS side=1; faction="my_b_army_sno";   \
    class 474 {MY_G_B_3 vehicle="OPTRE_M413_MGS_UNSC";};
#define MY_G_B_ARMY_SNO_TRACKED_IFV side=1; faction="my_b_army_sno";   \
    class 475 {MY_G_B_3 vehicle="OPTRE_M494";};
#define MY_G_B_ARMY_SNO_SCORPION side=1; faction="my_b_army_sno";      \
    class 476 {MY_G_B_3 vehicle="OPTRE_M808B_UNSC";};

#define MY_G_B_MARINE_SENTRY side=1; faction="my_b_marine";            \
    class 477 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Rifleman_Light";};              \
    class 478 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Rifleman_Light";};
#define MY_G_B_MARINE_FIRETEAM side=1; faction="my_b_marine";          \
    class 479 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_TeamLead";};                    \
    class 480 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Autorifleman";};                \
    class 481 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Assist_Autorifleman";};         \
    class 482 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Rifleman_AT";};
#define MY_G_B_MARINE_SQUAD side=1; faction="my_b_marine";             \
    class 483 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_SquadLead";};                   \
    class 484 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Corpsman";};                    \
    class 485 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_TeamLead";};                    \
    class 486 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Autorifleman";};                \
    class 487 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Assist_Autorifleman";};         \
    class 488 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Rifleman_AT";};                 \
    class 489 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_TeamLead";};                    \
    class 490 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Autorifleman";};                \
    class 491 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Assist_Autorifleman";};         \
    class 492 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Rifleman_AT";};                 \
    class 493 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_TeamLead";};                    \
    class 494 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Autorifleman";};                \
    class 495 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Assist_Autorifleman";};         \
    class 496 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Rifleman_AT";};
#define MY_G_B_MARINE_WEAPONS_SQUAD side=1; faction="my_b_marine";     \
    class 497 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_SquadLead";};                   \
    class 498 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Corpsman";};                    \
    class 499 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_TeamLead";};                    \
    class 500 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_AT_Specialist";};               \
    class 501 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_AT_Specialist";};               \
    class 502 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_AT_Specialist";};               \
    class 503 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_TeamLead";};                    \
    class 504 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_AA_Specialist";};               \
    class 505 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_AA_Specialist";};               \
    class 506 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_AA_Specialist";};               \
    class 507 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_TeamLead";};                    \
    class 508 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Marksman";};                    \
    class 509 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Demolitions";};                 \
    class 510 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Grenadier";};
#define MY_G_B_MARINE_SNIPER_TEAM side=1; faction="my_b_marine";       \
    class 511 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Sniper";};                      \
    class 512 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_ForwardObserver";};
#define MY_G_B_MARINE_COMMAND_TEAM side=1; faction="my_b_marine";      \
    class 513 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Officer";};                     \
    class 514 {MY_G_B_2                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_ForwardObserver";};             \
    class 515 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Radioman";};                    \
    class 516 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_Marine_Soldier_Corpsman";};
#define MY_G_B_MARINE_HOG_MG side=1; faction="my_b_marine";            \
    class 517 {MY_G_B_3 vehicle="OPTRE_M12_LRV";};
#define MY_G_B_MARINE_HOG_ROCKET side=1; faction="my_b_marine";        \
    class 518 {MY_G_B_3 vehicle="OPTRE_M12A1_LRV";};
#define MY_G_B_MARINE_HOG_GAUSS side=1; faction="my_b_marine";         \
    class 519 {MY_G_B_3 vehicle="OPTRE_M12G1_LRV";};
#define MY_G_B_MARINE_HOG_AA side=1; faction="my_b_marine";            \
    class 520 {MY_G_B_3 vehicle="OPTRE_M12R_AA";};
#define MY_G_B_MARINE_WHEELED_IFV side=1; faction="my_b_marine";       \
    class 521 {MY_G_B_3 vehicle="OPTRE_M412_IFV_UNSC";};
#define MY_G_B_MARINE_WHEELED_MGS side=1; faction="my_b_marine";       \
    class 522 {MY_G_B_3 vehicle="OPTRE_M413_MGS_UNSC";};
#define MY_G_B_MARINE_TRACKED_IFV side=1; faction="my_b_marine";       \
    class 523 {MY_G_B_3 vehicle="OPTRE_M494";};
#define MY_G_B_MARINE_SCORPION side=1; faction="my_b_marine";          \
    class 524 {MY_G_B_3 vehicle="OPTRE_M808B_UNSC";};

#define MY_G_B_ODST_TEAM side=1; faction="my_b_odst";                  \
    class 525 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_TeamLeader";};                    \
    class 526 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Paramedic";};                     \
    class 527 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Automatic_Rifleman";};            \
    class 528 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Rifleman_AT";};                   \
    class 529 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Marksman";};
#define MY_G_B_ODST_SCOUT_TEAM side=1; faction="my_b_odst";            \
    class 530 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_TeamLeader";};                    \
    class 531 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Paramedic";};                     \
    class 532 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Scout";};                         \
    class 533 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Scout_AT";};                      \
    class 534 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Scout_Sniper";};
#define MY_G_B_ODST_DEMO_TEAM side=1; faction="my_b_odst";             \
    class 535 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_TeamLeader";};                    \
    class 536 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Paramedic";};                     \
    class 537 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_DemolitionsExpert";};             \
    class 538 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Scout_AT";};                      \
    class 539 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_DemolitionsExpert";};
#define MY_G_B_ODST_SNIPER_TEAM side=1; faction="my_b_odst";           \
    class 540 {MY_G_B_3                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_TeamLeader";};                    \
    class 541 {MY_G_B_1                                                \
    vehicle="OPTRE_UNSC_ODST_Soldier_Scout_Sniper";};

#define MY_G_I_FLOOD_COMBAT side=2; faction="my_i_flood";      \
    class 542 {MY_G_I_1 vehicle="dev_flood_combat_i";};        \
    class 543 {MY_G_I_1 vehicle="dev_flood_combat_at_i";};     \
    class 544 {MY_G_I_1 vehicle="dev_flood_combat_br55_i";};   \
    class 545 {MY_G_I_1 vehicle="dev_flood_combat_br55_i";};   \
    class 546 {MY_G_I_1 vehicle="dev_flood_sangheili_i";};     \
    class 547 {MY_G_I_1 vehicle="dev_flood_sangheili_at_i";};  \
    class 548 {MY_G_I_1 vehicle="dev_flood_sangheili_t25_i";}; \
    class 549 {MY_G_I_1 vehicle="dev_flood_sangheili_t25_i";}; \
    class 550 {MY_G_I_1 vehicle="dev_flood_combat_i";};        \
    class 551 {MY_G_I_1 vehicle="dev_flood_combat_at_i";};     \
    class 552 {MY_G_I_1 vehicle="dev_flood_combat_br55_i";};   \
    class 553 {MY_G_I_1 vehicle="dev_flood_combat_br55_i";};   \
    class 554 {MY_G_I_1 vehicle="dev_flood_sangheili_i";};     \
    class 555 {MY_G_I_1 vehicle="dev_flood_sangheili_at_i";};  \
    class 556 {MY_G_I_1 vehicle="dev_flood_sangheili_t25_i";}; \
    class 557 {MY_G_I_1 vehicle="dev_flood_sangheili_t25_i";};

#define MY_G_I_FLOOD_HUMAN side=2; faction="my_i_flood";       \
    class 558 {MY_G_I_1 vehicle="dev_flood_combat_i";};        \
    class 559 {MY_G_I_1 vehicle="dev_flood_combat_i";};        \
    class 560 {MY_G_I_1 vehicle="dev_flood_combat_at_i";};     \
    class 561 {MY_G_I_1 vehicle="dev_flood_combat_br55_i";};   \
    class 562 {MY_G_I_1 vehicle="dev_flood_combat_br55_i";};   \
    class 563 {MY_G_I_1 vehicle="dev_flood_carrier_i";};       \
    class 564 {MY_G_I_1 vehicle="dev_flood_carrier_i";};       \
    class 565 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 566 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 567 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 568 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 569 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 570 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 571 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 572 {MY_G_I_1 vehicle="dev_flood_infection_i";};

#define MY_G_I_FLOOD_ELITE side=2; faction="my_i_flood";       \
    class 573 {MY_G_I_1 vehicle="dev_flood_sangheili_i";};     \
    class 574 {MY_G_I_1 vehicle="dev_flood_sangheili_i";};     \
    class 575 {MY_G_I_1 vehicle="dev_flood_sangheili_at_i";};  \
    class 576 {MY_G_I_1 vehicle="dev_flood_sangheili_t25_i";}; \
    class 577 {MY_G_I_1 vehicle="dev_flood_sangheili_t25_i";}; \
    class 578 {MY_G_I_1 vehicle="dev_flood_carrier_i";};       \
    class 579 {MY_G_I_1 vehicle="dev_flood_carrier_i";};       \
    class 580 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 581 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 582 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 583 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 584 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 585 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 586 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 587 {MY_G_I_1 vehicle="dev_flood_infection_i";};

#define MY_G_I_FLOOD_INFECTION side=2; faction="my_i_flood";   \
    class 588 {MY_G_I_1 vehicle="dev_flood_carrier_i";};       \
    class 589 {MY_G_I_1 vehicle="dev_flood_carrier_i";};       \
    class 590 {MY_G_I_1 vehicle="dev_flood_carrier_i";};       \
    class 591 {MY_G_I_1 vehicle="dev_flood_carrier_i";};       \
    class 592 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 593 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 594 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 595 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 596 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 597 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 598 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 599 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 600 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 601 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 602 {MY_G_I_1 vehicle="dev_flood_infection_i";};     \
    class 603 {MY_G_I_1 vehicle="dev_flood_infection_i";};

class CfgFactionClasses {
    class my_o_optre {priority=2; side=0;};
    class my_o_wbk {priority=2; side=0;};
    class my_b_army_wdl {priority=2; side=1;};
    class my_b_army_oli {priority=2; side=1;};
    class my_b_army_des {priority=2; side=1;};
    class my_b_army_urb {priority=2; side=1;};
    class my_b_army_tro {priority=2; side=1;};
    class my_b_army_sno {priority=2; side=1;};
    class my_b_marine {priority=2; side=1;};
    class my_b_odst {priority=2; side=1;};
    class my_i_flood {priority=2; side=2;};
};

class CfgGroups {
    class East {
        class my_o_optre {
            class Infantry {
                class my_g_0 {MY_G_O_OPTRE_JACKAL_SECTION};
                class my_g_1 {MY_G_O_OPTRE_JACKAL_PATROL};
                class my_g_2 {MY_G_O_OPTRE_JACKAL_SNIPER_TEAM};
                class my_g_3 {MY_G_O_OPTRE_JACKAL_RECON_TEAM};
                class my_g_4 {MY_G_O_OPTRE_ELITE_SECTION};
                class my_g_5 {MY_G_O_OPTRE_ELITE_AA_SECTION};
                class my_g_6 {MY_G_O_OPTRE_ELITE_AT_SECTION};
                class my_g_7 {MY_G_O_OPTRE_ELITE_PATROL};
                class my_g_8 {MY_G_O_OPTRE_ELITE_SNIPER_TEAM};
                class my_g_9 {MY_G_O_OPTRE_ELITE_RECON_TEAM};
                class my_g_10 {MY_G_O_OPTRE_ELITE_COMMAND_TEAM};
                class my_g_11 {MY_G_O_OPTRE_ELITE_COMMAND_SQUAD};
                class my_g_12 {MY_G_O_OPTRE_MIXED_LEVY};
                class my_g_13 {MY_G_O_OPTRE_MIXED_SECTION};
                class my_g_14 {MY_G_O_OPTRE_MIXED_RECON_TEAM};
                class my_g_15 {MY_G_O_OPTRE_MIXED_COMMAND_TEAM};
                class my_g_16 {MY_G_O_OPTRE_MIXED_FILE};
            };
            class Motorized {
                class my_g_17 {MY_G_O_OPTRE_SPECTRE_MIXED};
                class my_g_18 {MY_G_O_OPTRE_SPECTRE_ELITE};
            };
            class Mechanized {
                class my_g_19 {MY_G_O_OPTRE_GHOST_PAIR};
                class my_g_20 {MY_G_O_OPTRE_GHOST_HEAVY};
                class my_g_21 {MY_G_O_OPTRE_SPECTRE_ARMED};
            };
            class Armored {
                class my_g_22 {MY_G_O_OPTRE_WRAITH};
            };
            class SpecOps {
                class my_g_23 {MY_G_O_OPTRE_MIXED_SPEC_OPS_FILE};
            };
        };
        class my_o_wbk {
            class Infantry {
                class my_g_24 {MY_G_O_WBK_GRUNT_SENTRY_MINOR};
                class my_g_25 {MY_G_O_WBK_GRUNT_SENTRY_ULTRA};
                class my_g_26 {MY_G_O_WBK_GRUNT_FIRETEAM_LIGHT};
                class my_g_27 {MY_G_O_WBK_GRUNT_FIRETEAM_MEDIUM};
                class my_g_28 {MY_G_O_WBK_GRUNT_FIRETEAM_HEAVY};
                class my_g_29 {MY_G_O_WBK_ELITE_SENTRY_MINOR};
                class my_g_30 {MY_G_O_WBK_ELITE_SENTRY_HONOR};
                class my_g_31 {MY_G_O_WBK_ELITE_SENTRY_ULTRA};
                class my_g_32 {MY_G_O_WBK_ELITE_FIRETEAM_MAJOR};
                class my_g_33 {MY_G_O_WBK_ELITE_FIRETEAM_OFFICER};
                class my_g_34 {MY_G_O_WBK_ELITE_FIRETEAM_ULTRA};
                class my_g_35 {MY_G_O_WBK_ELITE_FIRETEAM_ZEALOT};
                class my_g_36 {MY_G_O_WBK_ELITE_FIRETEAM_MARSHALL};
                class my_g_37 {MY_G_O_WBK_MIXED_FIRETEAM_MINOR};
                class my_g_38 {MY_G_O_WBK_MIXED_FIRETEAM_OFFICER};
                class my_g_39 {MY_G_O_WBK_MIXED_FIRETEAM_ULTRA};
            };
            class Motorized {
                class my_g_40 {MY_G_O_WBK_HUNTER_SENTRY_BLUE};
                class my_g_41 {MY_G_O_WBK_MIXED_HUNTER_FIRETEAM_BLUE};
            };
            class Mechanized {
                class my_g_42 {MY_G_O_WBK_HUNTER_SENTRY_GOLD};
                class my_g_43 {MY_G_O_WBK_HUNTER_SENTRY_RED};
            };
            class Armored {
                class my_g_44 {MY_G_O_WBK_MIXED_HUNTER_FIRETEAM_GOLD};
                class my_g_45 {MY_G_O_WBK_MIXED_HUNTER_FIRETEAM_RED};
                class my_g_46 {MY_G_O_WBK_MIXED_HUNTER_FIRETEAM_SPEC};
            };
            class SpecOps {
                class my_g_47 {MY_G_O_WBK_ELITE_SENTRY_SPEC};
                class my_g_48 {MY_G_O_WBK_ELITE_FIRETEAM_SPEC};
            };
        };
    };
    class West {
        class my_b_army_wdl {
            class Infantry {
                class my_g_49 {MY_G_B_ARMY_WDL_SENTRY};
                class my_g_50 {MY_G_B_ARMY_WDL_FIRETEAM};
                class my_g_51 {MY_G_B_ARMY_WDL_SQUAD};
                class my_g_52 {MY_G_B_ARMY_WDL_WEAPONS_SQUAD};
            };
            class Motorized {
                class my_g_53 {MY_G_B_ARMY_WDL_HOG_MG};
                class my_g_54 {MY_G_B_ARMY_WDL_HOG_ROCKET};
                class my_g_55 {MY_G_B_ARMY_WDL_HOG_GAUSS};
                class my_g_56 {MY_G_B_ARMY_WDL_HOG_AA};
            };
            class Mechanized {
                class my_g_57 {MY_G_B_ARMY_WDL_WHEELED_IFV};
                class my_g_58 {MY_G_B_ARMY_WDL_WHEELED_MGS};
                class my_g_59 {MY_G_B_ARMY_WDL_TRACKED_IFV};
            };
            class Armored {
                class my_g_60 {MY_G_B_ARMY_WDL_SCORPION};
            };
            class SpecOps {
                class my_g_61 {MY_G_B_ARMY_WDL_SNIPER_TEAM};
                class my_g_62 {MY_G_B_ARMY_WDL_COMMAND_TEAM};
            };
        };
        class my_b_army_oli {
            class Infantry {
                class my_g_63 {MY_G_B_ARMY_OLI_SENTRY};
                class my_g_64 {MY_G_B_ARMY_OLI_FIRETEAM};
                class my_g_65 {MY_G_B_ARMY_OLI_SQUAD};
                class my_g_66 {MY_G_B_ARMY_OLI_WEAPONS_SQUAD};
            };
            class Motorized {
                class my_g_67 {MY_G_B_ARMY_OLI_HOG_MG};
                class my_g_68 {MY_G_B_ARMY_OLI_HOG_ROCKET};
                class my_g_69 {MY_G_B_ARMY_OLI_HOG_GAUSS};
                class my_g_70 {MY_G_B_ARMY_OLI_HOG_AA};
            };
            class Mechanized {
                class my_g_71 {MY_G_B_ARMY_OLI_WHEELED_IFV};
                class my_g_72 {MY_G_B_ARMY_OLI_WHEELED_MGS};
                class my_g_73 {MY_G_B_ARMY_OLI_TRACKED_IFV};
            };
            class Armored {
                class my_g_74 {MY_G_B_ARMY_OLI_SCORPION};
            };
            class SpecOps {
                class my_g_75 {MY_G_B_ARMY_OLI_SNIPER_TEAM};
                class my_g_76 {MY_G_B_ARMY_OLI_COMMAND_TEAM};
            };
        };
        class my_b_army_des {
            class Infantry {
                class my_g_77 {MY_G_B_ARMY_DES_SENTRY};
                class my_g_78 {MY_G_B_ARMY_DES_FIRETEAM};
                class my_g_79 {MY_G_B_ARMY_DES_SQUAD};
                class my_g_80 {MY_G_B_ARMY_DES_WEAPONS_SQUAD};
            };
            class Motorized {
                class my_g_81 {MY_G_B_ARMY_DES_HOG_MG};
                class my_g_82 {MY_G_B_ARMY_DES_HOG_ROCKET};
                class my_g_83 {MY_G_B_ARMY_DES_HOG_GAUSS};
                class my_g_84 {MY_G_B_ARMY_DES_HOG_AA};
            };
            class Mechanized {
                class my_g_85 {MY_G_B_ARMY_DES_WHEELED_IFV};
                class my_g_86 {MY_G_B_ARMY_DES_WHEELED_MGS};
                class my_g_87 {MY_G_B_ARMY_DES_TRACKED_IFV};
            };
            class Armored {
                class my_g_88 {MY_G_B_ARMY_DES_SCORPION};
            };
            class SpecOps {
                class my_g_89 {MY_G_B_ARMY_DES_SNIPER_TEAM};
                class my_g_90 {MY_G_B_ARMY_DES_COMMAND_TEAM};
            };
        };
        class my_b_army_urb {
            class Infantry {
                class my_g_91 {MY_G_B_ARMY_URB_SENTRY};
                class my_g_92 {MY_G_B_ARMY_URB_FIRETEAM};
                class my_g_93 {MY_G_B_ARMY_URB_SQUAD};
                class my_g_94 {MY_G_B_ARMY_URB_WEAPONS_SQUAD};
            };
            class Motorized {
                class my_g_95 {MY_G_B_ARMY_URB_HOG_MG};
                class my_g_96 {MY_G_B_ARMY_URB_HOG_ROCKET};
                class my_g_97 {MY_G_B_ARMY_URB_HOG_GAUSS};
                class my_g_98 {MY_G_B_ARMY_URB_HOG_AA};
            };
            class Mechanized {
                class my_g_99 {MY_G_B_ARMY_URB_WHEELED_IFV};
                class my_g_100 {MY_G_B_ARMY_URB_WHEELED_MGS};
                class my_g_101 {MY_G_B_ARMY_URB_TRACKED_IFV};
            };
            class Armored {
                class my_g_102 {MY_G_B_ARMY_URB_SCORPION};
            };
            class SpecOps {
                class my_g_103 {MY_G_B_ARMY_URB_SNIPER_TEAM};
                class my_g_104 {MY_G_B_ARMY_URB_COMMAND_TEAM};
            };
        };
        class my_b_army_tro {
            class Infantry {
                class my_g_105 {MY_G_B_ARMY_TRO_SENTRY};
                class my_g_106 {MY_G_B_ARMY_TRO_FIRETEAM};
                class my_g_107 {MY_G_B_ARMY_TRO_SQUAD};
                class my_g_108 {MY_G_B_ARMY_TRO_WEAPONS_SQUAD};
            };
            class Motorized {
                class my_g_109 {MY_G_B_ARMY_TRO_HOG_MG};
                class my_g_110 {MY_G_B_ARMY_TRO_HOG_ROCKET};
                class my_g_111 {MY_G_B_ARMY_TRO_HOG_GAUSS};
                class my_g_112 {MY_G_B_ARMY_TRO_HOG_AA};
            };
            class Mechanized {
                class my_g_113 {MY_G_B_ARMY_TRO_WHEELED_IFV};
                class my_g_114 {MY_G_B_ARMY_TRO_WHEELED_MGS};
                class my_g_115 {MY_G_B_ARMY_TRO_TRACKED_IFV};
            };
            class Armored {
                class my_g_116 {MY_G_B_ARMY_TRO_SCORPION};
            };
            class SpecOps {
                class my_g_117 {MY_G_B_ARMY_TRO_SNIPER_TEAM};
                class my_g_118 {MY_G_B_ARMY_TRO_COMMAND_TEAM};
            };
        };
        class my_b_army_sno {
            class Infantry {
                class my_g_119 {MY_G_B_ARMY_SNO_SENTRY};
                class my_g_120 {MY_G_B_ARMY_SNO_FIRETEAM};
                class my_g_121 {MY_G_B_ARMY_SNO_SQUAD};
                class my_g_122 {MY_G_B_ARMY_SNO_WEAPONS_SQUAD};
            };
            class Motorized {
                class my_g_123 {MY_G_B_ARMY_SNO_HOG_MG};
                class my_g_124 {MY_G_B_ARMY_SNO_HOG_ROCKET};
                class my_g_125 {MY_G_B_ARMY_SNO_HOG_GAUSS};
                class my_g_126 {MY_G_B_ARMY_SNO_HOG_AA};
            };
            class Mechanized {
                class my_g_127 {MY_G_B_ARMY_SNO_WHEELED_IFV};
                class my_g_128 {MY_G_B_ARMY_SNO_WHEELED_MGS};
                class my_g_129 {MY_G_B_ARMY_SNO_TRACKED_IFV};
            };
            class Armored {
                class my_g_130 {MY_G_B_ARMY_SNO_SCORPION};
            };
            class SpecOps {
                class my_g_131 {MY_G_B_ARMY_SNO_SNIPER_TEAM};
                class my_g_132 {MY_G_B_ARMY_SNO_COMMAND_TEAM};
            };
        };
        class my_b_marine {
            class Infantry {
                class my_g_133 {MY_G_B_MARINE_SENTRY};
                class my_g_134 {MY_G_B_MARINE_FIRETEAM};
                class my_g_135 {MY_G_B_MARINE_SQUAD};
                class my_g_136 {MY_G_B_MARINE_WEAPONS_SQUAD};
            };
            class Motorized {
                class my_g_137 {MY_G_B_MARINE_HOG_MG};
                class my_g_138 {MY_G_B_MARINE_HOG_ROCKET};
                class my_g_139 {MY_G_B_MARINE_HOG_GAUSS};
                class my_g_140 {MY_G_B_MARINE_HOG_AA};
            };
            class Mechanized {
                class my_g_141 {MY_G_B_MARINE_WHEELED_IFV};
                class my_g_142 {MY_G_B_MARINE_WHEELED_MGS};
                class my_g_143 {MY_G_B_MARINE_TRACKED_IFV};
            };
            class Armored {
                class my_g_144 {MY_G_B_MARINE_SCORPION};
            };
            class SpecOps {
                class my_g_145 {MY_G_B_MARINE_SNIPER_TEAM};
                class my_g_146 {MY_G_B_MARINE_COMMAND_TEAM};
            };
        };
        class my_b_odst {
            class Infantry {
                class my_g_147 {MY_G_B_ODST_TEAM};
                class my_g_148 {MY_G_B_ODST_SCOUT_TEAM};
                class my_g_149 {MY_G_B_ODST_DEMO_TEAM};
            };
            class Motorized {
            };
            class Mechanized {
            };
            class Armored {
            };
            class SpecOps {
                class my_g_150 {MY_G_B_ODST_SNIPER_TEAM};
            };
        };
    };
    class Indep {
        class my_i_flood {
            class Infantry {
                class my_g_151 {MY_G_I_FLOOD_COMBAT};
                class my_g_152 {MY_G_I_FLOOD_HUMAN};
                class my_g_153 {MY_G_I_FLOOD_ELITE};
            };
            class Motorized {
            };
            class Mechanized {
            };
            class Armored {
            };
            class SpecOps {
                class my_g_154 {MY_G_I_FLOOD_INFECTION};
            };
        };
    };
};
