%simple_cubic.m
% 3D Simple Cubic (SC) Lattice Visualization
% Displays a unit cell with atoms at corners
% Educational resource for solid-state chemistry
% 
% Author: SURYA-SOLVER
% Date: 2026
% 
% Description:
%   This script visualizes a simple cubic crystal lattice structure.
%   The SC structure has one atom at each corner of the cubic unit cell.
%   Coordination number: 6 (nearest neighbors)
%   Atoms per unit cell: 1

% Clear workspace and close existing figures
clear all;
close all;
clc;

% Generate 3D coordinates for a simple cubic
x = [0 1 1 0 0 1 1 0];
y = [0 0 1 1 0 0 1 1];
z = [0 0 0 0 1 1 1 1];

% Create a figure and set properties
figure('Name', '3D Simple Cubic (SC) Lattice', 'NumberTitle', 'off');
set(gcf, 'Position', [100, 100, 900, 800]);
axis equal;
hold on;
grid on;

% Plot the cubic faces with transparency
patch([x(1) x(2) x(3) x(4)], [y(1) y(2) y(3) y(4)], [z(1) z(2) z(3) z(4)], 'r', 'FaceAlpha', 0.3, 'EdgeColor', 'none');
patch([x(5) x(6) x(7) x(8)], [y(5) y(6) y(7) y(8)], [z(5) z(6) z(7) z(8)], 'g', 'FaceAlpha', 0.3, 'EdgeColor', 'none');
patch([x(1) x(2) x(6) x(5)], [y(1) y(2) y(6) y(5)], [z(1) z(2) z(6) z(5)], 'b', 'FaceAlpha', 0.3, 'EdgeColor', 'none');
patch([x(2) x(3) x(7) x(6)], [y(2) y(3) y(7) y(6)], [z(2) z(3) z(7) z(6)], 'c', 'FaceAlpha', 0.3, 'EdgeColor', 'none');
patch([x(3) x(4) x(8) x(7)], [y(3) y(4) y(8) y(7)], [z(3) z(4) z(8) z(7)], 'm', 'FaceAlpha', 0.3, 'EdgeColor', 'none');
patch([x(4) x(1) x(5) x(8)], [y(4) y(1) y(5) y(8)], [z(4) z(1) z(5) z(8)], 'y', 'FaceAlpha', 0.3, 'EdgeColor', 'none');

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

% Plot the cubic vertices as dots with increased size
scatter3(x, y, z, 'red', 'filled', 'SizeData', 200, 'MarkerEdgeColor', 'darkred', 'LineWidth', 1.5);

% Set the view and axis labels
view(3);
xlabel('X (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Y (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
zlabel('Z (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
title('Simple Cubic (SC) Lattice Structure', 'FontSize', 14, 'FontWeight', 'bold');

% Add text annotation
annotation('textbox', [0.15 0.85 0.3 0.1], 'String', ...
    {'SC Lattice Parameters:', 'Atoms per unit cell: 1', ...
     'Coordination number: 6', 'Packing fraction: ~52%'}, ...
    'FontSize', 10, 'EdgeColor', 'black', 'BackgroundColor', 'yellow', 'FaceAlpha', 0.7);

% Set the rotation behavior
rotate3d on;

% Set the rotation angle and speed
rotationAngle = 0.5;
rotationSpeed = 0.05;

% Display info message
disp('Simple Cubic (SC) Lattice Visualization');
disp('========================================');
disp('Press Ctrl+C to stop the automatic rotation');
disp('Use mouse to manually rotate after stopping');
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
