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

#define MY_G_B_INF_8 side=1; faction="my_b";                 \
    class 0 {MY_G_B_3 vehicle="LIB_GER_unterofficer"};       \
    class 1 {MY_G_B_1 vehicle="LIB_GER_medic"};              \
    class 2 {MY_G_B_1 vehicle="LIB_GER_LAT_Rifleman"};       \
    class 3 {MY_G_B_1 vehicle="LIB_GER_ober_grenadier"};     \
    class 4 {MY_G_B_2 vehicle="LIB_GER_smgunner"};           \
    class 5 {MY_G_B_1 vehicle="LIB_GER_mgunner"};            \
    class 6 {MY_G_B_1 vehicle="LIB_GER_rifleman"};           \
    class 7 {MY_G_B_1 vehicle="LIB_GER_Soldier2"};
#define MY_G_B_INF_6 side=1; faction="my_b";                 \
    class 8 {MY_G_B_3 vehicle="LIB_GER_unterofficer"};       \
    class 9 {MY_G_B_1 vehicle="LIB_GER_medic"};              \
    class 10 {MY_G_B_1 vehicle="LIB_GER_LAT_Rifleman"};      \
    class 11 {MY_G_B_1 vehicle="LIB_GER_ober_grenadier"};    \
    class 12 {MY_G_B_1 vehicle="LIB_GER_mgunner"};           \
    class 13 {MY_G_B_1 vehicle="LIB_GER_rifleman"};
#define MY_G_B_INF_4 side=1; faction="my_b";                 \
    class 14 {MY_G_B_3 vehicle="LIB_GER_unterofficer"};      \
    class 15 {MY_G_B_1 vehicle="LIB_GER_AT_grenadier"};      \
    class 16 {MY_G_B_1 vehicle="LIB_GER_ober_grenadier"};    \
    class 17 {MY_G_B_1 vehicle="LIB_GER_rifleman"};
#define MY_G_B_INF_HQ side=1; faction="my_b";                \
    class 18 {MY_G_B_4 vehicle="LIB_GER_lieutenant"};        \
    class 19 {MY_G_B_3 vehicle="LIB_GER_unterofficer"};      \
    class 20 {MY_G_B_1 vehicle="LIB_GER_medic"};             \
    class 21 {MY_G_B_1 vehicle="LIB_GER_radioman"};
#define MY_G_B_SF_MG side=1; faction="my_b";                 \
    class 22 {MY_G_B_2 vehicle="LIB_GER_smgunner"};          \
    class 23 {MY_G_B_1 vehicle="LIB_GER_mgunner2"};          \
    class 24 {MY_G_B_1 vehicle="LIB_GER_mgunner2"};
#define MY_G_B_SF_AT side=1; faction="my_b";                 \
    class 25 {MY_G_B_2 vehicle="LIB_GER_smgunner"};          \
    class 26 {MY_G_B_1 vehicle="LIB_GER_AT_soldier"};        \
    class 27 {MY_G_B_1 vehicle="LIB_GER_AT_soldier"};
#define MY_G_B_SF_SNIPER side=1; faction="my_b";             \
    class 28 {MY_G_B_1 vehicle="LIB_GER_scout_sniper"};
#define MY_G_B_MOT_INF side=1; faction="my_b";               \
    class 29 {MY_G_B_1 vehicle="LIB_OpelBlitz_Tent_Y_Camo"}; \
    class 30 {MY_G_B_3 vehicle="LIB_GER_unterofficer"};      \
    class 31 {MY_G_B_1 vehicle="LIB_GER_medic"};             \
    class 32 {MY_G_B_1 vehicle="LIB_GER_LAT_Rifleman"};      \
    class 33 {MY_G_B_1 vehicle="LIB_GER_ober_grenadier"};    \
    class 34 {MY_G_B_2 vehicle="LIB_GER_smgunner"};          \
    class 35 {MY_G_B_1 vehicle="LIB_GER_mgunner"};           \
    class 36 {MY_G_B_1 vehicle="LIB_GER_rifleman"};          \
    class 37 {MY_G_B_1 vehicle="LIB_GER_Soldier2"};
