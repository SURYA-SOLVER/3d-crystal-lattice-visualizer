%c3_symmetry.m
% C₃ Rotational Symmetry Axis Visualization
% Displays a simple cubic frame with 3-fold rotation axis
% Educational resource for point group symmetry
%
% Author: SURYA-SOLVER
% Date: 2026
%
% Description:
%   This script visualizes a C₃ rotational symmetry axis (3-fold rotation).
%   A 120° rotation about this axis maps the structure onto itself.
%   In cubic systems, C₃ axes pass through opposite body corners (main diagonal).
%   Number of C₃ axes in a cube: 4 (one for each pair of opposite corners)
%
%   This visualization shows the C₃ axis passing diagonally from (0,0,0) to (1,1,1).

% Clear workspace and close existing figures
clear all;
close all;
clc;

% Generate 3D coordinates for a simple cubic
x = [0 1 1 0 0 1 1 0];
y = [0 0 1 1 0 0 1 1];
z = [0 0 0 0 1 1 1 1];

% Create a figure and set properties
figure('Name', '3D Simple Cubic with C₃ Symmetry Axis', 'NumberTitle', 'off');
set(gcf, 'Position', [100, 100, 900, 800]);
axis equal;
hold on;
grid on;

% Plot the cubic faces with light transparency
patch([x(1) x(2) x(3) x(4)], [y(1) y(2) y(3) y(4)], [z(1) z(2) z(3) z(4)], 'r', 'FaceAlpha', 0.2, 'EdgeColor', 'none');
patch([x(5) x(6) x(7) x(8)], [y(5) y(6) y(7) y(8)], [z(5) z(6) z(7) z(8)], 'g', 'FaceAlpha', 0.2, 'EdgeColor', 'none');
patch([x(1) x(2) x(6) x(5)], [y(1) y(2) y(6) y(5)], [z(1) z(2) z(6) z(5)], 'b', 'FaceAlpha', 0.2, 'EdgeColor', 'none');
patch([x(2) x(3) x(7) x(6)], [y(2) y(3) y(7) y(6)], [z(2) z(3) z(7) z(6)], 'c', 'FaceAlpha', 0.2, 'EdgeColor', 'none');
patch([x(3) x(4) x(8) x(7)], [y(3) y(4) y(8) y(7)], [z(3) z(4) z(8) z(7)], 'm', 'FaceAlpha', 0.2, 'EdgeColor', 'none');
patch([x(4) x(1) x(5) x(8)], [y(4) y(1) y(5) y(8)], [z(4) z(1) z(5) z(8)], 'y', 'FaceAlpha', 0.2, 'EdgeColor', 'none');

% Plot the cubic edges
plot3(x(1:2), y(1:2), z(1:2), 'k', 'LineWidth', 2);
plot3(x(2:3), y(2:3), z(2:3), 'k', 'LineWidth', 2);
plot3(x(3:4), y(3:4), z(3:4), 'k', 'LineWidth', 2);
plot3(x([4 1]), y([4 1]), z([4 1]), 'k', 'LineWidth', 2);
plot3(x(5:6), y(5:6), z(5:6), 'k', 'LineWidth', 2);
plot3(x(6:7), y(6:7), z(6:7), 'k', 'LineWidth', 2);
plot3(x(7:8), y(7:8), z(7:8), 'k', 'LineWidth', 2);
plot3(x([8 5]), y([8 5]), z([8 5]), 'k', 'LineWidth', 2);

% Vertical edges
plot3(x([1 5]), y([1 5]), z([1 5]), 'k', 'LineWidth', 2);
plot3(x([2 6]), y([2 6]), z([2 6]), 'k', 'LineWidth', 2);
plot3(x([3 7]), y([3 7]), z([3 7]), 'k', 'LineWidth', 2);
plot3(x([4 8]), y([4 8]), z([4 8]), 'k', 'LineWidth', 2);

% Plot the cubic vertices as dots
scatter3(x, y, z, 'red', 'filled', 'SizeData', 180, 'MarkerEdgeColor', 'darkred', 'LineWidth', 1.5);

% Add C₃ axis of symmetry (3-fold rotation axis)
% C₃ axis: diagonal from (0,0,0) to (1,1,1)
axis_extension = 0.2;
axis_start_x = -axis_extension;
axis_start_y = -axis_extension;
axis_start_z = -axis_extension;
axis_end_x = 1 + axis_extension;
axis_end_y = 1 + axis_extension;
axis_end_z = 1 + axis_extension;

