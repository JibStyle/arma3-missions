my_ao = 0;
done_base = false;
done_inf_1 = false;
done_vics_1 = false;
done_inf_2 = false;
done_vics_2 = false;
done_inf_3 = false;
done_vics_3 = false;
done_inf_4 = false;
done_vics_4 = false;

[] spawn {
    waitUntil {uiSleep 1; done_base == true;};

    my_ao = 1;
    [
        my_e_b_inf_1, my_e_b_mec_1, my_e_b_arm_1,
        my_e_o_inf_1, my_e_o_mec_1, my_e_o_arm_1, my_e_o_aa_1
    ] apply {[_x] call jib_emitter_enable};
    waitUntil {uiSleep 1; done_inf_1 == true;};
    [
        my_e_o_inf_1
    ] apply {[_x] call jib_emitter_disable};
    waitUntil {uiSleep 1; done_vics_1 == true;};
    [
        my_e_b_inf_1, my_e_b_mec_1, my_e_b_arm_1,
        my_e_o_inf_1, my_e_o_mec_1, my_e_o_arm_1, my_e_o_aa_1
    ] apply {
        [_x] call jib_emitter_disable;
        [_x] spawn jib_emitter_cleanup;
    };

    my_ao = 2;
    [
        my_e_b_inf_2, my_e_b_mec_2, my_e_b_arm_2,
        my_e_o_inf_2, my_e_o_car_2, my_e_o_mec_2, my_e_o_arm_2, my_e_o_aa_2,
        my_e_o_heli
    ] apply {[_x] call jib_emitter_enable};
    waitUntil {uiSleep 1; done_inf_2 == true;};
    [
        my_e_o_inf_2
    ] apply {[_x] call jib_emitter_disable};
    waitUntil {uiSleep 1; done_vics_2 == true;};
    [
        my_e_b_inf_2, my_e_b_mec_2, my_e_b_arm_2,
        my_e_o_inf_2, my_e_o_car_2, my_e_o_mec_2, my_e_o_arm_2, my_e_o_aa_2
    ] apply {
        [_x] call jib_emitter_disable;
        [_x] spawn jib_emitter_cleanup;
    };

    my_ao = 3;
    [
        my_e_b_inf_3, my_e_b_mec_3, my_e_b_arm_3,
        my_e_o_inf_3, my_e_o_car_3, my_e_o_mec_3, my_e_o_arm_3, my_e_o_aa_3
    ] apply {[_x] call jib_emitter_enable};
    waitUntil {uiSleep 1; done_inf_3 == true;};
    [
        my_e_o_inf_3
    ] apply {[_x] call jib_emitter_disable};
    waitUntil {uiSleep 1; done_vics_3 == true;};
    [
        my_e_b_inf_3, my_e_b_mec_3, my_e_b_arm_3,
        my_e_o_inf_3, my_e_o_car_3, my_e_o_mec_3, my_e_o_arm_3, my_e_o_aa_3
    ] apply {
        [_x] call jib_emitter_disable;
        [_x] spawn jib_emitter_cleanup;
    };

    my_ao = 4;
    [
        my_e_b_inf_4, my_e_b_mec_4, my_e_b_arm_4,
        my_e_o_inf_4, my_e_o_mec_4, my_e_o_arm_4, my_e_o_aa_4
    ] apply {[_x] call jib_emitter_enable};
    waitUntil {uiSleep 1; done_inf_4 == true;};
    [
        my_e_o_inf_4
    ] apply {[_x] call jib_emitter_disable};
    waitUntil {uiSleep 1; done_vics_4 == true;};
    [
        my_e_b_inf_4, my_e_b_mec_4, my_e_b_arm_4,
        my_e_o_inf_4, my_e_o_mec_4, my_e_o_arm_4, my_e_o_aa_4
    ] apply {
        [_x] call jib_emitter_disable;
        [_x] spawn jib_emitter_cleanup;
    };
};

my_flex_off = {
    [
        my_e_b_inf_1, my_e_b_inf_2, my_e_b_inf_3, my_e_b_inf_4,
        my_e_b_mec_1, my_e_b_mec_2, my_e_b_mec_3, my_e_b_mec_4,
        my_e_b_arm_1, my_e_b_arm_2, my_e_b_arm_3, my_e_b_arm_4
    ] apply {
        [_x, 8, 2, 20] call jib_emitter_budget
    };

    [
        my_e_o_inf_1, my_e_o_mec_1, my_e_o_arm_1,
        my_e_o_inf_2, my_e_o_car_2, my_e_o_mec_2, my_e_o_arm_2,
        my_e_o_inf_3, my_e_o_car_3, my_e_o_mec_3, my_e_o_arm_3,
        my_e_o_inf_4, my_e_o_mec_4, my_e_o_arm_4
    ] apply {
        [_x, 0, 0, 20] call jib_emitter_budget
    };

    [my_e_o_aa_1, my_e_o_aa_2, my_e_o_aa_3, my_e_o_aa_4] apply {
        [_x, 0, 0, 20] call jib_emitter_budget
    };

    [my_e_o_heli] apply {
        [_x, 0, 0, 20] call jib_emitter_budget
    };
};

