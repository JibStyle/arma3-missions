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

#define MY_G_O_ARM side=0; faction="my_o";                                \
    class 0 {MY_G_O_4 vehicle="OPFa_mas_VehE_MBT_02_cannon_F";};          \
    class 1 {MY_G_O_3 vehicle="OPFa_mas_VehE_MBT_02_cannon_F";};          \
    class 2 {MY_G_O_3 vehicle="OPFa_mas_VehE_MBT_02_cannon_F";};
#define MY_G_O_APC side=0; faction="my_o";                                \
    class 3 {MY_G_O_1 vehicle="INDa_mas_VehE_APC_Opf_F";};                \
    class 4 {MY_G_O_3 vehicle="OPFa_mas_SoldierE_Sold_SL_F";};            \
    class 5 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_MG_F";};            \
    class 6 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_LAT_F";};           \
    class 7 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_Med_F";};           \
    class 8 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_M_F";};             \
    class 9 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_AT_F";};            \
    class 10 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_MG_F";};           \
    class 11 {MY_G_O_2 vehicle="OPFa_mas_SoldierE_Sold_TL_F";};
#define MY_G_O_IFV side=0; faction="my_o";                                \
    class 12 {MY_G_O_1 vehicle="OPFa_mas_VehE_APC_Tracked_02_cannon_F";}; \
    class 13 {MY_G_O_3 vehicle="OPFa_mas_SoldierE_Sold_SL_F";};           \
    class 14 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_MG_F";};           \
    class 15 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_LAT_F";};          \
    class 16 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_Med_F";};
#define MY_G_O_TRUCK side=0; faction="my_o";                              \
    class 17 {MY_G_O_1 vehicle="OPFa_mas_VehE_Truck_Opf_F";};             \
    class 18 {MY_G_O_3 vehicle="OPFa_mas_SoldierE_Sold_SL_F";};           \
    class 19 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_MG_F";};           \
    class 20 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_LAT_F";};          \
    class 21 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_Med_F";};          \
    class 22 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_M_F";};            \
    class 23 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_AT_F";};           \
    class 24 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_MG_F";};           \
    class 25 {MY_G_O_2 vehicle="OPFa_mas_SoldierE_Sold_TL_F";};
#define MY_G_O_CAR side=0; faction="my_o";                                \
    class 26 {MY_G_O_1 vehicle="OPFa_mas_VehE_Car_F";};                   \
    class 27 {MY_G_O_2 vehicle="OPFa_mas_SoldierE_Sold_TL_F";};           \
    class 28 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_MG_F";};           \
    class 29 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_LAT_F";};          \
    class 30 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_Med_F";};
#define MY_G_O_SQUAD side=0; faction="my_o";                              \
    class 31 {MY_G_O_3 vehicle="OPFa_mas_SoldierE_Sold_SL_F";};           \
    class 32 {MY_G_O_2 vehicle="OPFa_mas_SoldierE_Sold_TL_F";};           \
    class 33 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_MG_F";};           \
    class 34 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_LAT_F";};          \
    class 35 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_R_F";};            \
    class 36 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_M_F";};            \
    class 37 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_Med_F";};          \
    class 38 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_MG_F";};           \
    class 39 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_AT_F";};
#define MY_G_O_TEAM side=0; faction="my_o";                               \
    class 40 {MY_G_O_2 vehicle="OPFa_mas_SoldierE_Sold_TL_F";};           \
    class 41 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_LAT_F";};          \
    class 42 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_Med_F";};          \
    class 43 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_MG_F";};
#define MY_G_O_RECCE side=0; faction="my_o";                              \
    class 44 {MY_G_O_2 vehicle="OPFa_mas_SoldierE_Sold_Rec_F";};          \
    class 45 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_Rec_F";};          \
    class 46 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_Rec_F";};          \
    class 47 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_Rec_F";};          \
    class 48 {MY_G_O_1 vehicle="OPFa_mas_SoldierE_Sold_Rec_F";};
#define MY_G_O_SF side=0; faction="my_o";                                 \
    class 49 {MY_G_O_3 vehicle="OPFa_mas_SoldierE_Sold_SF_F";};           \
    class 50 {MY_G_O_2 vehicle="OPFa_mas_SoldierE_Sold_SFD_F";};          \
    class 51 {MY_G_O_2 vehicle="OPFa_mas_SoldierE_Sold_SFR_F";};          \
    class 52 {MY_G_O_2 vehicle="OPFa_mas_SoldierE_Sold_SFD_F";};

#define MY_G_B_ASSAULT side=1; faction="my_b";                            \
    class 53 {MY_G_B_3 vehicle="B_mas_cia_Soldierch_F";};                 \
    class 54 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_med_F";};             \
    class 55 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_AR_F";};              \
    class 56 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_exp_F";};
#define MY_G_B_COVER side=1; faction="my_b";                              \
    class 57 {MY_G_B_3 vehicle="B_mas_cia_Soldierch_F";};                 \
    class 58 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_exp_F";};             \
    class 59 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_med_F";};             \
    class 60 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_L_F";};
#define MY_G_B_RECCE side=1; faction="my_b";                              \
    class 61 {MY_G_B_3 vehicle="B_mas_cia_Soldierch_F";};                 \
    class 62 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_exp_F";};             \
    class 63 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_med_F";};             \
    class 64 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_Snp_F";};
