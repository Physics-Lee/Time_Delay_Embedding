clc; clear; close all;

%% simulate

% Define Lorenz system parameters
sigma = 10;
rho = 28;
beta = 8/3;

% Lorenz system ODEs
lorenzODE = @(t, y) [sigma * (y(2) - y(1));
    rho * y(1) - y(2) - y(1) * y(3);
    y(1) * y(2) - beta * y(3)];

% Initial conditions and time span
y0 = [1; 1; 1];
tspan = [0, 50];

% Solve ODEs
[t, Y] = ode45(lorenzODE, tspan, y0);

% plot
figure;
plot3(Y(:,1),Y(:,2),Y(:,3));
xlabel('Dimension 1');
ylabel('Dimension 2');
zlabel('Dimension 3');
title('Original Lorenz System');
% set_full_screen;
% saveas(gcf,'..\result\1.fig');

%% reconstruct
[time_series_reconstructed_1, eLag_1, eDim_1] = reconstruct(Y(:,1));
[time_series_reconstructed_2, eLag_2, eDim_2] = reconstruct(Y(:,2));
[time_series_reconstructed_3, eLag_3, eDim_3] = reconstruct(Y(:,3));

% plot
figure;
plot3(time_series_reconstructed_1(:,1), time_series_reconstructed_1(:,2), time_series_reconstructed_1(:,3));
xlabel('Dimension 1');
ylabel('Dimension 2');
zlabel('Dimension 3');
title('Time Delay Embedding of Lorenz System');
subtitle(sprintf("From time sery 1, Estimated delay = %d, Estimated embedding dimension = %d",eLag_1,eDim_1));
% set_full_screen;
% saveas(gcf,'..\result\2.fig');

figure;
plot3(time_series_reconstructed_2(:,1), time_series_reconstructed_2(:,2), time_series_reconstructed_2(:,3));
xlabel('Dimension 1');
ylabel('Dimension 2');
zlabel('Dimension 3');
title('Time Delay Embedding of Lorenz System');
subtitle(sprintf("From time sery 2, Estimated delay = %d, Estimated embedding dimension = %d",eLag_2,eDim_2));
% set_full_screen;
% saveas(gcf,'..\result\3.fig');

figure;
plot3(time_series_reconstructed_3(:,1), time_series_reconstructed_3(:,2), time_series_reconstructed_3(:,3));
xlabel('Dimension 1');
ylabel('Dimension 2');
zlabel('Dimension 3');
title('Time Delay Embedding of Lorenz System');
subtitle(sprintf("From time sery 3, Estimated delay = %d, Estimated embedding dimension = %d",eLag_3,eDim_3));
% set_full_screen;
% saveas(gcf,'..\result\4.fig');