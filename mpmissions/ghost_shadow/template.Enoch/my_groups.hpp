#define MY_G_O_1 side=0; rank="PRIVATE";
#define MY_G_O_2 side=0; rank="CORPORAL";
#define MY_G_O_3 side=0; rank="SERGEANT";
#define MY_G_O_4 side=0; rank="LIEUTENANT";
#define MY_G_B_1 side=1; rank="PRIVATE";
#define MY_G_B_2 side=1; rank="CORPORAL";
#define MY_G_B_3 side=1; rank="SERGEANT";
#define MY_G_B_4 side=1; rank="LIEUTENANT";
#define MY_G_I_1 side=2; rank="PRIVATE";
#define MY_G_I_2 side=2; rank="CORPORAL";
#define MY_G_I_3 side=2; rank="SERGEANT";
#define MY_G_I_4 side=2; rank="LIEUTENANT";

#define MY_G_B_INF_8 side=1; faction="my_b";                     \
    class 0 {MY_G_B_3 vehicle="B_W_Soldier_SL_F";};              \
    class 1 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};              \
    class 2 {MY_G_B_1 vehicle="B_W_Soldier_LAT2_F";};            \
    class 3 {MY_G_B_1 vehicle="B_W_Medic_F";};                   \
    class 4 {MY_G_B_2 vehicle="B_W_Soldier_TL_F";};              \
    class 5 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};              \
    class 6 {MY_G_B_1 vehicle="B_W_soldier_M_F";};               \
    class 7 {MY_G_B_1 vehicle="B_W_Soldier_F";};
#define MY_G_B_INF_6 side=1; faction="my_b";                     \
    class 8 {MY_G_B_3 vehicle="B_W_Soldier_SL_F";};              \
    class 9 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};              \
    class 10 {MY_G_B_1 vehicle="B_W_Soldier_LAT2_F";};           \
    class 11 {MY_G_B_1 vehicle="B_W_Medic_F";};                  \
    class 12 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};             \
    class 13 {MY_G_B_1 vehicle="B_W_Soldier_F";};
#define MY_G_B_INF_4 side=1; faction="my_b";                     \
    class 14 {MY_G_B_2 vehicle="B_W_Soldier_TL_F";};             \
    class 15 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};             \
    class 16 {MY_G_B_1 vehicle="B_W_Soldier_LAT2_F";};           \
    class 17 {MY_G_B_1 vehicle="B_W_Soldier_F";};
#define MY_G_B_INF_AT side=1; faction="my_b";                    \
    class 18 {MY_G_B_2 vehicle="B_W_Soldier_TL_F";};             \
    class 19 {MY_G_B_1 vehicle="B_W_Soldier_AT_F";};             \
    class 20 {MY_G_B_1 vehicle="B_W_Soldier_AT_F";};             \
    class 21 {MY_G_B_1 vehicle="B_W_Soldier_AA_F";};
#define MY_G_B_INF_SNI side=1; faction="my_b";                   \
    class 22 {MY_G_B_2 vehicle="B_ghillie_lsh_F";};              \
    class 23 {MY_G_B_1 vehicle="B_ghillie_lsh_F";};
#define MY_G_B_INF_HQ side=1; faction="my_b";                    \
    class 24 {MY_G_B_4 vehicle="B_W_Officer_F";};                \
    class 25 {MY_G_B_3 vehicle="B_W_Soldier_SL_F";};             \
    class 26 {MY_G_B_1 vehicle="B_W_RadioOperator_F";};          \
    class 27 {MY_G_B_1 vehicle="B_W_Medic_F";};
#define MY_G_B_MOT side=1; faction="my_b";                       \
    class 28 {MY_G_B_1 vehicle="B_T_Truck_01_transport_F";};     \
    class 29 {MY_G_B_3 vehicle="B_W_Soldier_SL_F";};             \
    class 30 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};             \
    class 31 {MY_G_B_1 vehicle="B_W_Soldier_LAT2_F";};           \
    class 32 {MY_G_B_1 vehicle="B_W_Medic_F";};                  \
    class 33 {MY_G_B_2 vehicle="B_W_Soldier_TL_F";};             \
    class 34 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};             \
    class 35 {MY_G_B_1 vehicle="B_W_soldier_M_F";};              \
    class 36 {MY_G_B_1 vehicle="B_W_Soldier_F";};                \
    class 37 {MY_G_B_2 vehicle="B_W_Soldier_TL_F";};             \
    class 38 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};             \
    class 39 {MY_G_B_1 vehicle="B_W_Soldier_LAT2_F";};           \
    class 40 {MY_G_B_1 vehicle="B_W_Soldier_F";};                \
    class 41 {MY_G_B_2 vehicle="B_W_Soldier_TL_F";};             \
    class 42 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};             \
    class 43 {MY_G_B_1 vehicle="B_W_Soldier_LAT2_F";};           \
    class 44 {MY_G_B_1 vehicle="B_W_Soldier_F";};                \
    class 45 {MY_G_B_1 vehicle="B_W_Soldier_F";};
