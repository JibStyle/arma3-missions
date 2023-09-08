#define MY_O_3(UNIT)        \
    class 1 { id=1; UNIT }; \
    class 2 { id=2; UNIT }; \
    class 3 { id=3; UNIT };
#define MY_O_4(UNIT)        \
    class 1 { id=1; UNIT }; \
    class 2 { id=2; UNIT }; \
    class 3 { id=3; UNIT }; \
    class 4 { id=4; UNIT };

// insignia=__EVAL(getMissionPath "logo-alpha-512.paa"); \
// colorInsignia[]={0,0,0,1};                 \

#define MY_O_D_B                              \
    insignia=__EVAL(getMissionPath "logo-roundrect-color-1c-512.paa"); \
    texture=__EVAL(getMissionPath "logo-alpha-512.paa"); \
    textShort="JTF Ignition";                 \
    text="Joint Task Force Ignition";         \
    description="NATO and Livonian Defense Force conducting joint operations in the Nadbór region.";
#define MY_O_D_I                              \
    textShort="INDFOR";                       \
    text="INDFOR";                            \
    description="";
#define MY_O_D_O                              \
    textShort="OPFOR";                        \
    text="OPFOR";                             \
    description="";

#define MY_O_B side="West"; commander="NATOMen";
#define MY_O_I side="Resistance"; commander="EnochMen";
#define MY_O_O side="East"; commander="EnochMen"; // RussianMen

#define MY_O_BT size="Brigade";   type="MechanizedInfantry";
#define MY_O_RT size="Regiment";  type="MechanizedInfantry";
#define MY_O_SN size="Squadron";  commanderRank="MAJOR";
#define MY_O_F  size="Troop";     idType=2;
#define MY_O_BN size="Battalion"; commanderRank="MAJOR";
#define MY_O_C  size="Company";   idType=2;
#define MY_O_P  size="Platoon";
#define MY_O_S  size="Squad";

#define MY_O_INF type="Infantry";
#define MY_O_MEC type="MechanizedInfantry";
#define MY_O_ARM type="Armored";
#define MY_O_ART type="Artillery";
#define MY_O_SUP type="Support";
#define MY_O_REC type="Recon";
#define MY_O_HEL type="Helicopter";
#define MY_O_PLA type="Fighter";
#define MY_O_UAV type="UAV";
#define MY_O_AIR type="CombatAviation";

