function h_com = draw_robot_com(bot, box, h_com)

[robot robot_com robot_mass ] = drc_forward_kinematics( bot );

com = robot_com;
box_x = box(1);
box_y = box(2);
box = [-1 1 1 -1 -1; 1 1 -1 -1 1; 0 0 0 0 0];

box_opts = {'k-','LineWidth',2};
com_opts = {'.--','MarkerSize',28,'Color',[.05 .6 .4],'LineWidth',3};

if(nargin < 3)
	h_com(1) = plot3(box(1,:).*box_x, box(2,:).*box_y, box(3,:),box_opts{:});
	hold on;
	h_com(2) = plot3([com(1) com(1)],[com(2) com(2)],[com(3) 0], com_opts{:});
	hold off;
else
	set(h_com(1), 'XData', box(1,:).*box_x,...
		'YData', box(2,:).*box_y, 'ZData', box(3,:));
	
	set(h_com(2), 'XData', [com(1) com(1)],...
		'YData',[com(2) com(2)], 'ZData', [com(3) 0]);
end
