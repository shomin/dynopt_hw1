function robot = draw( robot )
% draw( robot ), return value is meaningless

cyl_n = 20;
cyl_col = [0.7 .1 0.1];
cyl_lines = 0;
cyl_alpha = .5;
cyl_r = .035;


% mass_sf = 5;
% popts = {'.','Color',[.2,.2,.5]};

sph_n = 20;
sph_color = [.9, .7, .1];
sph_lines = 0;
sph_alpha = .6;

mass_sf = .006;

cyl_opts = {cyl_r,cyl_n,cyl_col,cyl_lines,cyl_alpha};

sph_opts = {sph_n,sph_color,sph_lines,sph_alpha};

for i = 2:length( robot.l )
 X(:,1) = [robot.j(i).position(1)...
	 robot.j(i).position(2)...
	 robot.j(i).position(3)];
 ii = robot.l(i).parent;
 X(:,2) = [robot.j(ii).position(1)...
	 robot.j(ii).position(2)...
	 robot.j(ii).position(3)];

 
 %  ms = {'MarkerSize',robot.l(i).mass*mass_sf};
 sph_r = robot.l(i).mass*mass_sf;
 
 M = robot.l(i).com;
 % M = X(:,1) + (robot(robot(i).parent).orientation * robot(i).offset_to_com');
 
 if(isfield(robot.l(i),'h'))
	 if(isempty(robot.l(end).h) || ~all(ishandle(robot.l(end).h)))
		 robot.l(i).h(1) = cylinder3(X(:,1),X(:,2),cyl_opts{:});
		 hold on;
		 %robot.l(i).h(2) = plot3(M(1),M(2),M(3),popts{:},ms{:});
		 robot.l(i).h(2) = sphere3(M,[0 0],sph_r, sph_opts{:});		 
	 else
		 cylinder3(X(:,1)',X(:,2)',cyl_opts{:}, robot.l(i).h(1));
		 %set(robot.l(i).h(2),'XData',M(1),'YData',M(2),'ZData',M(3));
		 sphere3(M,[0 0],sph_r, sph_opts{:}, robot.l(i).h(2));
	 end
 else
	 robot.l(i).h(1) = cylinder3(X(:,1),X(:,2),cyl_opts{:});
	 hold on;
	 robot.l(i).h(2) = sphere3(M,[0 0],sph_r, sph_opts{:});		 
	 %robot.l(i).h(2) = plot3(M(1),M(2),M(3),popts{:},ms{:});
 end
 

end
axis equal
axis( [-1 1 -1 1 0 2 ] );
grid on
hold off