#define MY_G_B_SUPPORT side=1; faction="my_b";                            \
    class 65 {MY_G_B_3 vehicle="B_mas_cia_Soldierch_F";};                 \
    class 66 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_LAT_F";};             \
    class 67 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_AR_F";};              \
    class 68 {MY_G_B_2 vehicle="B_mas_cia_Soldierch_AR_F";};

#define MY_G_I_TRUCK side=2; faction="my_i";                              \
    class 69 {MY_G_I_1 vehicle="IND_mas_TruckE_01_F";};                   \
    class 70 {MY_G_I_3 vehicle="IND_mas_SoldierE_Para_2_F";};             \
    class 71 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_3_F";};             \
    class 72 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_4_F";};             \
    class 73 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_5_F";};             \
    class 74 {MY_G_I_2 vehicle="IND_mas_SoldierE_Para_6_F";};             \
    class 75 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_7_F";};             \
    class 76 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_8_F";};             \
    class 77 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_1_F";};
#define MY_G_I_CAR side=2; faction="my_i";                                \
    class 78 {MY_G_I_1 vehicle="IND_mas_OffroadE_01_F";};                 \
    class 79 {MY_G_I_2 vehicle="IND_mas_SoldierE_Para_6_F";};             \
    class 80 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_3_F";};             \
    class 81 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_4_F";};             \
    class 82 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_5_F";};
#define MY_G_I_TECHNICALS side=2; faction="my_i";                         \
    class 83 {MY_G_I_4 vehicle="IND_mas_OffroadE_01_armed_F";};           \
    class 84 {MY_G_I_3 vehicle="IND_mas_OffroadE_01_armed_F";};           \
    class 85 {MY_G_I_3 vehicle="IND_mas_OffroadE_01_AT_F";};
#define MY_G_I_SQUAD side=2; faction="my_i";                              \
    class 86 {MY_G_I_3 vehicle="IND_mas_SoldierE_Para_2_F";};             \
    class 87 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_1_F";};             \
    class 88 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_3_F";};             \
    class 89 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_4_F";};             \
    class 90 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_5_F";};             \
    class 91 {MY_G_I_2 vehicle="IND_mas_SoldierE_Para_6_F";};             \
    class 92 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_7_F";};             \
    class 93 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_8_F";};
#define MY_G_I_TEAM side=2; faction="my_i";                               \
    class 94 {MY_G_I_2 vehicle="IND_mas_SoldierE_Para_6_F";};             \
    class 95 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_1_F";};             \
    class 96 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_4_F";};             \
    class 97 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_3_F";};
#define MY_G_I_AA side=2; faction="my_i";                                 \
    class 98 {MY_G_I_2 vehicle="IND_mas_SoldierE_Para_6_F";};             \
    class 99 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_AA_F";};            \
    class 100 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_AA_F";};
#define MY_G_I_AT side=2; faction="my_i";                                 \
    class 101 {MY_G_I_2 vehicle="IND_mas_SoldierE_Para_6_F";};            \
    class 102 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_5_F";};            \
    class 103 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_AT_F";};           \
    class 104 {MY_G_I_1 vehicle="IND_mas_SoldierE_Para_AT_F";};
#define MY_G_I_RECCE side=2; faction="my_i";                              \
    class 105 {MY_G_I_3 vehicle="IND_mas_SoldierE_Para_rec_F";};          \
    class 106 {MY_G_I_2 vehicle="IND_mas_SoldierE_Para_rec_F";};          \
    class 107 {MY_G_I_2 vehicle="IND_mas_SoldierE_Para_rec_F";};

class CfgFactionClasses {
    class my_o {displayName="My OPF"; priority=2; side=0;};
    class my_b {displayName="My BLU"; priority=2; side=1;};
    class my_i {displayName="My IND"; priority=2; side=2;};
};

class CfgGroups {
    class East {
        class my_o {
            name="My OPF";
            class Infantry {
                class my_g_108 {MY_G_O_SQUAD};
                class my_g_109 {MY_G_O_TEAM};
                class my_g_110 {MY_G_O_RECCE};
            };
            class Motorized {
                class my_g_111 {MY_G_O_TRUCK};
                class my_g_112 {MY_G_O_CAR};
            };
            class Mechanized {
                class my_g_113 {MY_G_O_APC};
                class my_g_114 {MY_G_O_IFV};
            };
            class Armored {
                class my_g_115 {MY_G_O_ARM};
            };
            class SpecOps {
                class my_g_116 {MY_G_O_SF};
            };
        };
    };
    class West {
        class my_b {
            name="My BLU";
            class Infantry {
            };
            class Motorized {
            };
            class Mechanized {
            };
            class Armored {
            };
            class SpecOps {
                class my_g_117 {MY_G_B_ASSAULT};
                class my_g_118 {MY_G_B_COVER};
                class my_g_119 {MY_G_B_RECCE};
                class my_g_120 {MY_G_B_SUPPORT};
            };
        };
    };
    class Indep {
        class my_i {
            name="My IND";
            class Infantry {
                class my_g_121 {MY_G_I_SQUAD};
                class my_g_122 {MY_G_I_TEAM};
                class my_g_123 {MY_G_I_AA};
                class my_g_124 {MY_G_I_AT};
                class my_g_125 {MY_G_I_RECCE};
            };
            class Motorized {
                class my_g_126 {MY_G_I_TRUCK};
                class my_g_127 {MY_G_I_CAR};
            };
            class Mechanized {
                class my_g_128 {MY_G_I_TECHNICALS};
            };
            class Armored {
            };
            class SpecOps {
            };
        };
    };
};
