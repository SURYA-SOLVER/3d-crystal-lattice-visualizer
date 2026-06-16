%c2_symmetry.m
% C₂ Rotational Symmetry Axis Visualization
% Displays a simple cubic frame with 2-fold rotation axis
% Educational resource for point group symmetry
%
% Author: SURYA-SOLVER
% Date: 2026
%
% Description:
%   This script visualizes a C₂ rotational symmetry axis (2-fold rotation).
%   A 180° rotation about this axis maps the structure onto itself.
%   In cubic systems, C₂ axes pass through opposite face centers.
%   Number of C₂ axes in a cube: 6 (one pair per set of opposite faces)
%
%   This visualization shows the C₂ axis passing through face centers
%   perpendicular to the XY plane at (0.5, 0.5, z-direction).

% Clear workspace and close existing figures
clear all;
close all;
clc;

% Generate 3D coordinates for a simple cubic
x = [0 1 1 0 0 1 1 0];
y = [0 0 1 1 0 0 1 1];
z = [0 0 0 0 1 1 1 1];

% Create a figure and set properties
figure('Name', '3D Simple Cubic with C₂ Symmetry Axis', 'NumberTitle', 'off');
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

% Add C₂ axis of symmetry (2-fold rotation axis)
% C₂ axis: passes through face centers at (0.5, 0.5, 0) and (0.5, 0.5, 1)
axis_length = 1.3;
axis_start = 0.5;
axis_z_start = -0.15;
axis_z_end = 1.15;

% Draw the C₂ axis as a thick line
plot3([axis_start axis_start], [axis_start axis_start], [axis_z_start axis_z_end], ...
    'b', 'LineWidth', 4, 'DisplayName', 'C₂ axis (2-fold rotation)');

% Add arrow markers to show axis direction
quiver3(axis_start, axis_start, axis_z_start, 0, 0, 0.1, 'b', 'LineWidth', 2, 'ShowArrowHead', 'on', 'MaxHeadSize', 0.15);
quiver3(axis_start, axis_start, axis_z_end, 0, 0, -0.1, 'b', 'LineWidth', 2, 'ShowArrowHead', 'on', 'MaxHeadSize', 0.15);

% Highlight the face centers where the axis passes through
scatter3(axis_start, axis_start, 0, 'b', 'filled', 'SizeData', 150, 'MarkerEdgeColor', 'darkblue', 'LineWidth', 2);
scatter3(axis_start, axis_start, 1, 'b', 'filled', 'SizeData', 150, 'MarkerEdgeColor', 'darkblue', 'LineWidth', 2);

% Draw a circle around the axis to indicate rotation
theta = linspace(0, 2*pi, 100);
radius = 0.35;
circle_z = 0.5;
circle_x = axis_start + radius * cos(theta);
circle_y = axis_start + radius * sin(theta);
circle_z_array = circle_z * ones(size(theta));
plot3(circle_x, circle_y, circle_z_array, 'b--', 'LineWidth', 1.5, 'Alpha', 0.7);

% Set the view and axis labels
view(45, 30);
xlabel('X (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Y (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
zlabel('Z (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
title('C₂ (2-fold) Rotational Symmetry Axis', 'FontSize', 14, 'FontWeight', 'bold');

% Add text annotation
annotation('textbox', [0.15 0.80 0.35 0.15], 'String', ...
    {'C₂ Symmetry (2-fold rotation):', ...
     'Rotation angle: 180° (360°/2)', ...
     'Axis location: Through face centers', ...
     'Passing through: (0.5, 0.5, z)', ...
     'Total C₂ axes in cube: 6', ...
     'Operations: E (identity), C₂'}, ...
    'FontSize', 9, 'EdgeColor', 'blue', 'BackgroundColor', 'lightcyan', 'FaceAlpha', 0.8);

% Set the rotation behavior
rotate3d on;

% Set the rotation angle and speed
rotationAngle = 0.3;
rotationSpeed = 0.05;

% Display info message
disp('C₂ Rotational Symmetry Axis Visualization');
disp('=========================================');
disp('Blue line: C₂ axis (2-fold rotation axis)');
disp('Blue circle: Rotation around the axis');
disp('Blue points: Face centers through which axis passes');
disp('');
disp('Symmetry operation: Rotation by 180° about this axis');
disp('                    maps the structure onto itself');
disp('');
disp('In a cube, there are 6 C₂ axes:');
disp('  - 3 through opposite face centers (perpendicular to faces)');
disp('  - 3 additional in equivalent positions');
disp('');
disp('Press Ctrl+C to stop the automatic rotation');
disp(' ');

% Perform the rotation loop
try
    while true
        rotate3d on;
        camorbit(rotationAngle, 0, 'camera');
        camorbit(0, rotationAngle, 'camera');
        pause(rotationSpeed);
    end
catch
    disp('Rotation stopped by user');
end
