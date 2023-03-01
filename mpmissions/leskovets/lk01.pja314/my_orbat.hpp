#define MY_O_3(UNIT)        \
    class 1 { id=1; UNIT }; \
    class 2 { id=2; UNIT }; \
    class 3 { id=3; UNIT };
#define MY_O_4(UNIT)        \
    class 1 { id=1; UNIT }; \
    class 2 { id=2; UNIT }; \
    class 3 { id=3; UNIT }; \
    class 4 { id=4; UNIT };

#define MY_O_W side="West"; commander="NATOMen";
#define MY_O_E side="East"; commander="CUP_Names_RussianMen";

#define MY_O_BT size="Brigade";   type="MechanizedInfantry";
#define MY_O_RT size="Regiment";  type="MechanizedInfantry";
#define MY_O_SN size="Squadron";  commanderRank="MAJOR";
#define MY_O_F  size="Troop";     idType=2; text="%1 Flight"; textShort="%1 Flt";
#define MY_O_B  size="Battalion"; commanderRank="MAJOR";
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

#define MY_O_W_BT    MY_O_W MY_O_BT
#define MY_O_W_RT    MY_O_W MY_O_RT
#define MY_O_W_B_AIR MY_O_W MY_O_SN MY_O_AIR
#define MY_O_W_B_ARM MY_O_W MY_O_B  MY_O_ARM
#define MY_O_W_B_ART MY_O_W MY_O_B  MY_O_ART
#define MY_O_W_B_HEL MY_O_W MY_O_SN MY_O_HEL
#define MY_O_W_B_INF MY_O_W MY_O_B  MY_O_INF
#define MY_O_W_B_MEC MY_O_W MY_O_B  MY_O_MEC
#define MY_O_W_B_PLA MY_O_W MY_O_SN MY_O_PLA
#define MY_O_W_B_REC MY_O_W MY_O_SN MY_O_REC
#define MY_O_W_B_SUP MY_O_W MY_O_B  MY_O_SUP
#define MY_O_W_B_UAV MY_O_W MY_O_SN MY_O_UAV
#define MY_O_W_C_AIR MY_O_W MY_O_F  MY_O_AIR MY_O_4(MY_O_W_P_AIR)
#define MY_O_W_C_ARM MY_O_W MY_O_C  MY_O_ARM MY_O_4(MY_O_W_P_ARM)
#define MY_O_W_C_ART MY_O_W MY_O_C  MY_O_ART MY_O_4(MY_O_W_P_ART)
#define MY_O_W_C_HEL MY_O_W MY_O_F  MY_O_HEL MY_O_4(MY_O_W_P_HEL)
#define MY_O_W_C_INF MY_O_W MY_O_C  MY_O_INF MY_O_4(MY_O_W_P_INF)
#define MY_O_W_C_MEC MY_O_W MY_O_C  MY_O_MEC MY_O_4(MY_O_W_P_MEC)
#define MY_O_W_C_PLA MY_O_W MY_O_F  MY_O_PLA MY_O_4(MY_O_W_P_PLA)
#define MY_O_W_C_REC MY_O_W MY_O_C  MY_O_REC MY_O_4(MY_O_W_P_REC)
#define MY_O_W_C_SUP MY_O_W MY_O_C  MY_O_SUP MY_O_4(MY_O_W_P_SUP)
#define MY_O_W_C_UAV MY_O_W MY_O_F  MY_O_UAV MY_O_4(MY_O_W_P_UAV)
#define MY_O_W_P_AIR MY_O_W MY_O_P  MY_O_AIR MY_O_4(MY_O_W_S_AIR)
#define MY_O_W_P_ARM MY_O_W MY_O_P  MY_O_ARM MY_O_4(MY_O_W_S_ARM)
#define MY_O_W_P_ART MY_O_W MY_O_P  MY_O_ART MY_O_4(MY_O_W_S_ART)
#define MY_O_W_P_HEL MY_O_W MY_O_P  MY_O_HEL MY_O_4(MY_O_W_S_HEL)
#define MY_O_W_P_INF MY_O_W MY_O_P  MY_O_INF MY_O_4(MY_O_W_S_INF)
#define MY_O_W_P_MEC MY_O_W MY_O_P  MY_O_MEC MY_O_4(MY_O_W_S_MEC)
#define MY_O_W_P_PLA MY_O_W MY_O_P  MY_O_PLA MY_O_4(MY_O_W_S_PLA)
#define MY_O_W_P_REC MY_O_W MY_O_P  MY_O_REC MY_O_4(MY_O_W_S_REC)
#define MY_O_W_P_SUP MY_O_W MY_O_P  MY_O_SUP MY_O_4(MY_O_W_S_SUP)
#define MY_O_W_P_UAV MY_O_W MY_O_P  MY_O_UAV MY_O_4(MY_O_W_S_UAV)
#define MY_O_W_S_AIR MY_O_W MY_O_S  MY_O_AIR
#define MY_O_W_S_ARM MY_O_W MY_O_S  MY_O_ARM
#define MY_O_W_S_ART MY_O_W MY_O_S  MY_O_ART
#define MY_O_W_S_HEL MY_O_W MY_O_S  MY_O_HEL
#define MY_O_W_S_INF MY_O_W MY_O_S  MY_O_INF
#define MY_O_W_S_MEC MY_O_W MY_O_S  MY_O_MEC
#define MY_O_W_S_PLA MY_O_W MY_O_S  MY_O_PLA
#define MY_O_W_S_REC MY_O_W MY_O_S  MY_O_REC
#define MY_O_W_S_SUP MY_O_W MY_O_S  MY_O_SUP
#define MY_O_W_S_UAV MY_O_W MY_O_S  MY_O_UAV

