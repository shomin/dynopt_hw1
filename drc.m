
joint(1).index = 1;
joint(1).name = 'groundj';
joint(1).angle = 0.0;
joint(1).axis = [ 1 0 0 ];
joint(1).offset = [ 0 0 0 ];
joint(1).position = [ 0 0.089 0 ];
joint(1).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(1).limits = [ 0 0 ];
joint(1).torque_limits = [ 0 0 ];

link(1).index = 1;
link(1).name = 'l_foot';
link(1).parent = 0;
link(1).mass = 1.634;
link(1).offset_to_com = [ -0.0214 0 0.0141 ];
link(1).com = [ -0.0214 0.089 0.0141 ];
link(1).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(2).index = 2;
joint(2).name = 'l_leg_lax';
joint(2).angle = 0.0;
joint(2).axis = [ -1 0 0 ];
joint(2).offset = [ -0.0484 0 0.0811 ];
joint(2).position = [ -0.0484 0.089 0.0811 ];
joint(2).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(2).limits = [ -0.436 0.436 ];
joint(2).torque_limits = [ -90 90 ];

link(2).index = 2;
link(2).name = 'l_talus';
link(2).parent = 1;
link(2).mass = 0.1;
link(2).offset_to_com = [ 0 0 0 ];
link(2).com = [ -0.0484 0.089 0.0811 ];
link(2).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(3).index = 3;
joint(3).name = 'l_leg_uay';
joint(3).angle = 0.0;
joint(3).axis = [ 0 -1 0 ];
joint(3).offset = [ 0 0 0 ];
joint(3).position = [ -0.0484 0.089 0.0811 ];
joint(3).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(3).limits = [ -0.698 0.698 ];
joint(3).torque_limits = [ -220 220 ];

link(3).index = 3;
link(3).name = 'l_lleg';
link(3).parent = 2;
link(3).mass = 4.367;
link(3).offset_to_com = [ 0.001 0 0.235 ];
link(3).com = [ -0.0474 0.089 0.3161 ];
link(3).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(4).index = 4;
joint(4).name = 'l_leg_kny';
joint(4).angle = 0.0;
joint(4).axis = [ 0 -1 0 ];
joint(4).offset = [ 0 0 0.422 ];
joint(4).position = [ -0.0484 0.089 0.5031 ];
joint(4).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(4).limits = [ 0 2.45 ];
joint(4).torque_limits = [ -220 220 ];

link(4).index = 4;
link(4).name = 'l_uleg';
link(4).parent = 3;
link(4).mass = 7.34;
link(4).offset_to_com = [ 0.05 0 0.164 ];
link(4).com = [ 0.0016 0.089 0.6671 ];
link(4).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(5).index = 5;
joint(5).name = 'l_leg_lhy';
joint(5).angle = 0.0;
joint(5).axis = [ 0 -1 0 ];
joint(5).offset = [ 0.05 0 0.374 ];
joint(5).position = [ 0.0016 0.089 0.8771 ];
joint(5).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(5).limits = [ -1.75 0.524 ];
joint(5).torque_limits = [ -260 260 ];

link(5).index = 5;
link(5).name = 'l_lglut';
link(5).parent = 4;
link(5).mass = 0.69;
link(5).offset_to_com = [ -0.0366659 0.0170484 0.0187948 ];
link(5).com = [ -0.0350659 0.106048 0.895895 ];
link(5).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(6).index = 6;
joint(6).name = 'l_leg_mhx';
joint(6).angle = 0.0;
joint(6).axis = [ -1 0 0 ];
joint(6).offset = [ -0.05 0 0.05 ];
joint(6).position = [ -0.0484 0.089 0.9271 ];
joint(6).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(6).limits = [ -0.47 0.495 ];
joint(6).torque_limits = [ -180 180 ];

