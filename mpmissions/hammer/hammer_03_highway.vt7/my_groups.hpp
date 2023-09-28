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

#define MY_G_B_SQUAD side=1; faction="my_b";                           \
    class 0 {MY_G_B_3 vehicle="CUP_B_USMC_Soldier_SL";};               \
    class 1 {MY_G_B_1 vehicle="CUP_B_USMC_Soldier_AR";};               \
    class 2 {MY_G_B_1 vehicle="CUP_B_USMC_Soldier_LAT";};              \
    class 3 {MY_G_B_1 vehicle="CUP_B_USMC_Soldier_Marksman";};         \
    class 4 {MY_G_B_2 vehicle="CUP_B_USMC_Soldier_TL";};               \
    class 5 {MY_G_B_1 vehicle="CUP_B_USMC_Soldier_LAT";};              \
    class 6 {MY_G_B_1 vehicle="CUP_B_USMC_Soldier_MG";};               \
    class 7 {MY_G_B_1 vehicle="CUP_B_USMC_Medic";};
#define MY_G_B_HUMVEES side=1; faction="my_b";                         \
    class 8 {MY_G_B_3 vehicle="CUP_B_nM1025_M2_USMC_WDL";};            \
    class 9 {MY_G_B_1 vehicle="CUP_B_nM1025_Mk19_USMC_WDL";};          \
    class 10 {MY_G_B_1 vehicle="CUP_B_USMC_Soldier_LAT";};             \
    class 11 {MY_G_B_1 vehicle="CUP_B_USMC_Soldier_MG";};              \
    class 12 {MY_G_B_1 vehicle="CUP_B_USMC_Medic";};                   \
    class 13 {MY_G_B_1 vehicle="CUP_B_USMC_Soldier_LAT";};             \
    class 14 {MY_G_B_1 vehicle="CUP_B_USMC_Soldier_Marksman";};        \
    class 15 {MY_G_B_1 vehicle="CUP_B_USMC_Soldier_AR";};
#define MY_G_B_LAV side=1; faction="my_b";                             \
    class 16 {MY_G_B_3 vehicle="CUP_B_LAV25_USMC";};
#define MY_G_B_ABRAMS side=1; faction="my_b";                          \
    class 17 {MY_G_B_3 vehicle="CUP_B_M1A1FEP_Woodland_USMC";};
#define MY_G_B_RECON side=1; faction="my_b";                           \
    class 18 {MY_G_B_3 vehicle="CUP_B_FR_Soldier_TL";};                \
    class 19 {MY_G_B_1 vehicle="CUP_B_FR_Soldier_AR";};                \
    class 20 {MY_G_B_1 vehicle="CUP_B_FR_Soldier_GL";};                \
    class 21 {MY_G_B_1 vehicle="CUP_B_FR_Soldier_Marksman";};          \
    class 22 {MY_G_B_1 vehicle="CUP_B_FR_Saboteur";};                  \
    class 23 {MY_G_B_1 vehicle="CUP_B_FR_Medic";};
#define MY_G_B_SNIPER side=1; faction="my_b";                          \
    class 24 {MY_G_B_3 vehicle="CUP_B_USMC_Sniper_M40A3";};            \
    class 25 {MY_G_B_1 vehicle="CUP_B_USMC_Spotter";};

#define MY_G_O_SQUAD side=0; faction="my_o";                           \
    class 26 {MY_G_O_3 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};       \
    class 27 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};       \
    class 28 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};       \
    class 29 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_GL_M_EMR_V2";};       \
    class 30 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};       \
    class 31 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_M_EMR_V2";};          \
    class 32 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_Marksman_M_EMR_V2";}; \
    class 33 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_Medic_M_EMR_V2";};
#define MY_G_O_TEAM side=0; faction="my_o";                            \
    class 34 {MY_G_O_3 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};       \
    class 35 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};       \
    class 36 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};       \
    class 37 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};       \
    class 38 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_M_EMR_V2";};          \
    class 39 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_Medic_M_EMR_V2";};