#define MY_O_E_BT    MY_O_E MY_O_BT
#define MY_O_E_RT    MY_O_E MY_O_RT
#define MY_O_E_B_AIR MY_O_E MY_O_SN MY_O_AIR
#define MY_O_E_B_ARM MY_O_E MY_O_B  MY_O_ARM
#define MY_O_E_B_ART MY_O_E MY_O_B  MY_O_ART
#define MY_O_E_B_HEL MY_O_E MY_O_SN MY_O_HEL
#define MY_O_E_B_INF MY_O_E MY_O_B  MY_O_INF
#define MY_O_E_B_MEC MY_O_E MY_O_B  MY_O_MEC
#define MY_O_E_B_PLA MY_O_E MY_O_SN MY_O_PLA
#define MY_O_E_B_REC MY_O_E MY_O_SN MY_O_REC
#define MY_O_E_B_SUP MY_O_E MY_O_B  MY_O_SUP
#define MY_O_E_B_UAV MY_O_E MY_O_SN MY_O_UAV
#define MY_O_E_C_AIR MY_O_E MY_O_F  MY_O_AIR MY_O_4(MY_O_E_P_AIR)
#define MY_O_E_C_ARM MY_O_E MY_O_C  MY_O_ARM MY_O_4(MY_O_E_P_ARM)
#define MY_O_E_C_ART MY_O_E MY_O_C  MY_O_ART MY_O_4(MY_O_E_P_ART)
#define MY_O_E_C_HEL MY_O_E MY_O_F  MY_O_HEL MY_O_4(MY_O_E_P_HEL)
#define MY_O_E_C_INF MY_O_E MY_O_C  MY_O_INF MY_O_4(MY_O_E_P_INF)
#define MY_O_E_C_MEC MY_O_E MY_O_C  MY_O_MEC MY_O_4(MY_O_E_P_MEC)
#define MY_O_E_C_PLA MY_O_E MY_O_F  MY_O_PLA MY_O_4(MY_O_E_P_PLA)
#define MY_O_E_C_REC MY_O_E MY_O_C  MY_O_REC MY_O_4(MY_O_E_P_REC)
#define MY_O_E_C_SUP MY_O_E MY_O_C  MY_O_SUP MY_O_4(MY_O_E_P_SUP)
#define MY_O_E_C_UAV MY_O_E MY_O_F  MY_O_UAV MY_O_4(MY_O_E_P_UAV)
#define MY_O_E_P_AIR MY_O_E MY_O_P  MY_O_AIR MY_O_4(MY_O_E_S_AIR)
#define MY_O_E_P_ARM MY_O_E MY_O_P  MY_O_ARM MY_O_4(MY_O_E_S_ARM)
#define MY_O_E_P_ART MY_O_E MY_O_P  MY_O_ART MY_O_4(MY_O_E_S_ART)
#define MY_O_E_P_HEL MY_O_E MY_O_P  MY_O_HEL MY_O_4(MY_O_E_S_HEL)
#define MY_O_E_P_INF MY_O_E MY_O_P  MY_O_INF MY_O_4(MY_O_E_S_INF)
#define MY_O_E_P_MEC MY_O_E MY_O_P  MY_O_MEC MY_O_4(MY_O_E_S_MEC)
#define MY_O_E_P_PLA MY_O_E MY_O_P  MY_O_PLA MY_O_4(MY_O_E_S_PLA)
#define MY_O_E_P_REC MY_O_E MY_O_P  MY_O_REC MY_O_4(MY_O_E_S_REC)
#define MY_O_E_P_SUP MY_O_E MY_O_P  MY_O_SUP MY_O_4(MY_O_E_S_SUP)
#define MY_O_E_P_UAV MY_O_E MY_O_P  MY_O_UAV MY_O_4(MY_O_E_S_UAV)
#define MY_O_E_S_AIR MY_O_E MY_O_S  MY_O_AIR
#define MY_O_E_S_ARM MY_O_E MY_O_S  MY_O_ARM
#define MY_O_E_S_ART MY_O_E MY_O_S  MY_O_ART
#define MY_O_E_S_HEL MY_O_E MY_O_S  MY_O_HEL
#define MY_O_E_S_INF MY_O_E MY_O_S  MY_O_INF
#define MY_O_E_S_MEC MY_O_E MY_O_S  MY_O_MEC
#define MY_O_E_S_PLA MY_O_E MY_O_S  MY_O_PLA
#define MY_O_E_S_REC MY_O_E MY_O_S  MY_O_REC
#define MY_O_E_S_SUP MY_O_E MY_O_S  MY_O_SUP
#define MY_O_E_S_UAV MY_O_E MY_O_S  MY_O_UAV

