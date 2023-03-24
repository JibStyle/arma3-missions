my_ammo_add = {
    params ["_veh"];
    if (!isServer) exitWith {};

    _veh addWeaponCargoGlobal ["afou_weap_m82_scoped_01", 1];
    _veh addWeaponCargoGlobal ["afou_weap_svdp_scoped_01", 1];
    _veh addWeaponCargoGlobal ["rhs_weap_aks74_2", 2];
    _veh addWeaponCargoGlobal ["rhs_weap_aks74_gp25", 2];
    _veh addWeaponCargoGlobal ["rhs_weap_aks74u", 2];
    _veh addWeaponCargoGlobal ["rhs_weap_makarov_pm", 2];
    _veh addWeaponCargoGlobal ["rhs_weap_pkm", 2];
    _veh addWeaponCargoGlobal ["rhs_weap_rpk74m", 2];
    _veh addWeaponCargoGlobal ["rhs_weap_fgm148", 4];
    _veh addWeaponCargoGlobal ["rhs_weap_fim92", 4];
    _veh addWeaponCargoGlobal ["rhs_weap_maaws", 4];

    _veh addItemCargoGlobal ["ACE_CableTie", 16],
    _veh addItemCargoGlobal ["ACE_EarPlugs", 16],
    _veh addItemCargoGlobal ["ACE_adenosine", 16],
    _veh addItemCargoGlobal ["ACE_elasticBandage", 16],
    _veh addItemCargoGlobal ["ACE_epinephrine", 16],
    _veh addItemCargoGlobal ["ACE_fieldDressing", 16],
    _veh addItemCargoGlobal ["ACE_morphine", 16],
    _veh addItemCargoGlobal ["ACE_packingBandage", 16],
    _veh addItemCargoGlobal ["ACE_quikclot", 16],
    _veh addItemCargoGlobal ["ACE_salineIV_500", 16],
    _veh addItemCargoGlobal ["ACE_splint", 16],
    _veh addItemCargoGlobal ["ACE_tourniquet", 16],
    _veh addItemCargoGlobal ["ACE_EntrenchingTool", 4],
    _veh addItemCargoGlobal ["ACE_MapTools", 4],
    _veh addItemCargoGlobal ["ACE_RangeCard", 4],

    _veh addItemCargoGlobal ["ItemCompass", 2];
    _veh addItemCargoGlobal ["ItemMap", 2];
    _veh addItemCargoGlobal ["ItemRadio", 2];
    _veh addItemCargoGlobal ["ItemWatch", 2];
    _veh addItemCargoGlobal ["H_B_afou_1M_model_I_slings_green", 4];
    _veh addItemCargoGlobal ["H_HelmetB_camo", 4];
    _veh addItemCargoGlobal ["rhsusf_mbav_light", 4];
    _veh addItemCargoGlobal ["rhsusf_mbav_mg", 4];

    _veh addMagazineCargoGlobal ["rhs_10Rnd_762x54mmR_7N1", 16];
    _veh addMagazineCargoGlobal ["rhs_VOG25", 16];
    _veh addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 16];
    _veh addMagazineCargoGlobal ["rhs_fim92_mag", 16];
    _veh addMagazineCargoGlobal ["rhs_30Rnd_545x39_7N10_plum_AK", 32];
    _veh addMagazineCargoGlobal ["rhs_45Rnd_545X39_7N6M_AK", 32];
    _veh addMagazineCargoGlobal ["afou_100Rnd_762x54_LP_01", 4];
    _veh addMagazineCargoGlobal ["rhs_100Rnd_762x54mmR_7N26", 4];
    _veh addMagazineCargoGlobal ["rhs_mag_9x18_8_57N181S", 8];
    _veh addMagazineCargoGlobal ["rhs_mag_maaws_HE", 8];
    _veh addMagazineCargoGlobal ["rhs_mag_maaws_HEAT", 8];
    _veh addMagazineCargoGlobal ["rhs_mag_rdg2_white", 8];
    _veh addMagazineCargoGlobal ["rhs_mag_rgd5", 8];
    _veh addMagazineCargoGlobal ["rhsusf_mag_10Rnd_STD_50BMG_M33", 8];

    _veh addBackpackCargoGlobal ["bp_afougf_eagle_mm14_mg", 4];
    _veh addBackpackCargoGlobal ["bp_eagle_mm14_maaws_opassist_01", 4];
    _veh addBackpackCargoGlobal ["bp_eagle_mm14_medic_01", 4];
};