#define MY_G_B_MEC side=1; faction="my_b";                       \
    class 46 {MY_G_B_1 vehicle="B_T_APC_Wheeled_01_cannon_F";};  \
    class 47 {MY_G_B_3 vehicle="B_W_Soldier_SL_F";};             \
    class 48 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};             \
    class 49 {MY_G_B_1 vehicle="B_W_Soldier_LAT2_F";};           \
    class 50 {MY_G_B_1 vehicle="B_W_Soldier_F";};                \
    class 51 {MY_G_B_2 vehicle="B_W_Soldier_TL_F";};             \
    class 52 {MY_G_B_1 vehicle="B_W_Soldier_AR_F";};             \
    class 53 {MY_G_B_1 vehicle="B_W_Soldier_LAT2_F";};           \
    class 54 {MY_G_B_1 vehicle="B_W_Soldier_F";};
#define MY_G_B_ARM side=1; faction="my_b";                       \
    class 55 {MY_G_B_3 vehicle="B_T_MBT_01_TUSK_F";};            \
    class 56 {MY_G_B_3 vehicle="B_T_MBT_01_cannon_F";};

#define MY_G_O_INF_6 side=0; faction="my_o";                     \
    class 57 {MY_G_O_3 vehicle="I_L_Looter_Pistol_F";};          \
    class 58 {MY_G_O_1 vehicle="I_L_Looter_SG_F";};              \
    class 59 {MY_G_O_1 vehicle="I_L_Looter_Rifle_F";};           \
    class 60 {MY_G_O_1 vehicle="I_L_Looter_SMG_F";};             \
    class 61 {MY_G_O_1 vehicle="I_L_Criminal_SG_F";};            \
    class 62 {MY_G_O_1 vehicle="I_L_Criminal_SMG_F";};
#define MY_G_O_INF_3 side=0; faction="my_o";                     \
    class 63 {MY_G_O_3 vehicle="I_L_Looter_Pistol_F";};          \
    class 64 {MY_G_O_1 vehicle="I_L_Looter_SG_F";};              \
    class 65 {MY_G_O_1 vehicle="I_L_Looter_Rifle_F";};
#define MY_G_O_INF_1 side=0; faction="my_o";                     \
    class 66 {MY_G_O_2 vehicle="I_L_Hunter_F";};
#define MY_G_O_MOT side=0; faction="my_o";                       \
    class 67 {MY_G_O_2 vehicle="O_G_Offroad_01_armed_F";};       \
    class 68 {MY_G_O_2 vehicle="O_G_Offroad_01_AT_F";};

#define MY_G_I_INF_8 side=2; faction="my_i";                     \
    class 69 {MY_G_I_3 vehicle="I_E_Soldier_SL_F";};             \
    class 70 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};             \
    class 71 {MY_G_I_1 vehicle="I_E_Soldier_LAT2_F";};           \
    class 72 {MY_G_I_1 vehicle="I_E_Medic_F";};                  \
    class 73 {MY_G_I_2 vehicle="I_E_Soldier_TL_F";};             \
    class 74 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};             \
    class 75 {MY_G_I_1 vehicle="I_E_soldier_M_F";};              \
    class 76 {MY_G_I_1 vehicle="I_E_Soldier_F";};
#define MY_G_I_INF_6 side=2; faction="my_i";                     \
    class 77 {MY_G_I_3 vehicle="I_E_Soldier_SL_F";};             \
    class 78 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};             \
    class 79 {MY_G_I_1 vehicle="I_E_Soldier_LAT2_F";};           \
    class 80 {MY_G_I_1 vehicle="I_E_Medic_F";};                  \
    class 81 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};             \
    class 82 {MY_G_I_1 vehicle="I_E_Soldier_F";};
#define MY_G_I_INF_4 side=2; faction="my_i";                     \
    class 83 {MY_G_I_2 vehicle="I_E_Soldier_TL_F";};             \
    class 84 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};             \
    class 85 {MY_G_I_1 vehicle="I_E_Soldier_LAT2_F";};           \
    class 86 {MY_G_I_1 vehicle="I_E_Medic_F";};
#define MY_G_I_INF_AT side=2; faction="my_i";                    \
    class 87 {MY_G_I_2 vehicle="I_E_Soldier_TL_F";};             \
    class 88 {MY_G_I_1 vehicle="I_E_Soldier_AT_F";};             \
    class 89 {MY_G_I_1 vehicle="I_E_Soldier_AT_F";};             \
    class 90 {MY_G_I_1 vehicle="I_E_Soldier_AA_F";};
#define MY_G_I_INF_HQ side=2; faction="my_i";                    \
    class 91 {MY_G_I_4 vehicle="I_E_Officer_F";};                \
    class 92 {MY_G_I_3 vehicle="I_E_Soldier_SL_F";};             \
    class 93 {MY_G_I_1 vehicle="I_E_RadioOperator_F";};          \
    class 94 {MY_G_I_1 vehicle="I_E_Medic_F";};