class CfgORBAT {
    class w {
        MY_O_W_BT
        colorInsignia[]={0,0,0,1};
        description="Balanced combined arms force organized for rapid deployment to Leskovets.";
        insignia=__EVAL(getMissionPath "wca.paa");
        text="Task Force Chillsim";
        textShort="TF Chillsim";

        class 1 {
            MY_O_W_B_MEC
            id=1;
            text="%1 Combined Arms %3";
            class 1 { id=1; MY_O_W_C_INF };
            class 2 { id=2; MY_O_W_C_INF };
            class 3 { id=3; MY_O_W_C_MEC };
            class 4 { id=4; MY_O_W_C_ARM };
        };
        class 2 {
            MY_O_W_B_MEC
            id=2;
            text="%1 Combined Arms %3";
            class 1 { id=5; MY_O_W_C_INF };
            class 2 { id=6; MY_O_W_C_INF };
            class 3 { id=7; MY_O_W_C_MEC };
            class 4 { id=8; MY_O_W_C_ARM };
        };
        class 3 {
            MY_O_W_B_AIR
            id=3;
            text="%1 %2 %3";
            class 1 { id=9; MY_O_W_C_HEL };
            class 2 { id=10; MY_O_W_C_PLA };
        };
        class 4 {
            MY_O_W_B_SUP
            id=4;
            text="%1 %2 %3";
            class 1 { id=11; MY_O_W_C_SUP };
            class 2 { id=12; MY_O_W_C_SUP };
        };
    };
    class e {
        MY_O_E_BT
        description="Modern combined arms force occupying Leskovets.";
        text="Alexandriyskaya Guards Motor Rifle Brigade";
        textShort="AFRF";

        class 1 {
            MY_O_E_B_MEC
            id=1;
            text="%1 Combined Arms %3";
            class 1 { id=1; MY_O_E_C_INF };
            class 2 { id=2; MY_O_E_C_INF };
            class 3 { id=3; MY_O_E_C_MEC };
            class 4 { id=4; MY_O_E_C_ARM };
        };
        class 2 {
            MY_O_E_B_MEC
            id=2;
            text="%1 Combined Arms %3";
            class 1 { id=5; MY_O_E_C_INF };
            class 2 { id=6; MY_O_E_C_INF };
            class 3 { id=7; MY_O_E_C_MEC };
            class 4 { id=8; MY_O_E_C_ARM };
        };
        class 3 {
            MY_O_E_B_AIR
            id=3;
            text="%1 %2 %3";
            class 1 { id=9; MY_O_E_C_HEL };
            class 2 { id=10; MY_O_E_C_PLA };
        };
        class 4 {
            MY_O_E_B_SUP
            id=4;
            text="%1 %2 %3";
            class 1 { id=11; MY_O_E_C_SUP };
            class 2 { id=12; MY_O_E_C_SUP };
        };
    };
};
