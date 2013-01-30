n = 200;
t = (1:n)';

gx = .3 + (t./200);
gy = -.25 + .6.*sin(t./10) + (.8.*t./n);
gz = (.5.*t./n)+.7;

goals = [gx gy gz];

com_box = [.262/2 .302/2];
f_obj = @(x)drc_obj_fun_1(x,goal);
c_fun = @(x)drc_con_fun(x,com_box);


goal = goals(1,:);

drc;
figure(1);clf;
bot = draw(tree); hold on;
wr = bot.j(29).position;
h_com = draw_robot_com(bot, com_box); hold on;
h_goal = plot3([goal(1) wr(1)],[goal(2) wr(2)],...
		[goal(3) wr(3)], 'c.-','MarkerSize', 25,'LineWidth',2.5);
	
plot3(goals(:,1), goals(:,2), goals(:,3),...
	'k.--','LineWidth',2,'MarkerSize',20);



x0 = 0.*ones(29,1);

limits = cell2mat({bot.j.limits}');
lb = limits(:,1);
ub = limits(:,2);

options = optimset('Algorithm','active-set');

%%
vid = 0;

if(vid)
 vidObj = VideoWriter('dynopt_hw1_mov4.avi');
 vidObj.Quality = 100;
 vidObj.FrameRate = 24;
 open(vidObj);
end

for j = 1:length(goals(:,1))
	goal = goals(j,:);
	
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
	
	if(vid)
		writeVideo(vidObj, getframe(gcf));
		writeVideo(vidObj, getframe(gcf));
		writeVideo(vidObj, getframe(gcf));
	end

end

if(vid)
	for i = 1:30
		writeVideo(vidObj, getframe(gcf));
	end
	close(vidObj);
end