link(6).index = 6;
link(6).name = 'l_uglut';
link(6).parent = 5;
link(6).mass = 0.5166;
link(6).offset_to_com = [ 0.00529262 -0.00344732 0.00313046 ];
link(6).com = [ -0.0431074 0.0855527 0.93023 ];
link(6).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(7).index = 7;
joint(7).name = 'l_leg_uhz';
joint(7).angle = 0.0;
joint(7).axis = [ 0 0 -1 ];
joint(7).offset = [ 0 0 0 ];
joint(7).position = [ -0.0484 0.089 0.9271 ];
joint(7).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(7).limits = [ -0.32 1.14 ];
joint(7).torque_limits = [ -110 110 ];

link(7).index = 7;
link(7).name = 'pelvis';
link(7).parent = 6;
link(7).mass = 14.2529;
link(7).offset_to_com = [ 0.0111 -0.089 0.0271 ];
link(7).com = [ -0.0373 0 0.9542 ];
link(7).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(8).index = 8;
joint(8).name = 'back_lbz';
joint(8).angle = 0.0;
joint(8).axis = [ 0 0 1 ];
joint(8).offset = [ -0.0125 -0.089 0 ];
joint(8).position = [ -0.0609 0 0.9271 ];
joint(8).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(8).limits = [ -0.610865 0.610865 ];
joint(8).torque_limits = [ -124.016 124.016 ];

link(8).index = 8;
link(8).name = 'ltorso';
link(8).parent = 7;
link(8).mass = 1.92;
link(8).offset_to_com = [ -0.0112984 -3.15366e-06 0.0746835 ];
link(8).com = [ -0.0721984 -3.15366e-06 1.00178 ];
link(8).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(9).index = 9;
joint(9).name = 'back_mby';
joint(9).angle = 0.0;
joint(9).axis = [ 0 1 0 ];
joint(9).offset = [ 0 0 0.09 ];
joint(9).position = [ -0.0609 0 1.0171 ];
joint(9).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(9).limits = [ -1.2 1.28 ];
joint(9).torque_limits = [ -206.843 206.843 ];

link(9).index = 9;
link(9).name = 'mtorso';
link(9).parent = 8;
link(9).mass = 0.55;
link(9).offset_to_com = [ -0.00816266 -0.0131245 0.0305974 ];
link(9).com = [ -0.0690627 -0.0131245 1.0477 ];
link(9).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(10).index = 10;
joint(10).name = 'back_ubx';
joint(10).angle = 0.0;
joint(10).axis = [ 1 0 0 ];
joint(10).offset = [ 0 0 0.05 ];
joint(10).position = [ -0.0609 0 1.0671 ];
joint(10).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(10).limits = [ -0.790809 0.790809 ];
joint(10).torque_limits = [ -94.91 94.91 ];

link(10).index = 10;
link(10).name = 'utorso';
link(10).parent = 9;
link(10).mass = 18.484;
link(10).offset_to_com = [ 0.02 -0.001 0.211 ];
link(10).com = [ -0.0409 -0.001 1.2781 ];
link(10).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(11).index = 11;
joint(11).name = 'neck_ay';
joint(11).angle = 0.0;
joint(11).axis = [ 0 1 0 ];
joint(11).offset = [ 0.16555 0 0.50823 ];
joint(11).position = [ 0.10465 0 1.57533 ];
joint(11).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(11).limits = [ -0.610865 1.13446 ];
joint(11).torque_limits = [ -5 5 ];

link(11).index = 11;
link(11).name = 'head';
link(11).parent = 10;
link(11).mass = 1.4199;
link(11).offset_to_com = [ -0.075493 3.3383e-05 0.02774 ];
link(11).com = [ 0.029157 3.3383e-05 1.60307 ];
link(11).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(12).index = 12;
joint(12).name = 'r_leg_uhz';
joint(12).angle = 0.0;
joint(12).axis = [ 0 0 1 ];
joint(12).offset = [ 0 -0.178 0 ];
joint(12).position = [ -0.0484 -0.089 0.9271 ];
joint(12).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(12).limits = [ -1.14 0.32 ];
joint(12).torque_limits = [ -260 260 ];

