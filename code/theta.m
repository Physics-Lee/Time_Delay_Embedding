clc; clear; close all;
my_add_path();

% load
time_series = load_data_from_mat('..\data\theta\theta.mat');

% reconstruct
[time_series_reconstructed, eLag, eDim] = reconstruct(time_series);

% plot
plot_3D(time_series_reconstructed(:,1:3),eLag,eDim);

% PCA
data_3d = PCA_for_theta(time_series_reconstructed);

% plot
plot_3D(data_3d,eLag,eDim);

%
figure;
corr_matrix = corr(time_series_reconstructed);
imagesc(corr_matrix);
colorbar;
title('Correlation Matrix');
disp('Pearson Corr:');
disp(corr_matrix);