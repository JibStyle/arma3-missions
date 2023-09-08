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

#define MY_G_B_INF_S side=1; faction="my_b";                    \
    class 0 {MY_G_B_3 vehicle="LIB_DAK_NCO";};                  \
    class 1 {MY_G_B_1 vehicle="LIB_DAK_grenadier";};            \
    class 2 {MY_G_B_1 vehicle="LIB_DAK_Soldier_3";};            \
    class 3 {MY_G_B_1 vehicle="LIB_DAK_Soldier";};              \
    class 4 {MY_G_B_2 vehicle="LIB_DAK_Soldier_2";};            \
    class 5 {MY_G_B_1 vehicle="LIB_DAK_AT_grenadier";};         \
    class 6 {MY_G_B_1 vehicle="LIB_DAK_sapper";};               \
    class 7 {MY_G_B_1 vehicle="LIB_DAK_medic";};
#define MY_G_B_INF_AT side=1; faction="my_b";                   \
    class 8 {MY_G_B_2 vehicle="LIB_DAK_Soldier_2";};            \
    class 9 {MY_G_B_1 vehicle="LIB_DAK_AT_soldier";};           \
    class 10 {MY_G_B_1 vehicle="LIB_DAK_AT_soldier";};          \
    class 11 {MY_G_B_1 vehicle="LIB_DAK_Soldier_3";};
#define MY_G_B_INF_PL side=1; faction="my_b";                   \
    class 12 {MY_G_B_4 vehicle="LIB_DAK_Lieutenant";};          \
    class 13 {MY_G_B_3 vehicle="LIB_DAK_NCO";};                 \
    class 14 {MY_G_B_1 vehicle="LIB_DAK_radioman";};            \
    class 15 {MY_G_B_1 vehicle="LIB_DAK_medic";};
#define MY_G_B_INF_SNI side=1; faction="my_b";                  \
    class 16 {MY_G_B_2 vehicle="LIB_DAK_Soldier_2";};           \
    class 17 {MY_G_B_1 vehicle="LIB_DAK_Sniper";};
#define MY_G_B_INF_SEN side=1; faction="my_b";                  \
    class 18 {MY_G_B_1 vehicle="LIB_DAK_Sentry";};              \
    class 19 {MY_G_B_1 vehicle="LIB_DAK_Sentry_2";};
#define MY_G_B_MOT_CAR side=1; faction="my_b";                  \
    class 20 {MY_G_B_2 vehicle="LIB_DAK_Kfz1";};                \
    class 21 {MY_G_B_1 vehicle="LIB_DAK_Soldier";};             \
    class 22 {MY_G_B_1 vehicle="LIB_DAK_Soldier";};             \
    class 23 {MY_G_B_1 vehicle="LIB_DAK_Soldier";};
#define MY_G_B_MOT_MG side=1; faction="my_b";                   \
    class 24 {MY_G_B_2 vehicle="LIB_DAK_Kfz1_MG42";};
#define MY_G_B_MOT_MG_SQUAD side=1; faction="my_b";             \
    class 25 {MY_G_B_3 vehicle="LIB_DAK_NCO";};                 \
    class 26 {MY_G_B_1 vehicle="LIB_DAK_Scout_M3_FFV";};        \
    class 27 {MY_G_B_1 vehicle="LIB_DAK_grenadier";};           \
    class 28 {MY_G_B_1 vehicle="LIB_DAK_Soldier_3";};           \
    class 29 {MY_G_B_1 vehicle="LIB_DAK_Soldier";};             \
    class 30 {MY_G_B_2 vehicle="LIB_DAK_Soldier_2";};           \
    class 31 {MY_G_B_1 vehicle="LIB_DAK_AT_grenadier";};        \
    class 32 {MY_G_B_1 vehicle="LIB_DAK_sapper";};
#define MY_G_B_MEC_1 side=1; faction="my_b";                    \
    class 33 {MY_G_B_3 vehicle="LIB_DAK_NCO";};                 \
    class 34 {MY_G_B_1 vehicle="LIB_DAK_M3_Halftrack";};        \
    class 35 {MY_G_B_1 vehicle="LIB_DAK_grenadier";};           \
    class 36 {MY_G_B_1 vehicle="LIB_DAK_Soldier_3";};           \
    class 37 {MY_G_B_1 vehicle="LIB_DAK_Soldier";};             \
    class 38 {MY_G_B_2 vehicle="LIB_DAK_Soldier_2";};           \
    class 39 {MY_G_B_1 vehicle="LIB_DAK_AT_soldier";};          \
    class 40 {MY_G_B_1 vehicle="LIB_DAK_sapper";};              \
    class 41 {MY_G_B_1 vehicle="LIB_DAK_medic";};