link(12).index = 12;
link(12).name = 'r_uglut';
link(12).parent = 7;
link(12).mass = 0.5166;
link(12).offset_to_com = [ 0.00529262 0.00344732 0.00313046 ];
link(12).com = [ -0.0431074 -0.0855527 0.93023 ];
link(12).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(13).index = 13;
joint(13).name = 'r_leg_mhx';
joint(13).angle = 0.0;
joint(13).axis = [ 1 0 0 ];
joint(13).offset = [ 0 0 0 ];
joint(13).position = [ -0.0484 -0.089 0.9271 ];
joint(13).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(13).limits = [ -0.495 0.47 ];
joint(13).torque_limits = [ -180 180 ];

link(13).index = 13;
link(13).name = 'r_lglut';
link(13).parent = 12;
link(13).mass = 0.69;
link(13).offset_to_com = [ 0.0133341 -0.0170484 -0.0312052 ];
link(13).com = [ -0.0350659 -0.106048 0.895895 ];
link(13).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(14).index = 14;
joint(14).name = 'r_leg_lhy';
joint(14).angle = 0.0;
joint(14).axis = [ 0 1 0 ];
joint(14).offset = [ 0.05 0 -0.05 ];
joint(14).position = [ 0.0016 -0.089 0.8771 ];
joint(14).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(14).limits = [ -1.745 0.524 ];
joint(14).torque_limits = [ -260 260 ];

link(14).index = 14;
link(14).name = 'r_uleg';
link(14).parent = 13;
link(14).mass = 7.34;
link(14).offset_to_com = [ 0 0 -0.21 ];
link(14).com = [ 0.0016 -0.089 0.6671 ];
link(14).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(15).index = 15;
joint(15).name = 'r_leg_kny';
joint(15).angle = 0.0;
joint(15).axis = [ 0 1 0 ];
joint(15).offset = [ -0.05 0 -0.374 ];
joint(15).position = [ -0.0484 -0.089 0.5031 ];
joint(15).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(15).limits = [ 0 2.45 ];
joint(15).torque_limits = [ -220 220 ];

link(15).index = 15;
link(15).name = 'r_lleg';
link(15).parent = 14;
link(15).mass = 4.367;
link(15).offset_to_com = [ 0.001 0 -0.187 ];
link(15).com = [ -0.0474 -0.089 0.3161 ];
link(15).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(16).index = 16;
joint(16).name = 'r_leg_uay';
joint(16).angle = 0.0;
joint(16).axis = [ 0 1 0 ];
joint(16).offset = [ 0 0 -0.422 ];
joint(16).position = [ -0.0484 -0.089 0.0811 ];
joint(16).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(16).limits = [ -0.698 0.698 ];
joint(16).torque_limits = [ -220 220 ];

link(16).index = 16;
link(16).name = 'r_talus';
link(16).parent = 15;
link(16).mass = 0.1;
link(16).offset_to_com = [ 0 0 0 ];
link(16).com = [ -0.0484 -0.089 0.0811 ];
link(16).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(17).index = 17;
joint(17).name = 'r_leg_lax';
joint(17).angle = 0.0;
joint(17).axis = [ 1 0 0 ];
joint(17).offset = [ 0 0 0 ];
joint(17).position = [ -0.0484 -0.089 0.0811 ];
joint(17).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(17).limits = [ -0.436 0.436 ];
joint(17).torque_limits = [ -90 90 ];

link(17).index = 17;
link(17).name = 'r_foot';
link(17).parent = 16;
link(17).mass = 1.634;
link(17).offset_to_com = [ 0.027 0 -0.067 ];
link(17).com = [ -0.0214 -0.089 0.0141 ];
link(17).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(18).index = 18;
joint(18).name = 'l_arm_usy';
joint(18).angle = 0.0;
joint(18).axis = [ 0 0.5 0.866025 ];
joint(18).offset = [ 0.024 0.221 0.289 ];
joint(18).position = [ -0.0369 0.221 1.3561 ];
joint(18).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(18).limits = [ -1.9635 1.9635 ];
joint(18).torque_limits = [ -212 212 ];