#define MY_G_I_MOT_17 side=2; faction="my_i";                    \
    class 95 {MY_G_I_1 vehicle="I_E_Truck_02_transport_F";};     \
    class 96 {MY_G_I_3 vehicle="I_E_Soldier_SL_F";};             \
    class 97 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};             \
    class 98 {MY_G_I_1 vehicle="I_E_Soldier_LAT2_F";};           \
    class 99 {MY_G_I_1 vehicle="I_E_Medic_F";};                  \
    class 100 {MY_G_I_2 vehicle="I_E_Soldier_TL_F";};            \
    class 101 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};            \
    class 102 {MY_G_I_1 vehicle="I_E_soldier_M_F";};             \
    class 103 {MY_G_I_1 vehicle="I_E_Soldier_F";};               \
    class 104 {MY_G_I_2 vehicle="I_E_Soldier_TL_F";};            \
    class 105 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};            \
    class 106 {MY_G_I_1 vehicle="I_E_Soldier_LAT2_F";};          \
    class 107 {MY_G_I_1 vehicle="I_E_Soldier_F";};               \
    class 108 {MY_G_I_2 vehicle="I_E_Soldier_TL_F";};            \
    class 109 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};            \
    class 110 {MY_G_I_1 vehicle="I_E_Soldier_LAT2_F";};          \
    class 111 {MY_G_I_1 vehicle="I_E_Soldier_F";};
#define MY_G_I_MOT_6 side=2; faction="my_i";                     \
    class 112 {MY_G_I_1 vehicle="I_E_Offroad_01_F";};            \
    class 113 {MY_G_I_3 vehicle="I_E_Soldier_SL_F";};            \
    class 114 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};            \
    class 115 {MY_G_I_1 vehicle="I_E_Soldier_LAT2_F";};          \
    class 116 {MY_G_I_1 vehicle="I_E_Medic_F";};                 \
    class 117 {MY_G_I_1 vehicle="I_E_Soldier_F";};
#define MY_G_I_MEC side=2; faction="my_i";                       \
    class 118 {MY_G_I_1 vehicle="I_E_APC_tracked_03_cannon_F";}; \
    class 119 {MY_G_I_3 vehicle="I_E_Soldier_SL_F";};            \
    class 120 {MY_G_I_1 vehicle="I_E_Soldier_AR_F";};            \
    class 121 {MY_G_I_1 vehicle="I_E_Soldier_LAT2_F";};          \
    class 122 {MY_G_I_1 vehicle="I_E_Medic_F";};                 \
    class 123 {MY_G_I_2 vehicle="I_E_Soldier_TL_F";};            \
    class 124 {MY_G_I_1 vehicle="I_E_soldier_M_F";};             \
    class 125 {MY_G_I_1 vehicle="I_E_Soldier_F";};

class CfgFactionClasses {
    class my_o {displayName="My OPF"; priority=2; side=0;};
    class my_b {displayName="My BLU"; priority=2; side=1;};
    class my_i {displayName="My IND"; priority=2; side=2;};
};

class CfgGroups {
    class West {
        class my_b {
            name="My BLU";
            class Infantry {
                class my_g_0 {MY_G_B_INF_8};
                class my_g_1 {MY_G_B_INF_6};
                class my_g_2 {MY_G_B_INF_4};
            };
            class Motorized {
                class my_g_3 {MY_G_B_MOT};
            };
            class Mechanized {
                class my_g_4 {MY_G_B_MEC};
            };
            class Armored {
                class my_g_5 {MY_G_B_ARM};
            };
            class SpecOps {
                class my_g_6 {MY_G_B_INF_AT};
                class my_g_7 {MY_G_B_INF_SNI};
                class my_g_8 {MY_G_B_INF_HQ};
            };
        };
    };
    class East {
        class my_o {
            name="My OPF";
            class Infantry {
                class my_g_9 {MY_G_O_INF_6};
                class my_g_10 {MY_G_O_INF_3};
            };
            class Motorized {
                class my_g_11 {MY_G_O_MOT};
            };
            class Mechanized {
            };
            class Armored {
            };
            class SpecOps {
                class my_g_12 {MY_G_O_INF_1};
            };
        };
    };
    class Indep {
        class my_i {
            name="My IND";
            class Infantry {
                class my_g_13 {MY_G_I_INF_8};
                class my_g_14 {MY_G_I_INF_6};
                class my_g_15 {MY_G_I_INF_4};
            };
            class Motorized {
                class my_g_16 {MY_G_I_MOT_17};
                class my_g_17 {MY_G_I_MOT_6};
            };
            class Mechanized {
                class my_g_18 {MY_G_I_MEC};
            };
            class Armored {
            };
            class SpecOps {
                class my_g_19 {MY_G_I_INF_AT};
                class my_g_20 {MY_G_I_INF_HQ};
            };
        };
    };
};