#define MY_O_B_BT    MY_O_B MY_O_BT
#define MY_O_B_RT    MY_O_B MY_O_RT
#define MY_O_B_B_AIR MY_O_B MY_O_SN MY_O_AIR
#define MY_O_B_B_ARM MY_O_B MY_O_BN MY_O_ARM
#define MY_O_B_B_ART MY_O_B MY_O_BN MY_O_ART
#define MY_O_B_B_HEL MY_O_B MY_O_SN MY_O_HEL
#define MY_O_B_B_INF MY_O_B MY_O_BN MY_O_INF
#define MY_O_B_B_MEC MY_O_B MY_O_BN MY_O_MEC
#define MY_O_B_B_PLA MY_O_B MY_O_SN MY_O_PLA
#define MY_O_B_B_REC MY_O_B MY_O_SN MY_O_REC
#define MY_O_B_B_SUP MY_O_B MY_O_BN MY_O_SUP
#define MY_O_B_B_UAV MY_O_B MY_O_SN MY_O_UAV
#define MY_O_B_C_AIR MY_O_B MY_O_F  MY_O_AIR MY_O_4(MY_O_B_P_AIR)
#define MY_O_B_C_ARM MY_O_B MY_O_C  MY_O_ARM MY_O_4(MY_O_B_P_ARM)
#define MY_O_B_C_ART MY_O_B MY_O_C  MY_O_ART MY_O_4(MY_O_B_P_ART)
#define MY_O_B_C_HEL MY_O_B MY_O_F  MY_O_HEL MY_O_4(MY_O_B_P_HEL)
#define MY_O_B_C_INF MY_O_B MY_O_C  MY_O_INF MY_O_4(MY_O_B_P_INF)
#define MY_O_B_C_MEC MY_O_B MY_O_C  MY_O_MEC MY_O_4(MY_O_B_P_MEC)
#define MY_O_B_C_PLA MY_O_B MY_O_F  MY_O_PLA MY_O_4(MY_O_B_P_PLA)
#define MY_O_B_C_REC MY_O_B MY_O_C  MY_O_REC MY_O_4(MY_O_B_P_REC)
#define MY_O_B_C_SUP MY_O_B MY_O_C  MY_O_SUP MY_O_4(MY_O_B_P_SUP)
#define MY_O_B_C_UAV MY_O_B MY_O_F  MY_O_UAV MY_O_4(MY_O_B_P_UAV)
#define MY_O_B_P_AIR MY_O_B MY_O_P  MY_O_AIR MY_O_4(MY_O_B_S_AIR)
#define MY_O_B_P_ARM MY_O_B MY_O_P  MY_O_ARM MY_O_4(MY_O_B_S_ARM)
#define MY_O_B_P_ART MY_O_B MY_O_P  MY_O_ART MY_O_4(MY_O_B_S_ART)
#define MY_O_B_P_HEL MY_O_B MY_O_P  MY_O_HEL MY_O_4(MY_O_B_S_HEL)
#define MY_O_B_P_INF MY_O_B MY_O_P  MY_O_INF MY_O_4(MY_O_B_S_INF)
#define MY_O_B_P_MEC MY_O_B MY_O_P  MY_O_MEC MY_O_4(MY_O_B_S_MEC)
#define MY_O_B_P_PLA MY_O_B MY_O_P  MY_O_PLA MY_O_4(MY_O_B_S_PLA)
#define MY_O_B_P_REC MY_O_B MY_O_P  MY_O_REC MY_O_4(MY_O_B_S_REC)
#define MY_O_B_P_SUP MY_O_B MY_O_P  MY_O_SUP MY_O_4(MY_O_B_S_SUP)
#define MY_O_B_P_UAV MY_O_B MY_O_P  MY_O_UAV MY_O_4(MY_O_B_S_UAV)
#define MY_O_B_S_AIR MY_O_B MY_O_S  MY_O_AIR
#define MY_O_B_S_ARM MY_O_B MY_O_S  MY_O_ARM
#define MY_O_B_S_ART MY_O_B MY_O_S  MY_O_ART
#define MY_O_B_S_HEL MY_O_B MY_O_S  MY_O_HEL
#define MY_O_B_S_INF MY_O_B MY_O_S  MY_O_INF
#define MY_O_B_S_MEC MY_O_B MY_O_S  MY_O_MEC
#define MY_O_B_S_PLA MY_O_B MY_O_S  MY_O_PLA
#define MY_O_B_S_REC MY_O_B MY_O_S  MY_O_REC
#define MY_O_B_S_SUP MY_O_B MY_O_S  MY_O_SUP
#define MY_O_B_S_UAV MY_O_B MY_O_S  MY_O_UAV