link(18).index = 18;
link(18).name = 'l_clav';
link(18).parent = 10;
link(18).mass = 2.369;
link(18).offset_to_com = [ 0.014 0.058 0.029 ];
link(18).com = [ -0.0229 0.279 1.3851 ];
link(18).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(19).index = 19;
joint(19).name = 'l_arm_shx';
joint(19).angle = 0.0;
joint(19).axis = [ 1 0 0 ];
joint(19).offset = [ 0 0.075 0.036 ];
joint(19).position = [ -0.0369 0.296 1.3921 ];
joint(19).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(19).limits = [ -1.39626 1.74533 ];
joint(19).torque_limits = [ -170 170 ];

link(19).index = 19;
link(19).name = 'l_scap';
link(19).parent = 18;
link(19).mass = 2.707;
link(19).offset_to_com = [ -0.002 0.108 0 ];
link(19).com = [ -0.0389 0.404 1.3921 ];
link(19).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(20).index = 20;
joint(20).name = 'l_arm_ely';
joint(20).angle = 0.0;
joint(20).axis = [ 0 1 0 ];
joint(20).offset = [ 0 0.185 0 ];
joint(20).position = [ -0.0369 0.481 1.3921 ];
joint(20).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(20).limits = [ 0 3.14159 ];
joint(20).torque_limits = [ -114 114 ];

link(20).index = 20;
link(20).name = 'l_uarm';
link(20).parent = 19;
link(20).mass = 1.881;
link(20).offset_to_com = [ 0.007 0.114 0.008 ];
link(20).com = [ -0.0299 0.595 1.4001 ];
link(20).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(21).index = 21;
joint(21).name = 'l_arm_elx';
joint(21).angle = 0.0;
joint(21).axis = [ 1 0 0 ];
joint(21).offset = [ 0 0.121 0.013 ];
joint(21).position = [ -0.0369 0.602 1.4051 ];
joint(21).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(21).limits = [ 0 2.35619 ];
joint(21).torque_limits = [ -114 114 ];

link(21).index = 21;
link(21).name = 'l_larm';
link(21).parent = 20;
link(21).mass = 2.148;
link(21).offset_to_com = [ -0.003 0.099 -0.014 ];
link(21).com = [ -0.0399 0.701 1.3911 ];
link(21).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(22).index = 22;
joint(22).name = 'l_arm_uwy';
joint(22).angle = 0.0;
joint(22).axis = [ 0 1 0 ];
joint(22).offset = [ 0 0.183 -0.013 ];
joint(22).position = [ -0.0369 0.785 1.3921 ];
joint(22).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(22).limits = [ -1.571 1.571 ];
joint(22).torque_limits = [ -114 114 ];

link(22).index = 22;
link(22).name = 'l_farm';
link(22).parent = 21;
link(22).mass = 0.981;
link(22).offset_to_com = [ 0 0.041 0 ];
link(22).com = [ -0.0369 0.826 1.3921 ];
link(22).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(23).index = 23;
joint(23).name = 'l_arm_mwx';
joint(23).angle = 0.0;
joint(23).axis = [ 1 0 0 ];
joint(23).offset = [ 0 0.058 0 ];
joint(23).position = [ -0.0369 0.843 1.3921 ];
joint(23).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(23).limits = [ -0.436 1.571 ];
joint(23).torque_limits = [ -60 60 ];

link(23).index = 23;
link(23).name = 'l_hand';
link(23).parent = 22;
link(23).mass = 2.263;
link(23).offset_to_com = [ 0 0.093 0 ];
link(23).com = [ -0.0369 0.936 1.3921 ];
link(23).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(24).index = 24;
joint(24).name = 'r_arm_usy';
joint(24).angle = 0.0;
joint(24).axis = [ 0 -0.5 0.866025 ];
joint(24).offset = [ 0.024 -0.221 0.289 ];
joint(24).position = [ -0.0369 -0.221 1.3561 ];
joint(24).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(24).limits = [ -1.9635 1.9635 ];
joint(24).torque_limits = [ -212 212 ];

