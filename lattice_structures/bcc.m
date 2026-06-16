%bcc.m
% 3D Body-Centered Cubic (BCC) Lattice Visualization
% Displays a unit cell with corner atoms + central atom
% Educational resource for solid-state chemistry
%
% Author: SURYA-SOLVER
% Date: 2026
%
% Description:
%   This script visualizes a body-centered cubic crystal lattice structure.
%   The BCC structure has atoms at each corner plus one atom at the center.
%   Coordination number: 8 (nearest neighbors)
%   Atoms per unit cell: 2
%   Packing fraction: ~68%

% Clear workspace and close existing figures
clear all;
close all;
clc;

% Generate 3D coordinates for a body-centered cubic (BCC) lattice
x = [0 1 1 0 0 1 1 0 0.5];
y = [0 0 1 1 0 0 1 1 0.5];
z = [0 0 0 0 1 1 1 1 0.5];

% Create a figure and set properties
figure('Name', '3D Body-Centered Cubic (BCC) Lattice', 'NumberTitle', 'off');
set(gcf, 'Position', [100, 100, 900, 800]);
axis equal;
hold on;
grid on;

% Plot the cubic faces with transparency
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

% Plot bonding lines from center atom to corner atoms (body diagonal coordination)
for i = 1:8
    plot3([x(i) x(9)], [y(i) y(9)], [z(i) z(9)], 'b--', 'LineWidth', 1.5, 'Alpha', 0.6);
end

% Plot corner atoms (red)
scatter3(x(1:8), y(1:8), z(1:8), 'red', 'filled', 'SizeData', 200, 'MarkerEdgeColor', 'darkred', 'LineWidth', 1.5);

% Plot center atom (blue) with larger size to distinguish
scatter3(x(9), y(9), z(9), 'blue', 'filled', 'SizeData', 250, 'MarkerEdgeColor', 'darkblue', 'LineWidth', 2);

% Set the view and axis labels
view(3);
xlabel('X (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Y (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
zlabel('Z (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
title('Body-Centered Cubic (BCC) Lattice Structure', 'FontSize', 14, 'FontWeight', 'bold');

% Add text annotation
annotation('textbox', [0.15 0.85 0.3 0.1], 'String', ...
    {'BCC Lattice Parameters:', 'Atoms per unit cell: 2', ...
     'Coordination number: 8', 'Packing fraction: ~68%'}, ...
    'FontSize', 10, 'EdgeColor', 'black', 'BackgroundColor', 'lightblue', 'FaceAlpha', 0.7);

% Add legend
legend('Corner atoms (red)', 'Center atom (blue)', 'Location', 'NorthEast');

% Set the rotation behavior
rotate3d on;

% Set the rotation angle and speed
rotationAngle = 0.5;
rotationSpeed = 0.05;

% Display info message
disp('Body-Centered Cubic (BCC) Lattice Visualization');
disp('==================================================');
disp('Corner atoms (red): 8 at vertices');
disp('Center atom (blue): 1 at body center');
disp('Total atoms per unit cell: 2');
disp('Dashed blue lines show bonding coordination');
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