#define MY_O_I_BT    MY_O_I MY_O_BT
#define MY_O_I_RT    MY_O_I MY_O_RT
#define MY_O_I_B_AIR MY_O_I MY_O_SN MY_O_AIR
#define MY_O_I_B_ARM MY_O_I MY_O_BN MY_O_ARM
#define MY_O_I_B_ART MY_O_I MY_O_BN MY_O_ART
#define MY_O_I_B_HEL MY_O_I MY_O_SN MY_O_HEL
#define MY_O_I_B_INF MY_O_I MY_O_BN MY_O_INF
#define MY_O_I_B_MEC MY_O_I MY_O_BN MY_O_MEC
#define MY_O_I_B_PLA MY_O_I MY_O_SN MY_O_PLA
#define MY_O_I_B_REC MY_O_I MY_O_SN MY_O_REC
#define MY_O_I_B_SUP MY_O_I MY_O_BN MY_O_SUP
#define MY_O_I_B_UAV MY_O_I MY_O_SN MY_O_UAV
#define MY_O_I_C_AIR MY_O_I MY_O_F  MY_O_AIR MY_O_4(MY_O_I_P_AIR)
#define MY_O_I_C_ARM MY_O_I MY_O_C  MY_O_ARM MY_O_4(MY_O_I_P_ARM)
#define MY_O_I_C_ART MY_O_I MY_O_C  MY_O_ART MY_O_4(MY_O_I_P_ART)
#define MY_O_I_C_HEL MY_O_I MY_O_F  MY_O_HEL MY_O_4(MY_O_I_P_HEL)
#define MY_O_I_C_INF MY_O_I MY_O_C  MY_O_INF MY_O_4(MY_O_I_P_INF)
#define MY_O_I_C_MEC MY_O_I MY_O_C  MY_O_MEC MY_O_4(MY_O_I_P_MEC)
#define MY_O_I_C_PLA MY_O_I MY_O_F  MY_O_PLA MY_O_4(MY_O_I_P_PLA)
#define MY_O_I_C_REC MY_O_I MY_O_C  MY_O_REC MY_O_4(MY_O_I_P_REC)
#define MY_O_I_C_SUP MY_O_I MY_O_C  MY_O_SUP MY_O_4(MY_O_I_P_SUP)
#define MY_O_I_C_UAV MY_O_I MY_O_F  MY_O_UAV MY_O_4(MY_O_I_P_UAV)
#define MY_O_I_P_AIR MY_O_I MY_O_P  MY_O_AIR MY_O_4(MY_O_I_S_AIR)
#define MY_O_I_P_ARM MY_O_I MY_O_P  MY_O_ARM MY_O_4(MY_O_I_S_ARM)
#define MY_O_I_P_ART MY_O_I MY_O_P  MY_O_ART MY_O_4(MY_O_I_S_ART)
#define MY_O_I_P_HEL MY_O_I MY_O_P  MY_O_HEL MY_O_4(MY_O_I_S_HEL)
#define MY_O_I_P_INF MY_O_I MY_O_P  MY_O_INF MY_O_4(MY_O_I_S_INF)
#define MY_O_I_P_MEC MY_O_I MY_O_P  MY_O_MEC MY_O_4(MY_O_I_S_MEC)
#define MY_O_I_P_PLA MY_O_I MY_O_P  MY_O_PLA MY_O_4(MY_O_I_S_PLA)
#define MY_O_I_P_REC MY_O_I MY_O_P  MY_O_REC MY_O_4(MY_O_I_S_REC)
#define MY_O_I_P_SUP MY_O_I MY_O_P  MY_O_SUP MY_O_4(MY_O_I_S_SUP)
#define MY_O_I_P_UAV MY_O_I MY_O_P  MY_O_UAV MY_O_4(MY_O_I_S_UAV)
#define MY_O_I_S_AIR MY_O_I MY_O_S  MY_O_AIR
#define MY_O_I_S_ARM MY_O_I MY_O_S  MY_O_ARM
#define MY_O_I_S_ART MY_O_I MY_O_S  MY_O_ART
#define MY_O_I_S_HEL MY_O_I MY_O_S  MY_O_HEL
#define MY_O_I_S_INF MY_O_I MY_O_S  MY_O_INF
#define MY_O_I_S_MEC MY_O_I MY_O_S  MY_O_MEC
#define MY_O_I_S_PLA MY_O_I MY_O_S  MY_O_PLA
#define MY_O_I_S_REC MY_O_I MY_O_S  MY_O_REC
#define MY_O_I_S_SUP MY_O_I MY_O_S  MY_O_SUP
#define MY_O_I_S_UAV MY_O_I MY_O_S  MY_O_UAV

