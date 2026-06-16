%fcc.m
% 3D Face-Centered Cubic (FCC) Lattice Visualization
% Displays a unit cell with corner atoms + face-centered atoms
% Educational resource for solid-state chemistry
%
% Author: SURYA-SOLVER
% Date: 2026
%
% Description:
%   This script visualizes a face-centered cubic crystal lattice structure.
%   The FCC structure has atoms at each corner plus atoms at the center of each face.
%   Coordination number: 12 (nearest neighbors)
%   Atoms per unit cell: 4
%   Packing fraction: ~74% (highest for cubic systems)

% Clear workspace and close existing figures
clear all;
close all;
clc;

% Generate 3D coordinates for a simple cubic base
x_corners = [0 1 1 0 0 1 1 0];
y_corners = [0 0 1 1 0 0 1 1];
z_corners = [0 0 0 0 1 1 1 1];

% Calculate face-centered atom positions
% 6 face centers: (0.5, 0.5, 0), (0.5, 0.5, 1), (0.5, 0, 0.5), (0.5, 1, 0.5), (0, 0.5, 0.5), (1, 0.5, 0.5)
x_faces = [0.5 0.5 0.5 0.5 0 1];
y_faces = [0.5 0.5 0 1 0.5 0.5];
z_faces = [0 1 0.5 0.5 0.5 0.5];

% Combine corner and face coordinates
x = [x_corners x_faces];
y = [y_corners y_faces];
z = [z_corners z_faces];

% Create a figure and set properties
figure('Name', '3D Face-Centered Cubic (FCC) Lattice', 'NumberTitle', 'off');
set(gcf, 'Position', [100, 100, 900, 800]);
axis equal;
hold on;
grid on;

% Plot the cubic faces with transparency
patch([x(1) x(2) x(3) x(4)], [y(1) y(2) y(3) y(4)], [z(1) z(2) z(3) z(4)], 'r', 'FaceAlpha', 0.15, 'EdgeColor', 'none');
patch([x(5) x(6) x(7) x(8)], [y(5) y(6) y(7) y(8)], [z(5) z(6) z(7) z(8)], 'g', 'FaceAlpha', 0.15, 'EdgeColor', 'none');
patch([x(1) x(2) x(6) x(5)], [y(1) y(2) y(6) y(5)], [z(1) z(2) z(6) z(5)], 'b', 'FaceAlpha', 0.15, 'EdgeColor', 'none');
patch([x(2) x(3) x(7) x(6)], [y(2) y(3) y(7) y(6)], [z(2) z(3) z(7) z(6)], 'c', 'FaceAlpha', 0.15, 'EdgeColor', 'none');
patch([x(3) x(4) x(8) x(7)], [y(3) y(4) y(8) y(7)], [z(3) z(4) z(8) z(7)], 'm', 'FaceAlpha', 0.15, 'EdgeColor', 'none');
patch([x(4) x(1) x(5) x(8)], [y(4) y(1) y(5) y(8)], [z(4) z(1) z(5) z(8)], 'y', 'FaceAlpha', 0.15, 'EdgeColor', 'none');

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

% Plot coordination bonds from corners to nearest face-centered atoms
% Corner (0,0,0) bonds to face centers at (0.5,0.5,0), (0.5,0,0.5), (0,0.5,0.5)
for corner_idx = 1:8
    % Find 3 nearest face-centered atoms for each corner (simplified visualization)
    if corner_idx == 1  % (0,0,0)
        face_indices = [9 11 13];  % indices of nearest face centers
    elseif corner_idx == 2  % (1,0,0)
        face_indices = [9 12 14];
    elseif corner_idx == 3  % (1,1,0)
        face_indices = [10 12 13];
    elseif corner_idx == 4  % (0,1,0)
        face_indices = [10 11 14];
    elseif corner_idx == 5  % (0,0,1)
        face_indices = [11 12 13];
    elseif corner_idx == 6  % (1,0,1)
        face_indices = [12 14 15];
    elseif corner_idx == 7  % (1,1,1)
        face_indices = [10 12 13];
    else  % (0,1,1)
        face_indices = [10 11 15];
    end
    
    for f_idx = face_indices
        if f_idx <= length(x)
            plot3([x(corner_idx) x(f_idx)], [y(corner_idx) y(f_idx)], [z(corner_idx) z(f_idx)], ...
                'g--', 'LineWidth', 1.2, 'Alpha', 0.5);
        end
    end
end

% Plot corner atoms (red)
scatter3(x(1:8), y(1:8), z(1:8), 'red', 'filled', 'SizeData', 180, 'MarkerEdgeColor', 'darkred', 'LineWidth', 1.5);

% Plot face-centered atoms (blue)
scatter3(x(9:14), y(9:14), z(9:14), 'blue', 'filled', 'SizeData', 180, 'MarkerEdgeColor', 'darkblue', 'LineWidth', 1.5);

% Set the view and axis labels
view(3);
xlabel('X (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Y (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
zlabel('Z (\mu)', 'FontSize', 12, 'FontWeight', 'bold');
title('Face-Centered Cubic (FCC) Lattice Structure', 'FontSize', 14, 'FontWeight', 'bold');

% Add text annotation
annotation('textbox', [0.15 0.85 0.3 0.1], 'String', ...
    {'FCC Lattice Parameters:', 'Atoms per unit cell: 4', ...
     'Coordination number: 12', 'Packing fraction: ~74%'}, ...
    'FontSize', 10, 'EdgeColor', 'black', 'BackgroundColor', 'lightgreen', 'FaceAlpha', 0.7);

% Add legend
legend('Corner atoms (red)', 'Face-centered atoms (blue)', 'Location', 'NorthEast');

% Set the rotation behavior
rotate3d on;

% Set the rotation angle and speed
rotationAngle = 0.5;
rotationSpeed = 0.05;

% Display info message
disp('Face-Centered Cubic (FCC) Lattice Visualization');
disp('================================================');
disp('Corner atoms (red): 8 at vertices');
disp('Face-centered atoms (blue): 6 at face centers (1/2 each)');
disp('Total atoms per unit cell: 4');
disp('Green dashed lines show nearest-neighbor bonding');
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
