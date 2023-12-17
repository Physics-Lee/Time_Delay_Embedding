function plot_3D(time_series_reconstructed,eLag,eDim)

figure;
plot3(time_series_reconstructed(:,1), time_series_reconstructed(:,2), time_series_reconstructed(:,3));
xlabel('Dimension 1');
ylabel('Dimension 2');
zlabel('Dimension 3');
title('Time Delay Embedding of Lorenz System');
subtitle(sprintf("From theta, Estimated delay = %d, Estimated embedding dimension = %d",eLag,eDim));

end