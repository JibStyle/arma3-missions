params ["_player", "_didJIP"];

// NOTE: Probably need a wait for init

private _glasses = ["G_AirPurifyingRespirator_02_black_F","G_AirPurifyingRespirator_02_olive_F","G_AirPurifyingRespirator_02_sand_F","G_AirPurifyingRespirator_01_F","G_Aviator","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan","G_Blindfold_01_black_F","G_Blindfold_01_white_F","G_Combat","G_Combat_Goggles_tna_F","G_Diving","G_I_Diving","G_O_Diving","G_B_Diving","G_Lady_Blue","G_Lowprofile","None","G_RegulatorMask_F","G_Respirator_blue_F","G_Respirator_white_F","G_Respirator_yellow_F","G_EyeProtectors_F","G_EyeProtectors_Earpiece_F","G_Shades_Black","G_Shades_Blue","G_Shades_Green","G_Shades_Red","G_Spectacles","G_Sport_Red","G_Sport_Blackyellow","G_Sport_BlackWhite","G_Sport_Checkered","G_Sport_Blackred","G_Sport_Greenblack","G_Squares_Tinted","G_Squares","G_Balaclava_TI_blk_F","G_Balaclava_TI_G_blk_F","G_Balaclava_TI_tna_F","G_Balaclava_TI_G_tna_F","G_Tactical_Clear","G_Tactical_Black","G_Spectacles_Tinted","G_Goggles_VR","G_WirelessEarpiece_F"];

private _common = ["16Rnd_9x21_Mag","30Rnd_65x39_caseless_black_mag","ACE_CableTie","ACE_EarPlugs","ACE_Flashlight_XL50","ACE_NVG_Wide_Green","ACE_fieldDressing","ACE_morphine","ACE_packingBandage","ACE_tourniquet","ACRE_PRC343","Chemlight_green","H_HelmetB_light_wdl","H_HelmetB_plain_wdl","H_HelmetSpecB_wdl","HandGrenade","ItemCompass","ItemMap","ItemWatch","SmokeShell","U_B_CombatUniform_mcam_wdl_f","U_B_CombatUniform_tshirt_mcam_wdL_f","U_B_CombatUniform_vest_mcam_wdl_f","V_PlateCarrier1_wdl","V_PlateCarrier2_wdl","V_PlateCarrierGL_wdl","V_PlateCarrierSpec_wdl","acc_pointer_IR","arifle_MX_Black_F","hgun_P07_khk_F","optic_Aco","optic_Holosight_blk_F"];

private _special = _player getVariable ["my_arsenal_special", []];

[my_arsenal,my_arsenal_purgatory] apply {
    [_x, _glasses + _common + _special] call ace_arsenal_fnc_initBox;
};
