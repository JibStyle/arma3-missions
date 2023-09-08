#define MY_G_W_1 side=1; rank="PRIVATE";
#define MY_G_W_2 side=1; rank="CORPORAL";
#define MY_G_W_3 side=1; rank="SERGEANT";
#define MY_G_W_4 side=1; rank="LIEUTENANT";
#define MY_G_E_1 side=0; rank="PRIVATE";
#define MY_G_E_2 side=0; rank="CORPORAL";
#define MY_G_E_3 side=0; rank="SERGEANT";
#define MY_G_E_4 side=0; rank="LIEUTENANT";

#define MY_G_W_INF_S side=1; faction="my_w";                           \
    class 0 {MY_G_W_3 vehicle="CUP_B_US_Soldier_SL_OCP";};             \
    class 1 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 2 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AR_OCP";};             \
    class 4 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AT_OCP";};             \
    class 5 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 6 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 7 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AR_OCP";};             \
    class 8 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AAR_OCP";};
#define MY_G_W_INF_S_W side=1; faction="my_w";                         \
    class 0 {MY_G_W_3 vehicle="CUP_B_US_Soldier_SL_OCP";};             \
    class 1 {MY_G_W_1 vehicle="CUP_B_US_Soldier_MG_OCP";};             \
    class 2 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AMG_OCP";};            \
    class 4 {MY_G_W_1 vehicle="CUP_B_US_Soldier_MG_OCP";};             \
    class 5 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 6 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AMG_OCP";};            \
    class 7 {MY_G_W_1 vehicle="CUP_B_US_Soldier_LAT_OCP";};
#define MY_G_W_INF_T_MAT side=1; faction="my_w";                       \
    class 0 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 1 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AT_OCP";};             \
    class 2 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AT_OCP";};             \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AAT_OCP";};
#define MY_G_W_INF_T_MG side=1; faction="my_w";                        \
    class 0 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 1 {MY_G_W_1 vehicle="CUP_B_US_Soldier_MG_OCP";};             \
    class 2 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AMG_OCP";};
#define MY_G_W_INF_T_AR side=1; faction="my_w";                        \
    class 0 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 1 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AR_OCP";};             \
    class 2 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AAR_OCP";};
#define MY_G_W_INF_T_SUP side=1; faction="my_w";                       \
    class 0 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 1 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 2 {MY_G_W_1 vehicle="CUP_B_US_Soldier_Marksman_OCP";};       \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Medic_OCP";};
#define MY_G_W_INF_T_HAT side=1; faction="my_w";                       \
    class 0 {MY_G_W_2 vehicle="CUP_B_US_Soldier_HAT_OCP";};            \
    class 1 {MY_G_W_1 vehicle="CUP_B_US_Soldier_HAT_OCP";};            \
    class 2 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AHAT_OCP";};
#define MY_G_W_INF_T_SNI side=1; faction="my_w";                       \
    class 0 {MY_G_W_2 vehicle="CUP_B_US_Sniper";};                     \
    class 1 {MY_G_W_1 vehicle="CUP_B_US_Sniper";};                     \
    class 2 {MY_G_W_1 vehicle="CUP_B_US_Spotter";};
#define MY_G_W_MOT_S side=1; faction="my_w";                           \
    class 0 {MY_G_W_3 vehicle="CUP_B_US_Soldier_SL_OCP";};             \
    class 1 {MY_G_W_1 vehicle="CUP_B_nM1025_M2_USA_WDL";};             \
    class 2 {MY_G_W_1 vehicle="CUP_B_nM1025_Mk19_USA_WDL";};           \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AT_OCP";};             \
    class 4 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 5 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 6 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AAT_OCP";};            \
    class 7 {MY_G_W_1 vehicle="CUP_B_US_Soldier_Marksman_OCP";};
#define MY_G_W_MOT_TOW side=1; faction="my_w";                         \
    class 0 {MY_G_W_3 vehicle="CUP_B_US_Soldier_SL_OCP";};             \
    class 1 {MY_G_W_1 vehicle="CUP_B_nM1036_TOW_USA_WDL";};            \
    class 2 {MY_G_W_1 vehicle="CUP_B_nM1036_TOW_USA_WDL";};            \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AR_OCP";};
#define MY_G_W_MEC_M2 side=1; faction="my_w";                          \
    class 0 {MY_G_W_3 vehicle="CUP_B_US_Soldier_SL_OCP";};             \
    class 1 {MY_G_W_1 vehicle="CUP_B_M1126_ICV_M2_Woodland";};         \
    class 2 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AR_OCP";};             \
    class 4 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AT_OCP";};             \
    class 5 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 6 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 7 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AR_OCP";};             \
    class 8 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 9 {MY_G_W_1 vehicle="CUP_B_US_Soldier_Marksman_OCP";};