#define MY_G_O_MOTORIZED side=0; faction="my_o";                       \
    class 40 {MY_G_O_3 vehicle="CUP_O_Ural_Open_RU";};                 \
    class 41 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};       \
    class 42 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};       \
    class 43 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};       \
    class 44 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_GL_M_EMR_V2";};       \
    class 45 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};       \
    class 46 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_M_EMR_V2";};          \
    class 47 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_Marksman_M_EMR_V2";}; \
    class 48 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_Medic_M_EMR_V2";};    \
    class 49 {MY_G_O_2 vehicle="CUP_O_RU_Soldier_TL_M_EMR_V2";};       \
    class 50 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};       \
    class 51 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};       \
    class 52 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};       \
    class 53 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_M_EMR_V2";};          \
    class 54 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_Medic_M_EMR_V2";};
#define MY_G_O_UAZMG side=0; faction="my_o";                           \
    class 55 {MY_G_O_3 vehicle="CUP_O_UAZ_MG_RU";};
#define MY_G_O_UAZGL side=0; faction="my_o";                           \
    class 56 {MY_G_O_3 vehicle="CUP_O_UAZ_AGS30_RU";};
#define MY_G_O_UAZSPG side=0; faction="my_o";                          \
    class 57 {MY_G_O_3 vehicle="CUP_O_UAZ_SPG9_RU";};
#define MY_G_O_GAZ side=0; faction="my_o";                             \
    class 58 {MY_G_O_3 vehicle="CUP_O_GAZ_Vodnik_PK_RU";};
#define MY_G_O_BRDM side=0; faction="my_o";                            \
    class 59 {MY_G_O_3 vehicle="CUP_O_BRDM2_RUS";};
#define MY_G_O_BMP2 side=0; faction="my_o";                            \
    class 60 {MY_G_O_3 vehicle="CUP_O_BMP2_RU";};
#define MY_G_O_BTR80 side=0; faction="my_o";                           \
    class 61 {MY_G_O_3 vehicle="CUP_O_BTR80_GREEN_RU";};
#define MY_G_O_BTR80A side=0; faction="my_o";                          \
    class 62 {MY_G_O_3 vehicle="CUP_O_BTR80A_GREEN_RU";};
#define MY_G_O_T72 side=0; faction="my_o";                             \
    class 63 {MY_G_O_3 vehicle="CUP_O_T72_RU";};
#define MY_G_O_SNIPER side=0; faction="my_o";                          \
    class 64 {MY_G_O_3 vehicle="CUP_O_RU_Spotter_M_EMR";};             \
    class 65 {MY_G_O_1 vehicle="CUP_O_RU_Sniper_M_EMR";};
#define MY_G_O_RECON side=0; faction="my_o";                           \
    class 66 {MY_G_O_3 vehicle="CUP_O_RU_Soldier_TL_M_VDV_EMR_V2";};   \
    class 67 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_AR_M_VDV_EMR_V2";};   \
    class 68 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_AT_M_VDV_EMR_V2";};   \
    class 69 {MY_G_O_1 vehicle="CUP_O_RU_Soldier_Medic_M_VDV_EMR_V2";};

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
                class my_g_0 {MY_G_O_SQUAD};
                class my_g_1 {MY_G_O_SQUAD};
                class my_g_2 {MY_G_O_TEAM};
            };
            class Motorized {
                class my_g_3 {MY_G_O_MOTORIZED};
            };
            class Mechanized {
                class my_g_4 {MY_G_O_UAZMG};
                class my_g_5 {MY_G_O_UAZGL};
                class my_g_6 {MY_G_O_UAZSPG};
                class my_g_7 {MY_G_O_GAZ};
                class my_g_8 {MY_G_O_BRDM};
            };
            class Armored {
                class my_g_9 {MY_G_O_BMP2};
                class my_g_10 {MY_G_O_BTR80};
                class my_g_11 {MY_G_O_BTR80A};
                class my_g_12 {MY_G_O_T72};
            };
            class SpecOps {
                class my_g_13 {MY_G_O_SNIPER};
                class my_g_14 {MY_G_O_RECON};
            };
        };
    };
    class West {
        class my_b {
            name="My BLU";
            class Infantry {
                class my_g_15 {MY_G_B_SQUAD};
            };
            class Motorized {
                class my_g_16 {MY_G_B_HUMVEES};
            };
            class Mechanized {
                class my_g_17 {MY_G_B_LAV};
            };
            class Armored {
                class my_g_18 {MY_G_B_ABRAMS};
            };
            class SpecOps {
                class my_g_19 {MY_G_B_RECON};
                class my_g_20 {MY_G_B_SNIPER};
            };
        };
    };
    class Indep {
        class my_i {
            name="My IND";
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
};
