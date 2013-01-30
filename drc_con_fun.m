function [c, ceq] = drc_con_fun(angles, com_box)
%function c = drc_obj_fun_1(angles)

drc;
for i = 1:length(tree.j)
	tree.j(i).angle = angles(i);
end
[bot com mass] = drc_forward_kinematics(tree);


%right foot
q = rot2quat(bot.j(17).rotation);

foot_orig_pos = [-0.0484   -0.0890    0.0811];

pos_error = (bot.j(17).position - foot_orig_pos);


%x0 = cell2mat({robot.j(:).angle}');

c = [com(1) - com_box(1);...
	-com(1) - com_box(1);...
	com(2) - com_box(2);...
	-com(2) - com_box(2)];
	

ceq=[q(1) - 1; q(2:4)'; pos_error'];

end