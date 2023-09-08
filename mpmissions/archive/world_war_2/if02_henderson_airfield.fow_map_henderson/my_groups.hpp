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

#define MY_G_B_INF_S side=1; faction="my_b";                 \
    class 0 {MY_G_B_3 vehicle="fow_s_ija_nco"};              \
    class 1 {MY_G_B_1 vehicle="fow_s_ija_medic"};            \
    class 2 {MY_G_B_1 vehicle="fow_s_ija_rifleman_at"};      \
    class 3 {MY_G_B_1 vehicle="fow_s_ija_rifleman"};         \
    class 4 {MY_G_B_1 vehicle="fow_s_ija_type99_gunner"};    \
    class 5 {MY_G_B_1 vehicle="fow_s_ija_type99_asst"};      \
    class 6 {MY_G_B_1 vehicle="fow_s_ija_rifleman"};         \
    class 7 {MY_G_B_1 vehicle="fow_s_ija_rifleman"};
#define MY_G_B_INF_AT side=1; faction="my_b";                \
    class 16 {MY_G_B_3 vehicle="fow_s_ija_nco"};             \
    class 17 {MY_G_B_1 vehicle="fow_s_ija_rifleman_at"};     \
    class 18 {MY_G_B_1 vehicle="fow_s_ija_rifleman"};        \
    class 19 {MY_G_B_1 vehicle="fow_s_ija_rifleman"};
#define MY_G_B_INF_MG side=1; faction="my_b";                \
    class 20 {MY_G_B_3 vehicle="fow_s_ija_nco"};             \
    class 21 {MY_G_B_1 vehicle="fow_s_ija_type99_gunner"};   \
    class 22 {MY_G_B_1 vehicle="fow_s_ija_type99_gunner"};   \
    class 23 {MY_G_B_1 vehicle="fow_s_ija_type99_asst"};
#define MY_G_B_INF_PL side=1; faction="my_b";                \
    class 24 {MY_G_B_4 vehicle="fow_s_ija_officer"};         \
    class 25 {MY_G_B_3 vehicle="fow_s_ija_nco"};             \
    class 26 {MY_G_B_1 vehicle="fow_s_ija_medic"};
#define MY_G_B_ARM side=1; faction="my_b";                   \
    class 38 {MY_G_B_3 vehicle="fow_ija_type95_HaGo_2_ija"}; \
    class 39 {MY_G_B_3 vehicle="fow_ija_type95_HaGo_2_ija"};
#define MY_G_B_MOT side=1; faction="my_b";                   \
    class 40 {MY_G_B_3 vehicle="fow_s_ija_nco"};             \
    class 41 {MY_G_B_1 vehicle="fow_v_type97_truck_ija"};    \
    class 42 {MY_G_B_1 vehicle="fow_s_ija_medic"};           \
    class 43 {MY_G_B_1 vehicle="fow_s_ija_rifleman_at"};     \
    class 44 {MY_G_B_1 vehicle="fow_s_ija_rifleman"};        \
    class 45 {MY_G_B_1 vehicle="fow_s_ija_type99_gunner"};   \
    class 46 {MY_G_B_1 vehicle="fow_s_ija_type99_asst"};     \
    class 47 {MY_G_B_1 vehicle="fow_s_ija_rifleman"};        \
    class 48 {MY_G_B_1 vehicle="fow_s_ija_rifleman"};

#define MY_G_I_INF_S side=2; faction="my_i";                 \
    class 49 {MY_G_I_3 vehicle="fow_s_usmc_nco"};            \
    class 50 {MY_G_I_1 vehicle="fow_s_usmc_medic"};          \
    class 51 {MY_G_I_1 vehicle="fow_s_usmc_at"};             \
    class 52 {MY_G_I_1 vehicle="fow_s_usmc_at_asst"};        \
    class 53 {MY_G_I_2 vehicle="fow_s_usmc_teamleader"};     \
    class 54 {MY_G_I_1 vehicle="fow_s_usmc_bar_gunner"};     \
    class 55 {MY_G_I_1 vehicle="fow_s_usmc_bar_asst"};       \
    class 56 {MY_G_I_1 vehicle="fow_s_usmc_rifleman"};
