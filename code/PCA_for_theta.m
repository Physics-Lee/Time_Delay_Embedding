function data_3d = PCA_for_theta(data)

% Step 1: Standardize the data
data_standardized = (data - mean(data)) ./ std(data);

% Step 2: Apply PCA
[coeff, score, latent] = pca(data_standardized);

% Step 3: Use the first three principal components
coeff_3d = coeff(:, 1:3);

% Step 4: Transform original data to the new 3D space
data_3d = data_standardized * coeff_3d;

% Variance explained by each principal component
variance_explained = latent / sum(latent) * 100;

% Cumulative variance explained
cumulative_variance_explained = cumsum(variance_explained);

% Display the results
disp('Variance Explained by Each Principal Component:');
disp(variance_explained);
disp('Cumulative Variance Explained:');
disp(cumulative_variance_explained);

%
figure;
plot(cumsum(latent)/sum(latent), 'o-');
xlabel('Number of Principal Components');
ylabel('Cumulative Variance Explained');
title('Scree Plot');

%
k = 3;
reconstructed_data = score(:,1:k) * coeff(:,1:k)' + mean(data);
reconstruction_error = norm(data - reconstructed_data, 'fro');
fprintf("reconstruction error: %.4f\n",reconstruction_error);

end