#define MY_O_O_BT    MY_O_O MY_O_BT
#define MY_O_O_RT    MY_O_O MY_O_RT
#define MY_O_O_B_AIR MY_O_O MY_O_SN MY_O_AIR
#define MY_O_O_B_ARM MY_O_O MY_O_BN MY_O_ARM
#define MY_O_O_B_ART MY_O_O MY_O_BN MY_O_ART
#define MY_O_O_B_HEL MY_O_O MY_O_SN MY_O_HEL
#define MY_O_O_B_INF MY_O_O MY_O_BN MY_O_INF
#define MY_O_O_B_MEC MY_O_O MY_O_BN MY_O_MEC
#define MY_O_O_B_PLA MY_O_O MY_O_SN MY_O_PLA
#define MY_O_O_B_REC MY_O_O MY_O_SN MY_O_REC
#define MY_O_O_B_SUP MY_O_O MY_O_BN MY_O_SUP
#define MY_O_O_B_UAV MY_O_O MY_O_SN MY_O_UAV
#define MY_O_O_C_AIR MY_O_O MY_O_F  MY_O_AIR MY_O_4(MY_O_O_P_AIR)
#define MY_O_O_C_ARM MY_O_O MY_O_C  MY_O_ARM MY_O_4(MY_O_O_P_ARM)
#define MY_O_O_C_ART MY_O_O MY_O_C  MY_O_ART MY_O_4(MY_O_O_P_ART)
#define MY_O_O_C_HEL MY_O_O MY_O_F  MY_O_HEL MY_O_4(MY_O_O_P_HEL)
#define MY_O_O_C_INF MY_O_O MY_O_C  MY_O_INF MY_O_4(MY_O_O_P_INF)
#define MY_O_O_C_MEC MY_O_O MY_O_C  MY_O_MEC MY_O_4(MY_O_O_P_MEC)
#define MY_O_O_C_PLA MY_O_O MY_O_F  MY_O_PLA MY_O_4(MY_O_O_P_PLA)
#define MY_O_O_C_REC MY_O_O MY_O_C  MY_O_REC MY_O_4(MY_O_O_P_REC)
#define MY_O_O_C_SUP MY_O_O MY_O_C  MY_O_SUP MY_O_4(MY_O_O_P_SUP)
#define MY_O_O_C_UAV MY_O_O MY_O_F  MY_O_UAV MY_O_4(MY_O_O_P_UAV)
#define MY_O_O_P_AIR MY_O_O MY_O_P  MY_O_AIR MY_O_4(MY_O_O_S_AIR)
#define MY_O_O_P_ARM MY_O_O MY_O_P  MY_O_ARM MY_O_4(MY_O_O_S_ARM)
#define MY_O_O_P_ART MY_O_O MY_O_P  MY_O_ART MY_O_4(MY_O_O_S_ART)
#define MY_O_O_P_HEL MY_O_O MY_O_P  MY_O_HEL MY_O_4(MY_O_O_S_HEL)
#define MY_O_O_P_INF MY_O_O MY_O_P  MY_O_INF MY_O_4(MY_O_O_S_INF)
#define MY_O_O_P_MEC MY_O_O MY_O_P  MY_O_MEC MY_O_4(MY_O_O_S_MEC)
#define MY_O_O_P_PLA MY_O_O MY_O_P  MY_O_PLA MY_O_4(MY_O_O_S_PLA)
#define MY_O_O_P_REC MY_O_O MY_O_P  MY_O_REC MY_O_4(MY_O_O_S_REC)
#define MY_O_O_P_SUP MY_O_O MY_O_P  MY_O_SUP MY_O_4(MY_O_O_S_SUP)
#define MY_O_O_P_UAV MY_O_O MY_O_P  MY_O_UAV MY_O_4(MY_O_O_S_UAV)
#define MY_O_O_S_AIR MY_O_O MY_O_S  MY_O_AIR
#define MY_O_O_S_ARM MY_O_O MY_O_S  MY_O_ARM
#define MY_O_O_S_ART MY_O_O MY_O_S  MY_O_ART
#define MY_O_O_S_HEL MY_O_O MY_O_S  MY_O_HEL
#define MY_O_O_S_INF MY_O_O MY_O_S  MY_O_INF
#define MY_O_O_S_MEC MY_O_O MY_O_S  MY_O_MEC
#define MY_O_O_S_PLA MY_O_O MY_O_S  MY_O_PLA
#define MY_O_O_S_REC MY_O_O MY_O_S  MY_O_REC
#define MY_O_O_S_SUP MY_O_O MY_O_S  MY_O_SUP
#define MY_O_O_S_UAV MY_O_O MY_O_S  MY_O_UAV

