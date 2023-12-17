clc; clear; close all;

% Load Data
time_series = load_data_from_mat('..\data\HH\HH_model.mat');
variables = {'V', 'n', 'm', 'h'};
data = mat2cell(time_series, size(time_series, 1), ones(1, 4));

% Plot Original System
figure;
plot3(data{1},data{2},data{3});
xlabel('V (mV）');
ylabel('n (no dimension）');
zlabel('m (no dimension）');
title('Original HH System');

% Time Delay Reconstruction and Plotting
reconstructed_data = cell(1, length(variables));
eLag = zeros(1, length(variables));
eDim = zeros(1, length(variables));

for i = 1:length(variables)
    [reconstructed_data{i}, eLag(i), eDim(i)] = reconstruct(data{i});
end

% Plot Reconstructed Data
for i = 1:length(variables)
    figure;
    plot3(reconstructed_data{i}(:,1), reconstructed_data{i}(:,2), reconstructed_data{i}(:,3));
    xlabel('Dimension 1');
    ylabel('Dimension 2');
    zlabel('Dimension 3');
    title(sprintf('Time Delay Embedding of HH System - %s', variables{i}));
    subtitle(sprintf("From %s, Estimated delay = %d, Estimated embedding dimension = %d", variables{i}, eLag(i), eDim(i)));
end