#define MY_G_W_MEC_M19 side=1; faction="my_w";                         \
    class 0 {MY_G_W_3 vehicle="CUP_B_US_Soldier_SL_OCP";};             \
    class 1 {MY_G_W_1 vehicle="CUP_B_M1126_ICV_MK19_Woodland";};       \
    class 2 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 4 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AR_OCP";};             \
    class 5 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AT_OCP";};             \
    class 6 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 7 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 8 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AR_OCP";};             \
    class 9 {MY_G_W_1 vehicle="CUP_B_US_Soldier_Marksman_OCP";};
#define MY_G_W_MEC_IFV side=1; faction="my_w";                         \
    class 0 {MY_G_W_2 vehicle="CUP_B_US_Soldier_TL_OCP";};             \
    class 1 {MY_G_W_1 vehicle="CUP_B_M2A3Bradley_USA_W";};             \
    class 2 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AR_OCP";};             \
    class 3 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 4 {MY_G_W_1 vehicle="CUP_B_US_Soldier_GL_OCP";};             \
    class 5 {MY_G_W_1 vehicle="CUP_B_US_Soldier_AT_OCP";};             \
    class 6 {MY_G_W_1 vehicle="CUP_B_US_Soldier_LAT_OCP";};
#define MY_G_W_ARM side=1; faction="my_w";                             \
    class 0 {MY_G_W_4 vehicle="CUP_B_M1A2SEP_TUSK_Woodland_US_Army";}; \
    class 1 {MY_G_W_3 vehicle="CUP_B_M1A2SEP_TUSK_Woodland_US_Army";};
#define MY_G_W_REC side=1; faction="my_w";                             \
    class 0 {MY_G_W_3 vehicle="CUP_B_US_SpecOps_TL";};                 \
    class 1 {MY_G_W_2 vehicle="CUP_B_US_SpecOps_MG";};                 \
    class 2 {MY_G_W_2 vehicle="CUP_B_US_SpecOps_Assault";};            \
    class 3 {MY_G_W_2 vehicle="CUP_B_US_SpecOps_M";};

#define MY_G_E_INF_S side=0; faction="my_e";                             \
    class 0 {MY_G_E_3 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_M_EMR_V2";};             \
    class 2 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_LAT_M_EMR_V2";};         \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};          \
    class 4 {MY_G_E_2 vehicle="CUP_O_RU_Soldier_TL_M_EMR_V2";};          \
    class 5 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};          \
    class 6 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_A_M_EMR_V2";};           \
    class 7 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_Medic_M_EMR_V2";};
#define MY_G_E_INF_S_ASS side=0; faction="my_e";                         \
    class 0 {MY_G_E_3 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};          \
    class 2 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};          \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AAR_M_EMR_V2";};         \
    class 4 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_Marksman_M_EMR_V2";};    \
    class 5 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};          \
    class 6 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AAT_M_EMR_V2";};         \
    class 7 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_Medic_M_EMR_V2";};
#define MY_G_E_INF_S_WEP side=0; faction="my_e";                         \
    class 0 {MY_G_E_3 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};          \
    class 2 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_GL_M_EMR_V2";};          \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};          \
    class 4 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};          \
    class 5 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AAT_M_EMR_V2";};         \
    class 6 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_A_M_EMR_V2";};           \
    class 7 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_Medic_M_EMR_V2";};
#define MY_G_E_INF_T side=0; faction="my_e";                             \
    class 0 {MY_G_E_2 vehicle="CUP_O_RU_Soldier_TL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};          \
    class 2 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_GL_M_EMR_V2";};          \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_LAT_M_EMR_V2";};
#define MY_G_E_INF_T_MAT side=0; faction="my_e";                         \
    class 0 {MY_G_E_2 vehicle="CUP_O_RU_Soldier_TL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};          \
    class 2 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};          \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AAT_M_EMR_V2";};
#define MY_G_E_INF_T_HAT side=0; faction="my_e";                         \
    class 0 {MY_G_E_2 vehicle="CUP_O_RU_Soldier_TL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_HAT_M_EMR_V2";};         \
    class 2 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_HAT_M_EMR_V2";};         \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AHAT_M_EMR_V2";};
#define MY_G_E_INF_T_AA side=0; faction="my_e";                          \
    class 0 {MY_G_E_2 vehicle="CUP_O_RU_Soldier_TL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AA_M_EMR_V2";};          \
    class 2 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AA_M_EMR_V2";};
#define MY_G_E_MOT_S side=0; faction="my_e";                             \
    class 0 {MY_G_E_3 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_Ural_RU";};                         \
    class 2 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};          \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};          \
    class 4 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_Saiga_M_EMR_V2";};       \
    class 5 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_GL_M_EMR_V2";};          \
    class 6 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_Marksman_M_EMR_V2";};    \
    class 7 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};          \
    class 8 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_Medic_M_EMR_V2";};       \
    class 9 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};          \
    class 10 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};         \
    class 11 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_GL_M_EMR_V2";};         \
    class 12 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_M_EMR_V2";};