link(24).index = 24;
link(24).name = 'r_clav';
link(24).parent = 10;
link(24).mass = 2.369;
link(24).offset_to_com = [ 0.014 -0.058 0.029 ];
link(24).com = [ -0.0229 -0.279 1.3851 ];
link(24).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(25).index = 25;
joint(25).name = 'r_arm_shx';
joint(25).angle = 0.0;
joint(25).axis = [ 1 0 0 ];
joint(25).offset = [ 0 -0.075 0.036 ];
joint(25).position = [ -0.0369 -0.296 1.3921 ];
joint(25).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(25).limits = [ -1.74533 1.39626 ];
joint(25).torque_limits = [ -170 170 ];

link(25).index = 25;
link(25).name = 'r_scap';
link(25).parent = 24;
link(25).mass = 2.707;
link(25).offset_to_com = [ -0.002 -0.108 0 ];
link(25).com = [ -0.0389 -0.404 1.3921 ];
link(25).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(26).index = 26;
joint(26).name = 'r_arm_ely';
joint(26).angle = 0.0;
joint(26).axis = [ 0 1 0 ];
joint(26).offset = [ 0 -0.185 0 ];
joint(26).position = [ -0.0369 -0.481 1.3921 ];
joint(26).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(26).limits = [ 0 3.14159 ];
joint(26).torque_limits = [ -114 114 ];

link(26).index = 26;
link(26).name = 'r_uarm';
link(26).parent = 25;
link(26).mass = 1.881;
link(26).offset_to_com = [ 0.007 -0.114 0.008 ];
link(26).com = [ -0.0299 -0.595 1.4001 ];
link(26).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(27).index = 27;
joint(27).name = 'r_arm_elx';
joint(27).angle = 0.0;
joint(27).axis = [ 1 0 0 ];
joint(27).offset = [ 0 -0.121 0.013 ];
joint(27).position = [ -0.0369 -0.602 1.4051 ];
joint(27).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(27).limits = [ -2.35619 0 ];
joint(27).torque_limits = [ -114 114 ];

link(27).index = 27;
link(27).name = 'r_larm';
link(27).parent = 26;
link(27).mass = 2.148;
link(27).offset_to_com = [ -0.003 -0.099 -0.014 ];
link(27).com = [ -0.0399 -0.701 1.3911 ];
link(27).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(28).index = 28;
joint(28).name = 'r_arm_uwy';
joint(28).angle = 0.0;
joint(28).axis = [ 0 1 0 ];
joint(28).offset = [ 0 -0.183 -0.013 ];
joint(28).position = [ -0.0369 -0.785 1.3921 ];
joint(28).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(28).limits = [ -1.571 1.571 ];
joint(28).torque_limits = [ -114 114 ];

link(28).index = 28;
link(28).name = 'r_farm';
link(28).parent = 27;
link(28).mass = 0.981;
link(28).offset_to_com = [ 0 -0.041 0 ];
link(28).com = [ -0.0369 -0.826 1.3921 ];
link(28).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

joint(29).index = 29;
joint(29).name = 'r_arm_mwx';
joint(29).angle = 0.0;
joint(29).axis = [ 1 0 0 ];
joint(29).offset = [ 0 -0.058 0 ];
joint(29).position = [ -0.0369 -0.843 1.3921 ];
joint(29).rotation = [ 1 0 0 
0 1 0 
0 0 1 ];
joint(29).limits = [ -1.571 0.436 ];
joint(29).torque_limits = [ -60 60 ];

link(29).index = 29;
link(29).name = 'r_hand';
link(29).parent = 28;
link(29).mass = 2.263;
link(29).offset_to_com = [ 0 -0.093 0 ];
link(29).com = [ -0.0369 -0.936 1.3921 ];
link(29).orientation = [ 1 0 0 
0 1 0 
0 0 1 ];

tree.j = joint;
tree.l = link;
