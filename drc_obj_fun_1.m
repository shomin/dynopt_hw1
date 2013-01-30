function f = drc_obj_fun_1(angles, goal)
%function c = drc_obj_fun_1(angles)

drc;
for i = 1:length(tree.j)
	tree.j(i).angle = angles(i);
end
[bot com mass] = drc_forward_kinematics(tree);

error = goal - bot.j(29).position;

%x0 = cell2mat({robot.j(:).angle}');

f = sum(error.^2);

end