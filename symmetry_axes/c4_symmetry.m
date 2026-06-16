%c4_symmetry.m
% C₄ Rotational Symmetry Axis Visualization
% Displays a simple cubic frame with 4-fold rotation axis
% Educational resource for point group symmetry
%
% Author: SURYA-SOLVER
% Date: 2026
%
% Description:
%   This script visualizes a C₄ rotational symmetry axis (4-fold rotation).
%   A 90° rotation about this axis maps the structure onto itself.
%   In cubic systems, C₄ axes pass through opposite face centers (perpendicular to faces).
%   Number of C₄ axes in a cube: 3 (parallel to each Cartesian axis: X, Y, Z)
%
%   This visualization shows the C₄ axis passing vertically through the center,
%   parallel to the Z-axis and passing through (0.5, 0.5, z).

% Clear workspace and close existing figures
clear all;
close all;
clc;

% Generate 3D coordinates for a simple cubic
x = [0 1 1 0 0 1 1 0];
y = [0 0 1 1 0 0 1 1];
z = [0 0 0 0 1 1 1 1];

% Create a figure and set properties
figure('Name', '3D Simple Cubic with C₄ Symmetry Axis', 'NumberTitle', 'off');
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

% Add C₄ axis of symmetry (4-fold rotation axis)
% C₄ axis: vertical through cube center at (0.5, 0.5, z)
axis_length = 1.3;
axis_start_z = -0.15;
axis_end_z = 1.15;
axis_x = 0.5;
axis_y = 0.5;

% Draw the C₄ axis as a thick line
plot3([axis_x axis_x], [axis_y axis_y], [axis_start_z axis_end_z], ...
    'color', [0.8 0 0.8], 'LineWidth', 5, 'DisplayName', 'C₄ axis (4-fold rotation)');

% Add arrow markers to show axis direction
quiver3(axis_x, axis_y, axis_start_z, 0, 0, 0.1, 'color', [0.8 0 0.8], 'LineWidth', 2.5, ...
    'ShowArrowHead', 'on', 'MaxHeadSize', 0.15);
quiver3(axis_x, axis_y, axis_end_z, 0, 0, -0.1, 'color', [0.8 0 0.8], 'LineWidth', 2.5, ...
    'ShowArrowHead', 'on', 'MaxHeadSize', 0.15);

% Highlight the face centers where the axis passes through
scatter3(axis_x, axis_y, 0, 'color', [0.8 0 0.8], 'filled', 'SizeData', 150, ...
    'MarkerEdgeColor', [0.6 0 0.6], 'LineWidth', 2);
scatter3(axis_x, axis_y, 1, 'color', [0.8 0 0.8], 'filled', 'SizeData', 150, ...
    'MarkerEdgeColor', [0.6 0 0.6], 'LineWidth', 2);

% Draw a square around the axis to indicate 4-fold rotation
center_x = axis_x;
center_y = axis_y;
rotation_z = 0.5;
square_radius = 0.3;

% Create square vertices at 4 perpendicular angles (90° apart)
angles = [0, pi/2, pi, 3*pi/2, 0];  % 4 vertices for square
square_x = center_x + square_radius * cos(angles);
square_y = center_y + square_radius * sin(angles);
square_z = rotation_z * ones(size(angles));

plot3(square_x, square_y, square_z, 'color', [0.8 0 0.8], 'LineStyle', '--', ...
    'LineWidth', 1.5, 'Alpha', 0.7, 'DisplayName', '4-fold rotation');

% Add small circles at rotation angles
circle_angles = linspace(0, 2*pi, 100);
circle_x = center_x + square_radius * cos(circle_angles);
circle_y = center_y + square_radius * sin(circle_angles);
circle_z = rotation_z * ones(size(circle_angles));

plot3(circle_x, circle_y, circle_z, 'color', [0.8 0 0.8], 'LineStyle', ':', ...
    'LineWidth', 1, 'Alpha', 0.5);

% Set the view and axis labels
view(0, 0);  % View along Z-axis to see the 4-fold symmetry clearly
xlabel('X (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Y (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
zlabel('Z (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
title('C₄ (4-fold) Rotational Symmetry Axis', 'FontSize', 14, 'FontWeight', 'bold');

% Add text annotation
annotation('textbox', [0.15 0.80 0.35 0.15], 'String', ...
    {'C₄ Symmetry (4-fold rotation):', ...
     'Rotation angle: 90° (360°/4)', ...
     'Axis location: Through face centers', ...
     'Passing through: (0.5, 0.5, z)', ...
     'Total C₄ axes in cube: 3', ...
     'Operations: E, C₄, C₂ (= C₄²), C₄³'}, ...
    'FontSize', 9, 'EdgeColor', [0.8 0 0.8], 'BackgroundColor', [1 0.95 1], 'FaceAlpha', 0.8);

% Add legend
legend('Location', 'NorthEast');

% Set the rotation behavior
rotate3d on;

% Set the rotation angle and speed
rotationAngle = 0.3;
rotationSpeed = 0.05;

% Display info message
disp('C₄ Rotational Symmetry Axis Visualization');
disp('=========================================');
disp('Magenta line: C₄ axis (4-fold rotation axis)');
disp('Magenta square & circle: 4-fold rotation indicator');
disp('Magenta points: Face centers through which axis passes');
disp('');
disp('Symmetry operation: Rotation by 90° about this axis');
disp('                    maps the structure onto itself');
disp('');
disp('In a cube, there are 3 C₄ axes:');
disp('  - One parallel to X-axis through face centers (1/2, 1/2, z)');
disp('  - One parallel to Y-axis through face centers (1/2, y, 1/2)');
disp('  - One parallel to Z-axis through face centers (x, 1/2, 1/2)');
disp('');
disp('Note: C₄² = C₂ (2-fold rotation by 180°)');
disp('');
disp('Current view: Along Z-axis to show 4-fold symmetry');
disp('Press Ctrl+C to stop the automatic rotation');
disp(' ');

% Perform the rotation loop
try
    while true
        rotate3d on;
        camorbit(rotationAngle * 0.5, 0, 'camera');
        camorbit(0, rotationAngle * 0.5, 'camera');
        pause(rotationSpeed);
    end
catch
    disp('Rotation stopped by user');
end
