function [x_time_series, y_time_series] = generate_square_trajectory(side_length, step_size, num_loops)
% Calculate the number of points per side
points_per_side = side_length / step_size + 1;

% Generate points for each side of the square
top_side = [linspace(-side_length/2, side_length/2, points_per_side); ones(1, points_per_side) * side_length/2];
right_side = [ones(1, points_per_side) * side_length/2; linspace(side_length/2, -side_length/2, points_per_side)];
bottom_side = [linspace(side_length/2, -side_length/2, points_per_side); ones(1, points_per_side) * -side_length/2];
left_side = [ones(1, points_per_side) * -side_length/2; linspace(-side_length/2, side_length/2, points_per_side)];

% Combine the points to form one loop
one_loop = [top_side, right_side(:, 2:end), bottom_side(:, 2:end), left_side(:, 2:end)];

% Repeat the loop for the specified number of times
full_trajectory = repmat(one_loop, 1, num_loops);

% Split the trajectory into x and y time series
x_time_series = full_trajectory(1, :);
y_time_series = full_trajectory(2, :);
end