my_flex_easy = {
    [
        my_e_b_inf_1, my_e_b_inf_2, my_e_b_inf_3, my_e_b_inf_4,
        my_e_b_mec_1, my_e_b_mec_2, my_e_b_mec_3, my_e_b_mec_4,
        my_e_b_arm_1, my_e_b_arm_2, my_e_b_arm_3, my_e_b_arm_4
    ] apply {
        [_x, 8, 2, 20] call jib_emitter_budget
    };

    [
        my_e_o_inf_1, my_e_o_mec_1, my_e_o_arm_1,
        my_e_o_inf_2, my_e_o_car_2, my_e_o_mec_2, my_e_o_arm_2,
        my_e_o_inf_3, my_e_o_car_3, my_e_o_mec_3, my_e_o_arm_3,
        my_e_o_inf_4, my_e_o_mec_4, my_e_o_arm_4
    ] apply {
        [_x, 8, 2, 60] call jib_emitter_budget
    };

    [my_e_o_aa_1, my_e_o_aa_2, my_e_o_aa_3, my_e_o_aa_4] apply {
        [_x, 8, 1, 600] call jib_emitter_budget
    };

    [my_e_o_heli] apply {
        [_x, 8, 1, 600] call jib_emitter_budget
    };
};

my_flex_normal = {
    [
        my_e_b_inf_1, my_e_b_inf_2, my_e_b_inf_3, my_e_b_inf_4,
        my_e_b_mec_1, my_e_b_mec_2, my_e_b_mec_3, my_e_b_mec_4,
        my_e_b_arm_1, my_e_b_arm_2, my_e_b_arm_3, my_e_b_arm_4
    ] apply {
        [_x, 8, 2, 20] call jib_emitter_budget
    };

    [
        my_e_o_inf_1, my_e_o_mec_1, my_e_o_arm_1,
        my_e_o_inf_2, my_e_o_car_2, my_e_o_mec_2, my_e_o_arm_2,
        my_e_o_inf_3, my_e_o_car_3, my_e_o_mec_3, my_e_o_arm_3,
        my_e_o_inf_4, my_e_o_mec_4, my_e_o_arm_4
    ] apply {
        [_x, 8, 2, 20] call jib_emitter_budget
    };

    [my_e_o_aa_1, my_e_o_aa_2, my_e_o_aa_3, my_e_o_aa_4] apply {
        [_x, 8, 2, 300] call jib_emitter_budget
    };

    [my_e_o_heli] apply {
        [_x, 8, 2, 300] call jib_emitter_budget
    };
};

my_flex_hard = {
    [
        my_e_b_inf_1, my_e_b_inf_2, my_e_b_inf_3, my_e_b_inf_4,
        my_e_b_mec_1, my_e_b_mec_2, my_e_b_mec_3, my_e_b_mec_4,
        my_e_b_arm_1, my_e_b_arm_2, my_e_b_arm_3, my_e_b_arm_4
    ] apply {
        [_x, 8, 2, 20] call jib_emitter_budget
    };

    [
        my_e_o_inf_1, my_e_o_mec_1, my_e_o_arm_1,
        my_e_o_inf_2, my_e_o_car_2, my_e_o_mec_2, my_e_o_arm_2,
        my_e_o_inf_3, my_e_o_car_3, my_e_o_mec_3, my_e_o_arm_3,
        my_e_o_inf_4, my_e_o_mec_4, my_e_o_arm_4
    ] apply {
        [_x, 8, 2, 20] call jib_emitter_budget
    };

    [my_e_o_aa_1, my_e_o_aa_2, my_e_o_aa_3, my_e_o_aa_4] apply {
        [_x, 8, 2, 60] call jib_emitter_budget
    };

    [my_e_o_heli] apply {
        [_x, 8, 2, 60] call jib_emitter_budget
    };
};

my_flex_custom = {
    [
        my_e_b_inf_1, my_e_b_inf_2, my_e_b_inf_3, my_e_b_inf_4,
        my_e_b_mec_1, my_e_b_mec_2, my_e_b_mec_3, my_e_b_mec_4,
        my_e_b_arm_1, my_e_b_arm_2, my_e_b_arm_3, my_e_b_arm_4
    ] apply {
        [_x, 6, 2, 5] call jib_emitter_budget
    };

    [
        my_e_o_inf_1, my_e_o_mec_1, my_e_o_arm_1,
        my_e_o_inf_2, my_e_o_car_2, my_e_o_mec_2, my_e_o_arm_2,
        my_e_o_inf_3, my_e_o_car_3, my_e_o_mec_3, my_e_o_arm_3,
        my_e_o_inf_4, my_e_o_mec_4, my_e_o_arm_4
    ] apply {
        [_x, 8, 2, 5] call jib_emitter_budget
    };

    [my_e_o_aa_1, my_e_o_aa_2, my_e_o_aa_3, my_e_o_aa_4] apply {
        [_x, 4, 1, 300] call jib_emitter_budget
    };

    [my_e_o_heli] apply {
        [_x, 4, 1, 300] call jib_emitter_budget
    };
};

call my_flex_normal;
