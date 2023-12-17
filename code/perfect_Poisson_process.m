clc; clear; close all;
my_add_path();

%% simulate
r_ideal = load_data_from_mat('..\data\perfect_Poisson_process\r_ideal.mat');

%% reconstruct
[time_series_reconstructed, eLag, eDim] = reconstruct(r_ideal);
data_3d = PCA_for_theta(time_series_reconstructed);
plot_3D(time_series_reconstructed(:,1:3),eLag,eDim);
plot_3D(data_3d,eLag,eDim);

%% simulate
r_real = load_data_from_mat('..\data\perfect_Poisson_process\r_real.mat');

%% reconstruct
[time_series_reconstructed, eLag, eDim] = reconstruct(r_real);
data_3d = PCA_for_theta(time_series_reconstructed);
plot_3D(time_series_reconstructed(:,1:3),eLag,eDim);
plot_3D(data_3d,eLag,eDim);

%% simulate
stim_real = load_data_from_mat('..\data\perfect_Poisson_process\stim_real.mat');

%% reconstruct
[time_series_reconstructed, eLag, eDim] = reconstruct(stim_real);
data_3d = PCA_for_theta(time_series_reconstructed);
plot_3D(time_series_reconstructed(:,1:3),eLag,eDim);
plot_3D(data_3d,eLag,eDim);