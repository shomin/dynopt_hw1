%wrist
%robot.j(23)

goal = [0.74 -0.7 1.4];
com_box = [.262/2 .302/2];

f_obj = @(x)drc_obj_fun_1(x,goal);
c_fun = @(x)drc_con_fun(x,com_box);

x0 = 0.*ones(29,1);

options = optimset('Algorithm','active-set');
opt_ans = fmincon(f_obj,x0,[],[],[],[],[],[],c_fun,options);


drc;
orig = tree;
for i = 1:length(tree.j)
	tree.j(i).angle = opt_ans(i);
end
[bot com mass] = drc_forward_kinematics(tree);

draw(bot);
hold on
% draw(orig);hold on
draw_robot_com(bot, com_box);
hold on

wr = bot.j(29).position;
h_goal = plot3([goal(1) wr(1)],[goal(2) wr(2)],...
	[goal(3) wr(3)], 'c.-','MarkerSize', 20);


hold off