class CfgORBAT {
    class jtf {
        MY_O_D_B

    };
    class b {
        MY_O_B_BT MY_O_D_B
        class 1 {
            MY_O_B_B_MEC
            id=1;
            text="%1 Combined Arms %3";
            class 1 { id=1; MY_O_B_C_INF };
            class 2 { id=2; MY_O_B_C_INF };
            class 3 { id=3; MY_O_B_C_MEC };
            class 4 { id=4; MY_O_B_C_ARM };
        };
        class 2 {
            MY_O_B_B_MEC
            id=2;
            text="%1 Combined Arms %3";
            class 5 { id=5; MY_O_B_C_INF };
            class 6 { id=6; MY_O_B_C_INF };
            class 7 { id=7; MY_O_B_C_MEC };
            class 8 { id=8; MY_O_B_C_ARM };
        };
        class 3 {
            MY_O_B_B_AIR
            id=3;
            text="%1 %2 %3";
            class 9 { id=9; MY_O_B_C_HEL };
            class 10 { id=10; MY_O_B_C_PLA };
        };
        class 4 {
            MY_O_B_B_SUP
            id=4;
            text="%1 %2 %3";
            class 11 { id=11; MY_O_B_C_SUP };
            class 12 { id=12; MY_O_B_C_SUP };
        };
    };
    class i {
        MY_O_I_BT MY_O_D_I
        class 1 {
            MY_O_I_B_MEC
            id=1;
            text="%1 Combined Arms %3";
            class 1 { id=1; MY_O_I_C_INF };
            class 2 { id=2; MY_O_I_C_INF };
            class 3 { id=3; MY_O_I_C_MEC };
            class 4 { id=4; MY_O_I_C_ARM };
        };
        class 2 {
            MY_O_I_B_MEC
            id=2;
            text="%1 Combined Arms %3";
            class 5 { id=5; MY_O_I_C_INF };
            class 6 { id=6; MY_O_I_C_INF };
            class 7 { id=7; MY_O_I_C_MEC };
            class 8 { id=8; MY_O_I_C_ARM };
        };
        class 3 {
            MY_O_I_B_AIR
            id=3;
            text="%1 %2 %3";
            class 9 { id=9; MY_O_I_C_HEL };
            class 10 { id=10; MY_O_I_C_PLA };
        };
        class 4 {
            MY_O_I_B_SUP
            id=4;
            text="%1 %2 %3";
            class 11 { id=11; MY_O_I_C_SUP };
            class 12 { id=12; MY_O_I_C_SUP };
        };
    };
    class o {
        MY_O_O_BT MY_O_D_O
        class 1 {
            MY_O_O_B_MEC
            id=1;
            text="%1 Combined Arms %3";
            class 1 { id=1; MY_O_O_C_INF };
            class 2 { id=2; MY_O_O_C_INF };
            class 3 { id=3; MY_O_O_C_MEC };
            class 4 { id=4; MY_O_O_C_ARM };
        };
        class 2 {
            MY_O_O_B_MEC
            id=2;
            text="%1 Combined Arms %3";
            class 5 { id=5; MY_O_O_C_INF };
            class 6 { id=6; MY_O_O_C_INF };
            class 7 { id=7; MY_O_O_C_MEC };
            class 8 { id=8; MY_O_O_C_ARM };
        };
        class 3 {
            MY_O_O_B_AIR
            id=3;
            text="%1 %2 %3";
            class 9 { id=9; MY_O_O_C_HEL };
            class 10 { id=10; MY_O_O_C_PLA };
        };
        class 4 {
            MY_O_O_B_SUP
            id=4;
            text="%1 %2 %3";
            class 11 { id=11; MY_O_O_C_SUP };
            class 12 { id=12; MY_O_O_C_SUP };
        };
    };
};