#define MY_G_B_MEC_INF side=1; faction="my_b";               \
    class 38 {MY_G_B_1 vehicle="LIB_SdKfz251"};              \
    class 39 {MY_G_B_3 vehicle="LIB_GER_unterofficer"};      \
    class 40 {MY_G_B_1 vehicle="LIB_GER_medic"};             \
    class 41 {MY_G_B_1 vehicle="LIB_GER_LAT_Rifleman"};      \
    class 42 {MY_G_B_1 vehicle="LIB_GER_ober_grenadier"};    \
    class 43 {MY_G_B_1 vehicle="LIB_GER_mgunner"};           \
    class 44 {MY_G_B_1 vehicle="LIB_GER_rifleman"};
#define MY_G_B_ARM_L side=1; faction="my_b";                 \
    class 45 {MY_G_B_3 vehicle="LIB_PzKpfwV"};               \
    class 46 {MY_G_B_3 vehicle="LIB_PzKpfwV"};
#define MY_G_B_ARM_H side=1; faction="my_b";                 \
    class 47 {MY_G_B_3 vehicle="LIB_PzKpfwVI_E_TARN51C"};
#define MY_G_B_AIR side=1; faction="my_b";                   \
    class 48 {MY_G_B_4 vehicle="LIB_FW190F8_2"};

#define MY_G_I_INF_8 side=2; faction="my_i";                 \
    class 49 {MY_G_I_3 vehicle="LIB_US_SMGunner"};           \
    class 50 {MY_G_I_1 vehicle="LIB_US_Medic"};              \
    class 51 {MY_G_I_1 vehicle="LIB_US_AT_Soldier"};         \
    class 52 {MY_G_I_1 vehicle="LIB_US_Grenadier"};          \
    class 53 {MY_G_I_2 vehicle="LIB_US_Corporal"};           \
    class 54 {MY_G_I_1 vehicle="LIB_US_MGunner"};            \
    class 55 {MY_G_I_1 vehicle="LIB_US_Rifleman"};           \
    class 56 {MY_G_I_1 vehicle="LIB_US_Rifleman"};
#define MY_G_I_INF_6 side=2; faction="my_i";                 \
    class 57 {MY_G_I_3 vehicle="LIB_US_SMGunner"};           \
    class 58 {MY_G_I_1 vehicle="LIB_US_Medic"};              \
    class 59 {MY_G_I_1 vehicle="LIB_US_AT_Soldier"};         \
    class 60 {MY_G_I_1 vehicle="LIB_US_Grenadier"};          \
    class 61 {MY_G_I_1 vehicle="LIB_US_MGunner"};            \
    class 62 {MY_G_I_1 vehicle="LIB_US_Rifleman"};
#define MY_G_I_INF_4 side=2; faction="my_i";                 \
    class 63 {MY_G_I_3 vehicle="LIB_US_SMGunner"};           \
    class 64 {MY_G_I_1 vehicle="LIB_US_AT_Soldier"};         \
    class 65 {MY_G_I_1 vehicle="LIB_US_Grenadier"};          \
    class 66 {MY_G_I_1 vehicle="LIB_US_MGunner"};
#define MY_G_I_INF_HQ side=2; faction="my_i";                \
    class 67 {MY_G_I_1 vehicle="LIB_US_First_Lieutenant"};   \
    class 68 {MY_G_I_3 vehicle="LIB_US_SMGunner"};           \
    class 69 {MY_G_I_1 vehicle="LIB_US_Medic"};              \
    class 70 {MY_G_I_1 vehicle="LIB_US_Radioman"};
#define MY_G_I_SF_AT side=2; faction="my_i";                 \
    class 71 {MY_G_I_2 vehicle="LIB_US_Corporal"};           \
    class 72 {MY_G_I_1 vehicle="LIB_US_AT_Soldier"};         \
    class 73 {MY_G_I_1 vehicle="LIB_US_AT_Soldier"};