% Draw the C₃ axis as a thick line
plot3([axis_start_x axis_end_x], [axis_start_y axis_end_y], [axis_start_z axis_end_z], ...
    'm', 'LineWidth', 4, 'DisplayName', 'C₃ axis (3-fold rotation)');

% Add arrow markers to show axis direction
arrow_scale = 0.08;
quiver3(axis_start_x, axis_start_y, axis_start_z, arrow_scale, arrow_scale, arrow_scale, ...
    'm', 'LineWidth', 2, 'ShowArrowHead', 'on', 'MaxHeadSize', 0.15);
quiver3(axis_end_x, axis_end_y, axis_end_z, -arrow_scale, -arrow_scale, -arrow_scale, ...
    'm', 'LineWidth', 2, 'ShowArrowHead', 'on', 'MaxHeadSize', 0.15);

% Highlight the body corners (vertices) where the axis passes through
scatter3(0, 0, 0, 'm', 'filled', 'SizeData', 200, 'MarkerEdgeColor', 'darkmagenta', 'LineWidth', 2);
scatter3(1, 1, 1, 'm', 'filled', 'SizeData', 200, 'MarkerEdgeColor', 'darkmagenta', 'LineWidth', 2);

% Draw a triangle around the axis to indicate 3-fold rotation
% Create an equilateral triangle perpendicular to the main diagonal at the cube center
center_point = [0.5, 0.5, 0.5];
rotation_radius = 0.25;

% Create a plane perpendicular to the C₃ axis
% The C₃ axis direction is (1,1,1), normalized: (1/√3, 1/√3, 1/√3)
axis_direction = [1 1 1] / sqrt(3);

% Create perpendicular vectors
v1 = [1 -1 0] / sqrt(2);  % perpendicular vector 1
v2 = cross(axis_direction, v1);  % perpendicular vector 2

% Generate equilateral triangle vertices
angles = [0, 2*pi/3, 4*pi/3, 0];  % 3 vertices for equilateral triangle
triangle_points = zeros(4, 3);
for i = 1:4
    triangle_points(i, :) = center_point + ...
        rotation_radius * (cos(angles(i)) * v1 + sin(angles(i)) * v2);
end

plot3(triangle_points(:, 1), triangle_points(:, 2), triangle_points(:, 3), ...
    'm--', 'LineWidth', 1.5, 'Alpha', 0.7, 'DisplayName', '3-fold rotation');

% Set the view and axis labels
view(45, 35);
xlabel('X (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Y (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
zlabel('Z (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
title('C₃ (3-fold) Rotational Symmetry Axis', 'FontSize', 14, 'FontWeight', 'bold');

% Add text annotation
annotation('textbox', [0.15 0.80 0.35 0.15], 'String', ...
    {'C₃ Symmetry (3-fold rotation):', ...
     'Rotation angle: 120° (360°/3)', ...
     'Axis location: Through body corners', ...
     'Passing through: (0,0,0) to (1,1,1)', ...
     'Total C₃ axes in cube: 4', ...
     'Operations: E, C₃, C₃²'}, ...
    'FontSize', 9, 'EdgeColor', 'magenta', 'BackgroundColor', 'lightyellow', 'FaceAlpha', 0.8);

% Set the rotation behavior
rotate3d on;

% Set the rotation angle and speed
rotationAngle = 0.3;
rotationSpeed = 0.05;

% Display info message
disp('C₃ Rotational Symmetry Axis Visualization');
disp('=========================================');
disp('Magenta line: C₃ axis (3-fold rotation axis)');
disp('Magenta triangle: 3-fold rotation indicator');
disp('Magenta points: Body corners through which axis passes');
disp('');
disp('Symmetry operation: Rotation by 120° about this axis');
disp('                    maps the structure onto itself');
disp('');
disp('In a cube, there are 4 C₃ axes:');
disp('  - One through each pair of opposite body diagonals');
disp('  - These are the [111], [1-11], [1-1-1], [-111] directions');
disp('');
disp('Press Ctrl+C to stop the automatic rotation');
disp(' ');

% Perform the rotation loop
try
    while true
        rotate3d on;
        camorbit(rotationAngle, 0, 'camera');
        camorbit(0, rotationAngle, 'camera');
        camroll(rotationAngle * 0.3);
        pause(rotationSpeed);
    end
catch
    disp('Rotation stopped by user');
end
