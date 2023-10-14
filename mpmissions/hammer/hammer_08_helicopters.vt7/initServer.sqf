my_ao = 0;
done_ao0 = false;
done_ao1 = false;
done_ao2 = false;
done_ao3 = false;
done_ao4 = false;

[] spawn {
    waitUntil {uiSleep 1; done_ao0 == true;};
    my_ao = 1;
    waitUntil {uiSleep 1; done_ao1 == true;};
    my_ao = 2;
    waitUntil {uiSleep 1; done_ao2 == true;};
    my_ao = 3;
    waitUntil {uiSleep 1; done_ao3 == true;};
    my_ao = 4;
};

[] spawn {
    while {true} do {
        uiSleep 10;
        switch (my_ao) do
        {
            case 1: {
                [
                    my_e_b_inf_1,
                    my_e_b_mec_1,
                    my_e_b_arm_1
                ] apply {
                    [_x] spawn jib_emitter_single;
                    uiSleep 1;
                };
            };
            case 2: {
                [
                    my_e_b_inf_2,
                    my_e_b_mec_2,
                    my_e_b_arm_2
                ] apply {
                    [_x] spawn jib_emitter_single;
                    uiSleep 1;
                };
            };
            case 3: {
                [
                    my_e_b_inf_3,
                    my_e_b_mec_3,
                    my_e_b_arm_3
                ] apply {
                    [_x] spawn jib_emitter_single;
                    uiSleep 1;
                };
            };
            case 4: {
                [
                    my_e_b_inf_4,
                    my_e_b_mec_4,
                    my_e_b_arm_4
                ] apply {
                    [_x] spawn jib_emitter_single;
                    uiSleep 1;
                };
            };
            default {

            };
        };
    };
};