#define MY_G_I_SF_MG side=2; faction="my_i";                 \
    class 74 {MY_G_I_2 vehicle="LIB_US_Corporal"};           \
    class 75 {MY_G_I_1 vehicle="LIB_US_MGunner"};            \
    class 76 {MY_G_I_1 vehicle="LIB_US_MGunner"};
#define MY_G_I_SF_SNIPER side=2; faction="my_i";             \
    class 77 {MY_G_I_3 vehicle="LIB_US_Sniper"};
#define MY_G_I_MOT_INF side=2; faction="my_i";               \
    class 78 {MY_G_I_1 vehicle="LIB_US_GMC_Open"};           \
    class 79 {MY_G_I_3 vehicle="LIB_US_SMGunner"};           \
    class 80 {MY_G_I_1 vehicle="LIB_US_Medic"};              \
    class 81 {MY_G_I_1 vehicle="LIB_US_AT_Soldier"};         \
    class 82 {MY_G_I_1 vehicle="LIB_US_Grenadier"};          \
    class 83 {MY_G_I_2 vehicle="LIB_US_Corporal"};           \
    class 84 {MY_G_I_1 vehicle="LIB_US_MGunner"};            \
    class 85 {MY_G_I_1 vehicle="LIB_US_Rifleman"};           \
    class 86 {MY_G_I_1 vehicle="LIB_US_Rifleman"};
#define MY_G_I_MEC_INF side=2; faction="my_i";               \
    class 87 {MY_G_I_1 vehicle="LIB_US_M3_Halftrack"};       \
    class 88 {MY_G_I_3 vehicle="LIB_US_SMGunner"};           \
    class 89 {MY_G_I_1 vehicle="LIB_US_Medic"};              \
    class 90 {MY_G_I_1 vehicle="LIB_US_AT_Soldier"};         \
    class 91 {MY_G_I_1 vehicle="LIB_US_Grenadier"};          \
    class 92 {MY_G_I_1 vehicle="LIB_US_MGunner"};            \
    class 93 {MY_G_I_1 vehicle="LIB_US_Rifleman"};
#define MY_G_I_ARM_H side=2; faction="my_i";                 \
    class 94 {MY_G_I_3 vehicle="LIB_M4A3_75"};               \
    class 95 {MY_G_I_3 vehicle="LIB_M4A3_75"};
#define MY_G_I_AIR side=2; faction="my_i";                   \
    class 96 {MY_G_I_4 vehicle="LIB_US_P39"};

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
                class my_g_0 {MY_G_B_INF_8};
                class my_g_1 {MY_G_B_INF_8};
                class my_g_2 {MY_G_B_INF_6};
                class my_g_3 {MY_G_B_INF_4};
                class my_g_4 {MY_G_B_INF_HQ};
            };
            class Motorized {
                class my_g_5 {MY_G_B_MOT_INF};
            };
            class Mechanized {
                class my_g_6 {MY_G_B_MEC_INF};
            };
            class Armored {
                class my_g_7 {MY_G_B_ARM_L};
                class my_g_8 {MY_G_B_ARM_H};
            };
            class SpecOps {
                class my_g_9 {MY_G_B_SF_MG};
                class my_g_10 {MY_G_B_SF_AT};
                class my_g_11 {MY_G_B_SF_SNIPER};
            };
        };
    };
    class Indep {
        class my_i {
            name="My IND";
            class Infantry {
                class my_g_12 {MY_G_I_INF_8};
                class my_g_13 {MY_G_I_INF_8};
                class my_g_14 {MY_G_I_INF_6};
                class my_g_15 {MY_G_I_INF_4};
                class my_g_16 {MY_G_I_INF_HQ};
            };
            class Motorized {
                class my_g_17 {MY_G_I_MOT_INF};
            };
            class Mechanized {
                class my_g_18 {MY_G_I_MEC_INF};
            };
            class Armored {
                class my_g_19 {MY_G_I_ARM_H};
            };
            class SpecOps {
                class my_g_20 {MY_G_I_SF_AT};
                class my_g_21 {MY_G_I_SF_MG};
                class my_g_22 {MY_G_I_SF_SNIPER};
            };
        };
    };
};