#define MY_G_E_MOT_UAZ side=0; faction="my_e";                           \
    class 0 {MY_G_E_3 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_UAZ_MG_RU";};                       \
    class 2 {MY_G_E_1 vehicle="CUP_O_UAZ_AGS30_RU";};                    \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};
#define MY_G_E_MOT_SPG side=0; faction="my_e";                           \
    class 0 {MY_G_E_3 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_UAZ_SPG9_RU";};                     \
    class 2 {MY_G_E_1 vehicle="CUP_O_UAZ_SPG9_RU";};                     \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AR_M_EMR_V2";};
#define MY_G_E_MEC_BTR side=0; faction="my_e";                           \
    class 0 {MY_G_E_3 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_BTR80A_GREEN_RU";};                 \
    class 2 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};          \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};          \
    class 4 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};          \
    class 5 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};          \
    class 6 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_GL_M_EMR_V2";};
#define MY_G_E_MEC_BMP side=0; faction="my_e";                           \
    class 0 {MY_G_E_3 vehicle="CUP_O_RU_Soldier_SL_M_EMR_V2";};          \
    class 1 {MY_G_E_1 vehicle="CUP_O_BMP2_RU";};                         \
    class 2 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};          \
    class 3 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_MG_M_EMR_V2";};          \
    class 4 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};          \
    class 5 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_AT_M_EMR_V2";};          \
    class 6 {MY_G_E_1 vehicle="CUP_O_RU_Soldier_GL_M_EMR_V2";};
#define MY_G_E_ARM side=0; faction="my_e";                               \
    class 0 {MY_G_E_4 vehicle="CUP_O_T90_RU";};                          \
    class 1 {MY_G_E_3 vehicle="CUP_O_T90_RU";};
#define MY_G_E_REC side=0; faction="my_e";                               \
    class 0 {MY_G_E_3 vehicle="CUP_O_RU_Recon_TL_Ratnik_Summer";};       \
    class 1 {MY_G_E_2 vehicle="CUP_O_RU_Recon_LAT_Ratnik_Summer";};      \
    class 2 {MY_G_E_2 vehicle="CUP_O_RU_Recon_Marksman_Ratnik_Summer";}; \
    class 3 {MY_G_E_2 vehicle="CUP_O_RU_Recon_Medic_Ratnik_Summer";};

class CfgFactionClasses {
    class my_w {displayName="My BLU"; priority=2; side=1;};
    class my_e {displayName="My OPF"; priority=2; side=0;};
};

class CfgGroups {
    class West {
        class my_w {
            name="My BLU";
            class Infantry {
                class my_g_w_inf_0 {MY_G_W_INF_S};
                class my_g_w_inf_1 {MY_G_W_INF_S_W};
                class my_g_w_inf_2 {MY_G_W_INF_T_MAT};
                class my_g_w_inf_3 {MY_G_W_INF_T_MG};
                class my_g_w_inf_4 {MY_G_W_INF_T_AR};
                class my_g_w_inf_5 {MY_G_W_INF_T_SUP};
                class my_g_w_inf_6 {MY_G_W_INF_T_HAT};
                class my_g_w_inf_7 {MY_G_W_INF_T_SNI};
            };
            class Motorized {
                class my_g_w_mot_0 {MY_G_W_MOT_S};
                class my_g_w_mot_1 {MY_G_W_MOT_TOW};
            };
            class Mechanized {
                class my_g_w_mec_0 {MY_G_W_MEC_M2};
                class my_g_w_mec_1 {MY_G_W_MEC_M19};
                class my_g_w_mec_2 {MY_G_W_MEC_IFV};
            };
            class Armored {
                class my_g_w_arm_0 {MY_G_W_ARM};
            };
            class SpecOps {
                class my_g_w_rec_0 {MY_G_W_REC};
            };
        };
    };
    class East {
        class my_e {
            name="My OPF";
            class Infantry {
                class my_g_e_inf_0 {MY_G_E_INF_S};
                class my_g_e_inf_1 {MY_G_E_INF_S_ASS};
                class my_g_e_inf_2 {MY_G_E_INF_S_WEP};
                class my_g_e_inf_3 {MY_G_E_INF_T};
                class my_g_e_inf_4 {MY_G_E_INF_T_MAT};
                // class my_g_e_inf_5 {MY_G_E_INF_T_HAT};
                // class my_g_e_inf_6 {MY_G_E_INF_T_AA};
            };
            class Motorized {
                class my_g_e_mot_0 {MY_G_E_MOT_S};
                class my_g_e_mot_1 {MY_G_E_MOT_UAZ};
                class my_g_e_mot_2 {MY_G_E_MOT_SPG};
            };
            class Mechanized {
                class my_g_e_mec_0 {MY_G_E_MEC_BTR};
                class my_g_e_mec_1 {MY_G_E_MEC_BMP};
            };
            class Armored {
                class my_g_e_arm_0 {MY_G_E_ARM};
            };
            class SpecOps {
                class my_g_e_rec_0 {MY_G_E_REC};
            };
        };
    };
};
