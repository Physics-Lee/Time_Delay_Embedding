clc; clear; close all;

%% simulate
n_circle = 100;
step_size = 0.1;
theta = 0:step_size:n_circle*2*pi;
x = cos(theta);
y = sin(theta);

figure;
plot(x,y);
axis equal;

%% reconstruct
[time_series_reconstructed, eLag, eDim] = reconstruct(x);
plot_3D(time_series_reconstructed(:,1:3),eLag,eDim);

[time_series_reconstructed, eLag, eDim] = reconstruct(y);
plot_3D(time_series_reconstructed(:,1:3),eLag,eDim);