#define MY_G_B_MEC_2 side=1; faction="my_b";                    \
    class 42 {MY_G_B_3 vehicle="LIB_DAK_NCO";};                 \
    class 43 {MY_G_B_1 vehicle="LIB_DAK_SdKfz251";};            \
    class 44 {MY_G_B_1 vehicle="LIB_DAK_grenadier";};           \
    class 45 {MY_G_B_1 vehicle="LIB_DAK_Soldier_3";};           \
    class 46 {MY_G_B_1 vehicle="LIB_DAK_Soldier";};             \
    class 47 {MY_G_B_2 vehicle="LIB_DAK_Soldier_2";};           \
    class 48 {MY_G_B_1 vehicle="LIB_DAK_AT_soldier";};          \
    class 49 {MY_G_B_1 vehicle="LIB_DAK_sapper";};              \
    class 50 {MY_G_B_1 vehicle="LIB_DAK_medic";};
#define MY_G_B_MEC_AA side=1; faction="my_b";                   \
    class 51 {MY_G_B_3 vehicle="LIB_DAK_SdKfz_7_AA";};
#define MY_G_B_ARM_AA side=1; faction="my_b";                   \
    class 52 {MY_G_B_3 vehicle="LIB_DAK_FlakPanzerIV_Wirbelwind";};
#define MY_G_B_ARM_L side=1; faction="my_b";                    \
    class 53 {MY_G_B_3 vehicle="LIB_DAK_PzKpfwIV_H";};          \
    class 54 {MY_G_B_3 vehicle="LIB_DAK_PzKpfwIV_H";};
#define MY_G_B_ARM_H side=1; faction="my_b";                    \
    class 55 {MY_G_B_3 vehicle="LIB_DAK_PzKpfwVI_E";};          \
    class 56 {MY_G_B_3 vehicle="LIB_DAK_PzKpfwVI_E";};

#define MY_G_I_INF_S side=2; faction="my_i";                    \
    class 57 {MY_G_I_3 vehicle="LIB_UK_DR_Sergeant";};          \
    class 58 {MY_G_I_1 vehicle="LIB_UK_DR_Grenadier";};         \
    class 59 {MY_G_I_1 vehicle="LIB_UK_DR_LanceCorporal";};     \
    class 60 {MY_G_I_1 vehicle="LIB_UK_DR_Rifleman";};          \
    class 61 {MY_G_I_2 vehicle="LIB_UK_DR_Corporal";};          \
    class 62 {MY_G_I_1 vehicle="LIB_UK_DR_AT_Soldier";};        \
    class 63 {MY_G_I_1 vehicle="LIB_UK_DR_Engineer";};          \
    class 64 {MY_G_I_1 vehicle="LIB_UK_DR_Medic";};
#define MY_G_I_INF_AT side=2; faction="my_i";                   \
    class 65 {MY_G_I_2 vehicle="LIB_UK_DR_Corporal";};          \
    class 66 {MY_G_I_1 vehicle="LIB_UK_DR_AT_Soldier";};        \
    class 67 {MY_G_I_1 vehicle="LIB_UK_DR_AT_Soldier";};        \
    class 68 {MY_G_I_1 vehicle="LIB_UK_DR_LanceCorporal";};
#define MY_G_I_INF_PL side=2; faction="my_i";                   \
    class 69 {MY_G_I_4 vehicle="LIB_UK_DR_Officer";};           \
    class 70 {MY_G_I_3 vehicle="LIB_UK_DR_Sergeant";};          \
    class 71 {MY_G_I_2 vehicle="LIB_UK_DR_Corporal";};          \
    class 72 {MY_G_I_1 vehicle="LIB_UK_DR_Radioman";};
#define MY_G_I_INF_SNI side=2; faction="my_i";                  \
    class 73 {MY_G_I_2 vehicle="LIB_UK_DR_Corporal";};          \
    class 74 {MY_G_I_1 vehicle="LIB_UK_DR_Sniper";};
#define MY_G_I_MOT_CAR side=2; faction="my_i";                  \
    class 75 {MY_G_I_1 vehicle="LIB_UK_DR_Willys_MB";};         \
    class 76 {MY_G_I_1 vehicle="LIB_UK_DR_Rifleman";};          \
    class 77 {MY_G_I_1 vehicle="LIB_UK_DR_Rifleman";};          \
    class 78 {MY_G_I_1 vehicle="LIB_UK_DR_Rifleman";};
#define MY_G_I_MOT_MG side=2; faction="my_i";                   \
    class 79 {MY_G_I_2 vehicle="LIB_UK_DR_Willys_MB_M1919";};