#define MY_G_I_INF_MG side=2; faction="my_i";                \
    class 57 {MY_G_I_3 vehicle="fow_s_usmc_nco"};            \
    class 58 {MY_G_I_1 vehicle="fow_s_usmc_m1919a6_gunner"}; \
    class 59 {MY_G_I_1 vehicle="fow_s_usmc_m1919a6_gunner"}; \
    class 60 {MY_G_I_1 vehicle="fow_s_usmc_m1919a6_asst"};
#define MY_G_I_INF_PL side=2; faction="my_i";                \
    class 65 {MY_G_I_4 vehicle="fow_s_usmc_officer"};        \
    class 66 {MY_G_I_3 vehicle="fow_s_usmc_nco"};            \
    class 67 {MY_G_I_1 vehicle="fow_s_usmc_medic"};
#define MY_G_I_MEC side=2; faction="my_i";                   \
    class 68 {MY_G_I_3 vehicle="fow_s_usmc_nco"};            \
    class 69 {MY_G_I_1 vehicle="fow_v_lvta2_usmc"};          \
    class 70 {MY_G_I_1 vehicle="fow_s_usmc_medic"};          \
    class 71 {MY_G_I_1 vehicle="fow_s_usmc_at"};             \
    class 72 {MY_G_I_1 vehicle="fow_s_usmc_at_asst"};        \
    class 73 {MY_G_I_2 vehicle="fow_s_usmc_teamleader"};     \
    class 74 {MY_G_I_1 vehicle="fow_s_usmc_bar_gunner"};     \
    class 75 {MY_G_I_1 vehicle="fow_s_usmc_bar_asst"};       \
    class 76 {MY_G_I_1 vehicle="fow_s_usmc_rifleman"};
#define MY_G_I_MOT side=2; faction="my_i";                   \
    class 77 {MY_G_I_4 vehicle="fow_s_usmc_officer"};        \
    class 78 {MY_G_I_1 vehicle="fow_v_willys_usmc"};         \
    class 79 {MY_G_I_3 vehicle="fow_s_usmc_nco"};
#define MY_G_I_ARM_1 side=2; faction="my_i";                 \
    class 80 {MY_G_I_3 vehicle="fow_v_m4a2_usmc"};           \
    class 81 {MY_G_I_3 vehicle="fow_v_m4a2_usmc"};
#define MY_G_I_ARM_2 side=2; faction="my_i";                 \
    class 82 {MY_G_I_3 vehicle="fow_v_m5a1_usmc"};           \
    class 83 {MY_G_I_3 vehicle="fow_v_m5a1_usmc"};

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
                class my_g_2 {MY_G_B_INF_MG};
                class my_g_3 {MY_G_B_INF_PL};
            };
            class Motorized {
                class my_g_5 {MY_G_B_MOT};
            };
            class Mechanized {
            };
            class Armored {
                class my_g_4 {MY_G_B_ARM};
            };
            class SpecOps {
            };
        };
    };
    class Indep {
        class my_i {
            name="My IND";
            class Infantry {
                class my_g_6 {MY_G_I_INF_S};
                class my_g_7 {MY_G_I_INF_MG};
                class my_g_8 {MY_G_I_INF_PL};
            };
            class Motorized {
                class my_g_10 {MY_G_I_MOT};
            };
            class Mechanized {
                class my_g_9 {MY_G_I_MEC};
            };
            class Armored {
                class my_g_11 {MY_G_I_ARM_1};
                class my_g_12 {MY_G_I_ARM_2};
            };
            class SpecOps {
            };
        };
    };
};
