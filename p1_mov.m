
com_box = [.262/2 .302/2];

f_obj = @(x)drc_obj_fun_1(x,goal);
c_fun = @(x)drc_con_fun(x,com_box);

options = optimset('Algorithm','active-set');

goal = [.3 -.6 1.4];

drc;
figure(1);clf;
bot = draw(tree); hold on;
wr = bot.j(29).position;
h_com = draw_robot_com(bot, com_box); hold on;
h_goal = plot3([goal(1) wr(1)],[goal(2) wr(2)],...
		[goal(3) wr(3)], 'c.-','MarkerSize', 20);

x0 = 0.*ones(29,1);

limits = cell2mat({bot.j.limits}');
lb = limits(:,1);
ub = limits(:,2);


%%
for t = 0:10
	g_ang = (t/10)*pi;
	x_ax = 1.5;
	y_ax = -.6;
	goal = [ x_ax*sin(g_ang) y_ax*cos(g_ang) 1.4]
	
	f_obj = @(x)drc_obj_fun_1(x,goal);
	opt_ans = fmincon(f_obj,x0,[],[],[],[],lb,ub,c_fun,options);
	for i = 1:length(tree.j)
		bot.j(i).angle = opt_ans(i);
		x0 = opt_ans;
	end
	[bot com mass] = drc_forward_kinematics(bot);
	draw(bot);
	draw_robot_com(bot, com_box, h_com);
	
	wr = bot.j(29).position;
	set(h_goal, 'XData', [goal(1) wr(1)],...
		'YData',[goal(2) wr(2)],...
		'ZData',[goal(3) wr(3)]);
	
	drawnow;
end

%%

g_ang = (t/10)*pi;
x_ax = .3;
y_ax = -.6;
goal = [1 1 1.4]

f_obj = @(x)drc_obj_fun_1(x,goal);
opt_ans = fmincon(f_obj,x0,[],[],[],[],lb,ub,c_fun,options);
for i = 1:length(tree.j)
	bot.j(i).angle = opt_ans(i);
	x0 = opt_ans;
end
[bot com mass] = drc_forward_kinematics(bot);
draw(bot);
draw_robot_com(bot, com_box, h_com);

wr = bot.j(29).position;
set(h_goal, 'XData', [goal(1) wr(1)],...
	'YData',[goal(2) wr(2)],...
	'ZData',[goal(3) wr(3)]);

drawnow;



