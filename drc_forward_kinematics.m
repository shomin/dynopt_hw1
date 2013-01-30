function [ result com_total total_mass ] = drc_forward_kinematics( tree )
% drc_forward_kinematics( tree ), returns updated tree based on angles
% as well as COM and robot mass

% assume tree.j(1).position is set to the left foot (sole of foot) position

% and assume tree.j(1).rotation and tree.l(1).orientation are set to the
% orientation of the left foot

R_com = tree.l(1).orientation*tree.l(1).offset_to_com';
tree.l(1).com = tree.j(1).position + R_com';

total_mass = tree.l(1).mass;
com_total = tree.l(1).mass*tree.l(1).com;

for i = 2:29
 parent = tree.l(i).parent;
 tree.j(i).rotation = generate_axis_angle_rotation_matrix( tree.j(i).axis, ...
                                                         tree.j(i).angle );
 tree.l(i).orientation = tree.l( parent ).orientation*tree.j(i).rotation;
 R_offset = tree.l( parent ).orientation*tree.j(i).offset';
 tree.j(i).position = tree.j( parent ).position + R_offset';

 R_com = tree.l(i).orientation*tree.l(i).offset_to_com';
 tree.l(i).com = tree.j(i).position + R_com';
 total_mass = total_mass + tree.l(i).mass;
 com_total = com_total + tree.l(i).mass*tree.l(i).com;
 end

com_total = com_total/total_mass;
result = tree;
