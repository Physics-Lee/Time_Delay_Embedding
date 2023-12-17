clc; clear; close all;
my_add_path();

%% simulate

% Generate trajectory
side_length = 2;
step_size = 0.1;
num_loops = 100;
[x, y] = generate_square_trajectory(side_length, step_size, num_loops);

% plot
figure;
plot(x,y);
axis equal;

%% reconstruct
[time_series_reconstructed, eLag, eDim] = reconstruct(x);
plot_2D(time_series_reconstructed(:,1:2),eLag,eDim);

[time_series_reconstructed, eLag, eDim] = reconstruct(y);
plot_2D(time_series_reconstructed(:,1:2),eLag,eDim);