#define MY_G_I_MEC_MG side=2; faction="my_i";                   \
    class 80 {MY_G_I_3 vehicle="LIB_UK_DR_Sergeant";};          \
    class 81 {MY_G_I_1 vehicle="LIB_UK_DR_M3_Halftrack";};      \
    class 82 {MY_G_I_1 vehicle="LIB_UK_DR_Grenadier";};         \
    class 83 {MY_G_I_1 vehicle="LIB_UK_DR_LanceCorporal";};     \
    class 84 {MY_G_I_1 vehicle="LIB_UK_DR_Rifleman";};          \
    class 85 {MY_G_I_2 vehicle="LIB_UK_DR_Corporal";};          \
    class 86 {MY_G_I_1 vehicle="LIB_UK_DR_AT_Soldier";};        \
    class 87 {MY_G_I_1 vehicle="LIB_UK_DR_Engineer";};          \
    class 88 {MY_G_I_1 vehicle="LIB_UK_DR_Medic";};
#define MY_G_I_MEC_APC side=2; faction="my_i";                  \
    class 89 {MY_G_I_3 vehicle="LIB_UK_DR_Sergeant";};          \
    class 90 {MY_G_I_1 vehicle="LIB_UniversalCarrier_desert";}; \
    class 91 {MY_G_I_1 vehicle="LIB_UK_DR_Grenadier";};         \
    class 92 {MY_G_I_1 vehicle="LIB_UK_DR_LanceCorporal";};     \
    class 93 {MY_G_I_1 vehicle="LIB_UK_DR_Rifleman";};          \
    class 94 {MY_G_I_2 vehicle="LIB_UK_DR_Corporal";};          \
    class 95 {MY_G_I_1 vehicle="LIB_UK_DR_AT_Soldier";};        \
    class 96 {MY_G_I_1 vehicle="LIB_UK_DR_Engineer";};          \
    class 97 {MY_G_I_1 vehicle="LIB_UK_DR_Medic";};
#define MY_G_I_ARM_H side=2; faction="my_i";                    \
    class 98 {MY_G_I_3 vehicle="LIB_Churchill_Mk7_desert";};    \
    class 99 {MY_G_I_3 vehicle="LIB_Churchill_Mk7_desert";};
#define MY_G_I_ARM_MGS side=2; faction="my_i";                  \
    class 100 {MY_G_I_3 vehicle="LIB_Churchill_Mk7_Howitzer_desert";};
#define MY_G_I_ARM_L side=2; faction="my_i";                    \
    class 101 {MY_G_I_3 vehicle="LIB_UK_Italy_M4A3_75";};       \
    class 102 {MY_G_I_3 vehicle="LIB_UK_Italy_M4A3_75";};

class CfgFactionClasses {
    class my_0 {displayName="My OPF"; priority=2; side=0;};
    class my_b {displayName="My BLU"; priority=2; side=1;};
    class my_i {displayName="My IND"; priority=2; side=2;};
};

class CfgGroups {
    class East {
        class my_o {
            name="My OPF";
            class Infantry {
            };
            class Motorized {
            };
            class Mechanized {
            };
            class Armored {
            };
            class SpecOps {
            };
        };
    };
    class West {
        class my_b {
            name="My BLU";
            class Infantry {
                class my_g_0 {MY_G_B_INF_S};
                class my_g_1 {MY_G_B_INF_AT};
                class my_g_2 {MY_G_B_INF_PL};
                class my_g_3 {MY_G_B_INF_SNI};
                class my_g_4 {MY_G_B_INF_SEN};
            };
            class Motorized {
                class my_g_5 {MY_G_B_MOT_CAR};
                class my_g_6 {MY_G_B_MOT_MG};
                class my_g_7 {MY_G_B_MOT_MG_SQUAD};
            };
            class Mechanized {
                class my_g_8 {MY_G_B_MEC_1};
                class my_g_9 {MY_G_B_MEC_2};
                class my_g_10 {MY_G_B_MEC_AA};
            };
            class Armored {
                class my_g_11 {MY_G_B_ARM_AA};
                class my_g_12 {MY_G_B_ARM_L};
                class my_g_13 {MY_G_B_ARM_H};
            };
            class SpecOps {
            };
        };
    };
    class Indep {
        class my_i {
            name="My IND";
            class Infantry {
                class my_g_14 {MY_G_I_INF_S};
                class my_g_15 {MY_G_I_INF_AT};
                class my_g_16 {MY_G_I_INF_PL};
                class my_g_17 {MY_G_I_INF_SNI};
            };
            class Motorized {
                class my_g_18 {MY_G_I_MOT_CAR};
                class my_g_19 {MY_G_I_MOT_MG};
            };
            class Mechanized {
                class my_g_20 {MY_G_I_MEC_MG};
                class my_g_21 {MY_G_I_MEC_APC};
            };
            class Armored {
                class my_g_22 {MY_G_I_ARM_H};
                class my_g_23 {MY_G_I_ARM_MGS};
                class my_g_24 {MY_G_I_ARM_L};
            };
            class SpecOps {
            };
        };
    };
};
